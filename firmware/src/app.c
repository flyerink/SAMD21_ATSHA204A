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

ATCA_STATUS sha204_write_data (ATCADevice device)
{
    ATCA_STATUS status = ATCA_GEN_FAIL;
    const uint8_t key0[] = {
        0xd9, 0x01, 0x01, 0x01, 0x00, 0x66, 0x6c, 0x6f, 0x77, 0x76, 0x69, 0x61, 0x63, 0x68, 0x61, 0x6e,
        0x67, 0x72, 0x75, 0x69, 0x6b, 0x65, 0x6a, 0x69, 0x77, 0x77, 0x77, 0x77, 0xab, 0xbc, 0xcd, 0xde,
    };

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
                status = calib_random (atca_device, random);
                if (status == ATCA_SUCCESS) {
                    atcab_printbin_label ("\nRandom Number:  \n", random, 32);
                    appData.state = APP_STATE_DETECT_BUTTON;
                } else {
                    printf ("\nRandom Number fail\n");
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
