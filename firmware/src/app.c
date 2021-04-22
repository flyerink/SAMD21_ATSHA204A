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
#include "md5.h"

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

//generated C HEX from javascript config tool
const uint8_t sha204_config_lab[] = {
    0x01, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0xEE, 0x00, 0x69, 0x00,
    0xC8, 0x00, 0xAA, 0x00, 0x80, 0x80, 0x80, 0x80,  0x8F, 0x80, 0x8F, 0x80, 0x80, 0x80, 0x80, 0x80,
    0x80, 0x80, 0x80, 0x80, 0xC0, 0xC0, 0xC0, 0xC0,  0xC0, 0xC0, 0xC0, 0xC0, 0x00, 0x00, 0x00, 0x00,
    0x8F, 0x80, 0x8F, 0x80, 0xFF, 0x00, 0xFF, 0x00,  0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
    0xFF, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x55, 0x55,
};

// 写入SHA204A的配置区数据，写入成功后需要把配置区锁定
ATCA_STATUS sha204_write_config (void)
{
    ATCA_STATUS status = ATCA_SUCCESS;
    uint8_t data[88];

    printf ("Write Config Zone: ");
    status = atcab_write_config_zone (sha204_config_lab);
    CHECK_STATUS (status);
    printf ("Completed\r\n");

    status = atcab_read_config_zone ((uint8_t *)&data);
    CHECK_STATUS (status);
    atcab_printbin_label ("Device Config Read:  \n", data, 88);

    // 对比读出的配置信息是否一致，如果一致就把配置区锁住
    if (memcmp (&data[16], &sha204_config_lab[16], 72) == 0) {
        printf ("Lock Config Zone: ");
        status = atcab_lock_config_zone ();
        CHECK_STATUS (status);

        printf ("Locked\r\n");
        printf ("\r\nWrite Config Zone Completed\r\n");
        return ATCA_SUCCESS;
    } else {
        printf ("Readout Config Data Not Match\r\n");
    }

    return ATCA_EXECUTION_ERROR;
}

// 用户的SecureKey, 和写入到SHA204A芯片中的密码一致。
// 基于安全考虑，实际使用时需要对这个Key做一些处理，比如打散或用异或转化，使用时再组合恢复
const uint8_t key0[32] = {
    0xe8, 0x96, 0x52, 0x98, 0x3b, 0x56, 0x3c, 0x6e, 0x6f, 0x53, 0x65, 0x13, 0x2b, 0xb8, 0xce, 0x60,
    0x1c, 0x9e, 0xdb, 0xea, 0x36, 0x0d, 0x35, 0xe4, 0x61, 0x8d, 0x5c, 0xfd, 0xb7, 0xa7, 0xf1, 0x9f,
};

const uint8_t key1[32] = {
    0x22, 0xfd, 0x58, 0x57, 0xc8, 0xe2, 0xa2, 0xaf, 0x7e, 0xe6, 0xd9, 0x11, 0x2f, 0x41, 0x10, 0x86,
    0x29, 0x6a, 0x44, 0x74, 0x9a, 0xe1, 0x1a, 0x0a, 0x6c, 0x3d, 0xdb, 0xea, 0x65, 0x77, 0xad, 0x17,
};

const uint8_t key2[32] = {
    0x33, 0xf4, 0x34, 0x1a, 0x4a, 0x92, 0xc9, 0x82, 0xed, 0x2f, 0x2b, 0x7d, 0x33, 0xc1, 0x82, 0x65,
    0x4f, 0x1c, 0x02, 0x8c, 0x75, 0xbe, 0xa7, 0xb0, 0xb5, 0xdd, 0x2f, 0xa0, 0x1b, 0xb0, 0x56, 0x2e,
};

const uint8_t key3[32] = {
    0x44, 0xc4, 0x33, 0x92, 0x4f, 0xd6, 0x29, 0xac, 0xff, 0x57, 0x9c, 0xf4, 0x49, 0xfa, 0xcb, 0x11,
    0x46, 0xf2, 0x1f, 0x45, 0x2f, 0xbb, 0xe9, 0xd9, 0x3d, 0x29, 0x5f, 0xcd, 0xbf, 0xb0, 0xd3, 0xbf,
};

const uint8_t key4[32] = {
    0x55, 0xd5, 0xdc, 0xe6, 0x21, 0x97, 0xca, 0xd6, 0x7c, 0xc6, 0xb6, 0x9e, 0xb9, 0xd6, 0xf3, 0x33,
    0xd5, 0x56, 0x22, 0xc6, 0x12, 0xc1, 0xe9, 0x2e, 0xcc, 0x87, 0xf3, 0x98, 0x99, 0x5d, 0x2a, 0x71,
};

const uint8_t key5[32] = {
    0x66, 0x8f, 0xb7, 0x3f, 0x06, 0xbb, 0xb5, 0xa7, 0x2c, 0xe5, 0x00, 0xa2, 0xca, 0x3c, 0x03, 0x73,
    0xc6, 0xaf, 0x93, 0x38, 0x64, 0xb6, 0xae, 0x57, 0x29, 0x61, 0x74, 0x2a, 0xf1, 0xa1, 0x65, 0xed,
};

const uint8_t key6[32] = {
    0x77, 0x5b, 0x4d, 0xc5, 0x47, 0x2c, 0xf1, 0xc8, 0xd6, 0x1a, 0x02, 0x29, 0xc5, 0x13, 0x02, 0x78,
    0xdf, 0x64, 0xfb, 0xc2, 0x6e, 0x84, 0x40, 0xfb, 0x1d, 0x1e, 0x6a, 0xab, 0x0e, 0x63, 0x8c, 0xdb,
};

const uint8_t key7[32] = {
    0x88, 0x9f, 0x25, 0x9f, 0x2b, 0xd0, 0x86, 0xe0, 0x44, 0xce, 0x45, 0x5a, 0xf2, 0x45, 0xf8, 0xeb,
    0xe9, 0xdf, 0xe0, 0x8d, 0x78, 0x11, 0xa8, 0xc2, 0x70, 0x26, 0x5b, 0x42, 0x39, 0x8b, 0xa5, 0xe1,
};

const uint8_t key8[32] = {
    0x99, 0xc4, 0xc8, 0xf6, 0xfc, 0x91, 0x7d, 0x98, 0x3c, 0x6a, 0x50, 0x5e, 0x99, 0xb9, 0xed, 0x73,
    0xab, 0x87, 0xcd, 0xc1, 0xca, 0x47, 0xed, 0x56, 0xea, 0xe1, 0xd1, 0x17, 0xba, 0x00, 0xba, 0xaa,
};

const uint8_t key9[32] = {
    0xaa, 0x33, 0xbc, 0xf1, 0x00, 0x56, 0xdd, 0x98, 0x87, 0x54, 0xab, 0x5c, 0x02, 0x57, 0xea, 0xb9,
    0xef, 0xc4, 0x47, 0x85, 0xab, 0x0c, 0x17, 0x5c, 0x52, 0xb7, 0x53, 0x53, 0xd9, 0xac, 0xd2, 0xdc,
};

const uint8_t key10[32] = {
    0xbb, 0x53, 0x8b, 0xb9, 0x81, 0x06, 0xae, 0x87, 0xed, 0xf6, 0xdf, 0x7d, 0x75, 0x07, 0xf6, 0x65,
    0x7b, 0xfe, 0xd8, 0x01, 0x65, 0x4a, 0x2f, 0x7f, 0x72, 0x10, 0x6a, 0x1e, 0xde, 0x76, 0xf6, 0x20,
};

const uint8_t key11[32] = {
    0xcc, 0x8b, 0xbc, 0x75, 0xc5, 0x8b, 0xf9, 0x0d, 0x35, 0xb7, 0x73, 0xe9, 0x39, 0xb1, 0x1a, 0x1e,
    0x18, 0x9d, 0x07, 0x5e, 0x3e, 0xe8, 0x3c, 0x65, 0x10, 0x54, 0x9c, 0x9f, 0x10, 0x46, 0x2d, 0x1d,
};

const uint8_t key12[32] = {
    0xdd, 0x45, 0xd8, 0x4e, 0x15, 0xcc, 0xc5, 0xd3, 0x29, 0xfe, 0xef, 0xc7, 0x97, 0x3d, 0x5d, 0x8c,
    0x8e, 0x09, 0x5c, 0xc4, 0x7f, 0xce, 0x46, 0xb6, 0xf5, 0xeb, 0x74, 0xff, 0xb8, 0x04, 0x7f, 0x7c,
};

const uint8_t key13[32] = {
    0xee, 0xe8, 0x66, 0x6c, 0xb8, 0xb1, 0x1a, 0x81, 0x8f, 0x35, 0xdc, 0x3f, 0xd7, 0x93, 0xc7, 0x58,
    0xa5, 0xab, 0x60, 0x5a, 0x6f, 0xe4, 0x56, 0x1b, 0xe9, 0x3d, 0x77, 0x65, 0x1e, 0x98, 0xf4, 0xe4,
};

const uint8_t key14[32] = {
    0xff, 0xdc, 0xee, 0xf6, 0xf8, 0x22, 0x00, 0xbf, 0x30, 0xc3, 0xc1, 0x7b, 0x41, 0x9c, 0x60, 0x2a,
    0x25, 0xe9, 0x9a, 0x49, 0x58, 0x12, 0x72, 0x3b, 0xb4, 0xb2, 0x2f, 0xfa, 0x8a, 0xeb, 0x95, 0xfe,
};

const uint8_t key15[32] = {
    0x00, 0x88, 0xf9, 0x15, 0x1b, 0x07, 0x80, 0x33, 0xd4, 0x10, 0x26, 0xa0, 0x1c, 0x3e, 0x31, 0xa9,
    0xd5, 0x2c, 0x93, 0xb8, 0x80, 0x40, 0xa5, 0xc0, 0x1d, 0xb3, 0x23, 0xe6, 0x44, 0xe3, 0x69, 0x72,
};

// OTP的数据，前8个字节有效
const uint8_t otp_data[64] = {
    0x56, 0x41, 0x2d, 0x45, 0x53, 0x43, 0x53, 0x2d, 0x48, 0x48, 0x31, 0x31, 0x32, 0x31, 0x2d, 0x42,
    0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const uint8_t *keys[16] = {
    key0, key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15,
};

// 写入数据到SHA204A数据区，比如用户的密码
// 写入数据后，需要把数据区锁定才能使用验证的功能
ATCA_STATUS sha204_write_data (void)
{
    uint8_t slot;

    ATCA_STATUS status = ATCA_GEN_FAIL;

    printf ("\r\nWrite Slot Data: ");
    for (slot = 0; slot < 16; slot ++) {
        status = atcab_write_bytes_zone (ATCA_ZONE_DATA, slot, 0, keys[slot], 32);
        CHECK_STATUS (status);
    }
    printf ("Complete\r\n");

    printf ("Write OTP Zone: ");
    status = atcab_write_bytes_zone (ATCA_ZONE_OTP, 0, 0, otp_data, 32);
    CHECK_STATUS (status);
    status = atcab_write_bytes_zone (ATCA_ZONE_OTP, 0, 32, &otp_data[32], 32);
    CHECK_STATUS (status);
    printf ("Completed\r\n");

    printf ("Locking Data & OTP Zone: ");
    status = atcab_lock_data_zone ();
    CHECK_STATUS (status);
    printf ("Locked\r\n");

    printf ("\r\nWrite Data & OTP Zone Completed\r\n");
    return ATCA_SUCCESS;
}

// 用户的自定义随机种子，用于通过Nonce生成随机数
const uint8_t nonce_in[20] = {
    0x01, 0x23, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22,
    0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22
};

// 软件计算SHA256值时需要附加的参数
uint8_t mac_bytes[24] = {
    0x08, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEE,
    0x00, 0x00, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00,
};

// 验证芯片的MAC值和软件SHA256计算出的结果是否一致
ATCA_STATUS sha204_checkmac (uint8_t slot)
{
    ATCA_STATUS status = ATCA_GEN_FAIL;
    uint8_t digest[32];
    uint8_t Tempkey[32];
    uint8_t sha2_input[88];
    uint8_t mac_sw[32];
    uint8_t challenge[32];

    mac_bytes[2] = slot;

    status = atcab_nonce_base (0x01, 0x00, nonce_in, challenge);
    if (status != ATCA_SUCCESS) {
        printf ("Nonce Fail\n");
        return ATCA_FUNC_FAIL;
    }
    //atcab_printbin_label ("\nChallenge:  \n", challenge, 32);

    // 获取器件的MAC值，使用Slot0的Key
    status = atcab_mac (0x01, slot, NULL, digest);
    if (status != ATCA_SUCCESS) {
        printf ("Slot %d GetMac Fail\n", slot);
        return ATCA_FUNC_FAIL;
    }
    //atcab_printbin_label ("\nDigest:  \n", digest, 32);

    // 使用SHA256算法计算TempKey中的数据
    memcpy (sha2_input, challenge, 32);
    memcpy (sha2_input + 32, nonce_in, 20);
    sha2_input[52] = 0x16;
    sha2_input[53] = 0x01;
    sha2_input[54] = 0x00;
    status = atcac_sw_sha2_256 (sha2_input, 55, Tempkey);
    if (status != ATCA_SUCCESS) {
        printf ("Get SW TempKey Fail\n");
        return ATCA_FUNC_FAIL;
    }
    // atcab_printbin_label ("\nTempKey:  \n", Tempkey, 32);

    // 使用软件SHA256算法计算MAC值
    memcpy (sha2_input, keys[slot], 32);
    memcpy (sha2_input + 32, Tempkey, 32);
    memcpy (sha2_input + 64, mac_bytes, 24);
    status = atcac_sw_sha2_256 (sha2_input, 88, mac_sw);
    if (status != ATCA_SUCCESS) {
        printf ("Get SW Mac Fail\n");
        return ATCA_FUNC_FAIL;
    }
    // atcab_printbin_label ("\nSW Digest:  \n", mac_sw, 32);

    // 比较硬件和软件的结果是否一致，如果一致则证明外部的SHA204A是真正授权的
    if (memcmp (mac_sw, digest, 32) == 0) {
        printf ("Slot %d CheckMac PASS\n", slot);
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
        //BSP_LED_BLUE_Toggle();
        SYS_TIME_DelayMS (1000, &timer_led);
    }

    if (SYS_TIME_DelayIsComplete (timer_tick)) {
        /* Check the application's current state. */
        switch ( appData.state ) {
            /* Application's initial state. */
            case APP_STATE_INIT: {
                printf ("\nInitial CryptoAuthLib:\n");

                // Inititalize CryptoAuthLib
                status = atcab_init (&atsha204a_0_init_data);
                if (status != ATCA_SUCCESS) {
                    printf ("\tFail\n");
                    BSP_LED_BLUE_Off();
                    BSP_LED_RED_On();
                    break;
                }
                BSP_LED_BLUE_On();
                appData.state = APP_STATE_DETECT_BUTTON;
                break;
            }

            case APP_STATE_DETECT_BUTTON: {
                if (BSP_SWITCH_Get() == BSP_SWITCH_STATE_PRESSED) {
                    appData.state = APP_STATE_DETECT_DEVICE;
                    BSP_LED_BLUE_Off();
                    BSP_LED_RED_Off();
                    BSP_STATUS_OK_Clear();
                    BSP_STATUS_FAIL_Clear();
                    while (BSP_SWITCH_Get() == BSP_SWITCH_STATE_PRESSED);
                }
                break;
            }

            case APP_STATE_DETECT_DEVICE:
                if (atcab_get_device_type () == ATSHA204A) {
                    uint8_t revision[9];

                    status = atcab_read_serial_number (revision);
                    if (status != ATCA_SUCCESS) {
                        BSP_LED_BLUE_Off();
                        BSP_LED_RED_On();
                        printf ("Device Serial Number: Fail\n");
                        break;
                    }
                    atcab_printbin_label ("Device Serial Number:  ", revision, 9);
                    appData.state = APP_STATE_CHECK_LOCK_STATUS;
                }
                break;

            case APP_STATE_CHECK_LOCK_STATUS: {
                bool is_locked;
                status = atcab_is_locked (LOCK_ZONE_CONFIG, &is_locked);
                if (status != ATCA_SUCCESS) {
                    BSP_LED_BLUE_Off();
                    BSP_LED_RED_On();
                    printf ("Device lock status: Fail\n");
                    break;
                }
                if (is_locked) {
                    printf ("Config Zone is locked!\r\n");
                    status = atcab_is_locked (LOCK_ZONE_DATA, &is_locked);
                    if (status != ATCA_SUCCESS) {
                        BSP_LED_BLUE_Off();
                        BSP_LED_RED_On();
                        printf ("Device lock status: Fail\n");
                        break;
                    }

                    if (is_locked) {
                        printf ("Data Zone is locked!\n\n");
                        appData.state = APP_STATE_NONCE;
                    } else {
                        printf ("Data Zone is un-locked!\r\n");
                        appData.state = APP_STATE_DETECT_BUTTON;
                    }
                } else {
                    printf ("Config Zone is un-locked!\r\n");
                    appData.state = APP_STATE_DETECT_BUTTON;
                }
                break;
            }

            case APP_STATE_WRITE_CONFIG_ZONE: {
                if (sha204_write_config () == ATCA_SUCCESS) {
                    appData.state = APP_STATE_WRITE_DATA_ZONE;
                }
                break;
            }

            case APP_STATE_WRITE_DATA_ZONE: {
                if (sha204_write_data () == ATCA_SUCCESS) {
                    appData.state = APP_STATE_NONCE;
                }
                break;
            }

            case APP_STATE_NONCE: {
                uint8_t otp_read[64];

                printf ("Read OTP Zone: ");
                status = atcab_read_bytes_zone (ATCA_ZONE_OTP, 0, 0, otp_read, 32);
                status += atcab_read_bytes_zone (ATCA_ZONE_OTP, 0, 32, &otp_read[32], 32);
                if (status == ATCA_SUCCESS) {
                    printf ("Completed\r\n");
                } else {
                    BSP_LED_BLUE_Off();
                    BSP_LED_RED_On();
                    BSP_STATUS_OK_Clear();
                    BSP_STATUS_FAIL_Set();
                    appData.state = APP_STATE_DETECT_BUTTON;
                    break;
                }

                printf ("OTP Data: %s\n\n", otp_read);

                status = sha204_checkmac (0);
                if (status == ATCA_SUCCESS) {
                    BSP_LED_BLUE_On();
                    BSP_LED_RED_Off();
                    BSP_STATUS_OK_Set();
                    BSP_STATUS_FAIL_Clear();
                    printf ("CheckMac Success\n\n");
                } else {
                    BSP_LED_BLUE_Off();
                    BSP_LED_RED_On();
                    BSP_STATUS_OK_Clear();
                    BSP_STATUS_FAIL_Set();
                    printf ("Test Fail\n\n");
                }
                appData.state = APP_STATE_DETECT_BUTTON;
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
