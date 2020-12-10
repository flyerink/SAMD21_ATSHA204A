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
#define CHECK_STATUS(s)                                         \
    if (s != ATCA_SUCCESS)                                      \
    {                                                           \
        printf("Error: Line %d in %s\r\n", __LINE__, __FILE__); \
        return;                                                 \
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
SYS_TIME_HANDLE timer;

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
    timer = SYS_TIME_HANDLE_INVALID;
    SYS_TIME_DelayMS (1000, &timer);
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

    if (SYS_TIME_DelayIsComplete (timer))
    {
        LED_Toggle();
        SYS_TIME_DelayMS (1000, &timer);
    }

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            printf ("\nInitial CryptoAuthLib:\n");

            // Inititalize CryptoAuthLib
            status = atcab_init_ext (&atca_device, &atsha204a_0_init_data);
            CHECK_STATUS (status);

            if (atcab_get_device_type_ext (atca_device) == ATSHA204A)
            {
                uint8_t revision[9];
                status = calib_info (atca_device, revision);
                CHECK_STATUS (status);
                atcab_printbin_label ("Device Revision:  ", revision, 4);

                status = calib_read_serial_number (atca_device, revision);
                CHECK_STATUS (status);
                atcab_printbin_label ("Device Serial Number:  ", revision, 9);

                appData.state = APP_STATE_DETECT_BUTTON;
            }
            break;
        }

        case APP_STATE_DETECT_BUTTON:
        {
            if (SWITCH_Get() == SWITCH_STATE_PRESSED)
            {
                appData.state = APP_STATE_CHECK_LOCK_STATUS;
                while (SWITCH_Get() == SWITCH_STATE_PRESSED);
            }
            break;
        }

        case APP_STATE_CHECK_LOCK_STATUS:
        {
            bool is_locked;
            status = calib_is_locked (atca_device, LOCK_ZONE_CONFIG, &is_locked);
            CHECK_STATUS (status);
            if (is_locked)
            {
                printf ("\r\n    Config Zone is locked!");

                status = calib_is_locked (atca_device, LOCK_ZONE_DATA, &is_locked);
                CHECK_STATUS (status);
                if (is_locked)
                {
                    printf ("\r\n    Data Zone is locked!");
                    appData.state = APP_STATE_NONCE;
                }
                else
                {
                    printf ("\r\n    Data Zone is un-locked!");
                    appData.state = APP_STATE_WRITE_DATA_ZONE;
                }
            }
            else
            {
                printf ("\r\n    Config Zone is un-locked!");
                appData.state = APP_STATE_WRITE_CONFIG_ZONE;
            }
            break;
        }

        case APP_STATE_WRITE_CONFIG_ZONE:
        {
            appData.state = APP_STATE_WRITE_DATA_ZONE;
            break;
        }

        case APP_STATE_WRITE_DATA_ZONE:
        {
            appData.state = APP_STATE_NONCE;
            break;
        }

        case APP_STATE_NONCE:
        {
            appData.state = APP_STATE_INIT;
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
