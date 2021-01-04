/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "cryptoauthlib.h"
#include "atca_crypto_sw_sha2.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
// Macro for checking CryptoAuthLib API return
#define CHECK_STATUS(s)                                             \
    if (s != ATCA_SUCCESS)                                          \
    {                                                               \
        printf("Error: Line %d in %s\r\n", __LINE__, __FILE__);     \
        return s;                                                   \
    }

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;
ATCADevice atca_device;
SYS_TIME_HANDLE timer_led, timer_tick;

extern ATCAIfaceCfg atsha204a_0_init_data;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/

// 写入SHA204A的配置区数据，写入成功后需要把配置区锁定
ATCA_STATUS sha204_write_config (ATCADevice device, uint8_t addr)
{
    ATCA_STATUS status = ATCA_SUCCESS;
    uint8_t data[88];

    //generated C HEX from javascript config tool
    const uint8_t sha204_config_lab[] = {
        0x01, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0xEE, 0x00, 0x69, 0x00,
        addr, 0x00, 0x55, 0x00, 0x80, 0x80, 0x90, 0x80,  0x8F, 0x8F, 0x8F, 0x42, 0x8F, 0x0F, 0xC2, 0x8F,
        0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F,  0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F,
        0x0F, 0x0F, 0x9F, 0x8F, 0xFF, 0xFF, 0xFF, 0xFF,  0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
        0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
        0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x55, 0x55
    };

    status = calib_read_config_zone (device, (uint8_t *)&data);
    CHECK_STATUS (status);
    atcab_printbin_label ("Device Config Read:  \n", data, 88);

    status = calib_write_config_zone (device, sha204_config_lab);
    CHECK_STATUS (status);

    status = calib_lock_config_zone (device);
    CHECK_STATUS (status);

    printf ("Write Complete\r\n");
    return ATCA_SUCCESS;
}

// 用户的SecureKey, 和写入到SHA204A芯片中的密码一致。
// 基于安全考虑，实际使用时需要对这个Key做一些处理，比如打散或用异或转化，使用时再组合恢复
const uint8_t key0[32] = {
    0xd9, 0x01, 0x01, 0x01, 0x00, 0x66, 0x6c, 0x6f, 0x77, 0x76, 0x69, 0x61, 0x63, 0x68, 0x61, 0x6e,
    0x67, 0x72, 0x75, 0x69, 0x6b, 0x65, 0x6a, 0x69, 0x77, 0x77, 0x77, 0x77, 0xab, 0xbc, 0xcd, 0xde,
};

// 用户的自定义随机种子，用于通过Nonce生成随机数
const uint8_t nonce_in[20] = {
    0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22,
    0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22
};

// 软件计算SHA256值时需要附加的参数
const uint8_t mac_bytes[24] = {
    0x08, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEE,
    0x00, 0x00, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00,
};

// 写入数据到SHA204A数据区，比如用户的密码
// 写入数据后，需要把数据区锁定才能使用验证的功能
ATCA_STATUS sha204_write_data (ATCADevice device)
{
    ATCA_STATUS status = ATCA_GEN_FAIL;

    printf ("--Write Data Zone--\r\n");

    status = calib_write_bytes_zone (device, ATCA_ZONE_DATA, 0, 0, key0, 32);
    CHECK_STATUS (status);

    printf ("Write Complete\r\n");

    printf ("Locking Data Zone\r\n");
    status = calib_lock_data_zone (device);
    CHECK_STATUS (status);

    printf ("Complete\r\n");
    return ATCA_SUCCESS;
}

// 验证芯片的MAC值和软件SHA256计算出的结果是否一致
ATCA_STATUS sha204_checkmac (uint8_t *challenge)
{
    ATCA_STATUS status = ATCA_GEN_FAIL;
    uint8_t digest[32];
    uint8_t Tempkey[32];
    uint8_t sha2_input[88];
    uint8_t mac_sw[32];

    // 获取器件的MAC值，使用Slot0的Key
    status = calib_mac (atca_device, 0x01, 0x00, NULL, digest);
    if (status == ATCA_SUCCESS)
        atcab_printbin_label ("\nDigest:  \n", digest, 32);
    else {
        printf ("GetMac Fail\n");
        return ATCA_FUNC_FAIL;
    }

    // 使用SHA256算法计算TempKey中的数据
    memcpy (sha2_input, challenge, 32);
    memcpy (sha2_input + 32, nonce_in, 20);
    sha2_input[52] = 0x16;
    sha2_input[53] = 0x01;
    sha2_input[54] = 0x00;
    status = atcac_sw_sha2_256 (sha2_input, 55, Tempkey);
    if (status == ATCA_SUCCESS)
        atcab_printbin_label ("\nTempKey:  \n", Tempkey, 32);

    // 使用软件SHA256算法计算MAC值
    memcpy (sha2_input, key0, 32);
    memcpy (sha2_input + 32, Tempkey, 32);
    memcpy (sha2_input + 64, mac_bytes, 24);
    status = atcac_sw_sha2_256 (sha2_input, 88, mac_sw);
    if (status == ATCA_SUCCESS)
        atcab_printbin_label ("\nSW Digest:  \n", mac_sw, 32);
    else {
        printf ("Get SW Mac Fail\n");
        return ATCA_FUNC_FAIL;
    }

    // 比较硬件和软件的结果是否一致，如果一致则证明外部的SHA204A是真正授权的
    if (memcmp (mac_sw, digest, 32) == 0) {
        printf ("CheckMac PASS\n");
        return ATCA_SUCCESS;
    }

    return ATCA_FUNC_FAIL;
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
    timer_led = SYS_TIME_HANDLE_INVALID;
    SYS_TIME_DelayMS (1000, &timer_led);

    timer_tick = SYS_TIME_HANDLE_INVALID;
    SYS_TIME_DelayMS (1, &timer_tick);
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    ATCA_STATUS status;

    if (SYS_TIME_DelayIsComplete (timer_led)) {
        LED_Toggle();
        SYS_TIME_DelayMS (1000, &timer_led);
    }

    if (SYS_TIME_DelayIsComplete (timer_tick)) {
        /* Check the application's current state. */
        switch ( appData.state ) {
            /* Application's initial state. */
            case APP_STATE_INIT: {
                printf ("\nInitial CryptoAuthLib:\n");

                // Inititalize CryptoAuthLib
                status = atcab_init_ext (&atca_device, &atsha204a_0_init_data);
                if (status != ATCA_SUCCESS) {
                    printf ("\tFail\n");
                    break;
                }

                if (atcab_get_device_type_ext (atca_device) == ATSHA204A) {
                    uint8_t revision[9];

                    status = calib_read_serial_number (atca_device, revision);
                    if (status != ATCA_SUCCESS) {
                        printf ("Device Serial Number: Fail\n");
                        break;
                    }
                    atcab_printbin_label ("Device Serial Number:  ", revision, 9);
                    appData.state = APP_STATE_DETECT_BUTTON;
                }
                break;
            }

            case APP_STATE_DETECT_BUTTON: {
                if (SWITCH_Get() == SWITCH_STATE_PRESSED) {
                    appData.state = APP_STATE_CHECK_LOCK_STATUS;
                    while (SWITCH_Get() == SWITCH_STATE_PRESSED);
                }
                break;
            }

            case APP_STATE_CHECK_LOCK_STATUS: {
                bool is_locked;
                status = calib_is_locked (atca_device, LOCK_ZONE_CONFIG, &is_locked);
                if (status != ATCA_SUCCESS) {
                    printf ("Device lock status: Fail\n");
                    break;
                }
                if (is_locked) {
                    printf ("Config Zone is locked!\r\n");
                    status = calib_is_locked (atca_device, LOCK_ZONE_DATA, &is_locked);
                    if (status != ATCA_SUCCESS) {
                        printf ("Device lock status: Fail\n");
                        break;
                    }

                    if (is_locked) {
                        printf ("Data Zone is locked!\r\n");
                        appData.state = APP_STATE_NONCE;
                    } else {
                        printf ("Data Zone is un-locked!\r\n");
                        appData.state = APP_STATE_WRITE_DATA_ZONE;
                    }
                } else {
                    printf ("Config Zone is un-locked!\r\n");
                    appData.state = APP_STATE_WRITE_CONFIG_ZONE;
                }
                break;
            }

            case APP_STATE_WRITE_CONFIG_ZONE: {
                printf ("Write Config Zone\n");
                sha204_write_config (atca_device, 0xC8);
                appData.state = APP_STATE_WRITE_DATA_ZONE;
                break;
            }

            case APP_STATE_WRITE_DATA_ZONE: {
                sha204_write_data (atca_device);
                appData.state = APP_STATE_NONCE;
                break;
            }

            case APP_STATE_NONCE: {
                uint8_t random[32];
                status = calib_nonce_base (atca_device, 0x01, 0x00, nonce_in, random);
                if (status == ATCA_SUCCESS) {
                    atcab_printbin_label ("\nRandom Number:  \n", random, 32);
                    status = sha204_checkmac (random);
                    if (status == ATCA_SUCCESS)
                        printf ("\nCheckMac Success\n");
                    else
                        printf ("\nCheckMac Fail\n");
                    appData.state = APP_STATE_DETECT_BUTTON;
                } else {
                    printf ("\nRandom Number Fail\n");
                }
                break;
            }

            /* The default state should never be executed. */
            default: {
                /* TODO: Handle error in application's state machine. */
                break;
            }
        }
        SYS_TIME_DelayMS (1, &timer_tick);
    }
}


/*******************************************************************************
 End of File
 */
