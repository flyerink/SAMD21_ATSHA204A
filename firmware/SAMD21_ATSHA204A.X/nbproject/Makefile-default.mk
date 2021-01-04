#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_command.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_command.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d ${OBJECTDIR}/_ext/95446945/calib_aes.o.d ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d ${OBJECTDIR}/_ext/95446945/calib_basic.o.d ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d ${OBJECTDIR}/_ext/95446945/calib_command.o.d ${OBJECTDIR}/_ext/95446945/calib_counter.o.d ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d ${OBJECTDIR}/_ext/95446945/calib_execution.o.d ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d ${OBJECTDIR}/_ext/95446945/calib_info.o.d ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d ${OBJECTDIR}/_ext/95446945/calib_lock.o.d ${OBJECTDIR}/_ext/95446945/calib_mac.o.d ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d ${OBJECTDIR}/_ext/95446945/calib_random.o.d ${OBJECTDIR}/_ext/95446945/calib_read.o.d ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d ${OBJECTDIR}/_ext/95446945/calib_sha.o.d ${OBJECTDIR}/_ext/95446945/calib_sign.o.d ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d ${OBJECTDIR}/_ext/95446945/calib_verify.o.d ${OBJECTDIR}/_ext/95446945/calib_write.o.d ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d ${OBJECTDIR}/_ext/141463632/atca_host.o.d ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d ${OBJECTDIR}/_ext/701127929/atca_basic.o.d ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d ${OBJECTDIR}/_ext/701127929/atca_command.o.d ${OBJECTDIR}/_ext/701127929/atca_debug.o.d ${OBJECTDIR}/_ext/701127929/atca_device.o.d ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d ${OBJECTDIR}/_ext/701127929/atca_iface.o.d ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_command.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_command.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/main.c ../src/app.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMD21J18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/7407ec978e035e3addf88d389781b8f634235136.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/fe761b3f33b0b9935f21d0a375a369e1707df1a9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/7e3ec3e1f14ae0d11e8b41b415d437b0688b84b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/3d84fe2f7a80baf60d7f2407dca0a59a21525a7f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/af7fced26ce8af5ee363355ad70c5f8c048605d1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/bd8f20a1ee11f076348dbb749a8d8f7d3d3b0cff.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/25dc0975067122c0b072e6ac2ceedb4408aa2c8e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/18b619d535cad242d5dde5bc23f6d5abf56ba41e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/9d9c92ecc3d62b6a76f98ce91fdb2b0e7b590327.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/a60d3021cdf09e9c057ada4ea18309085e47cceb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/3d2d364df07471289f9ac7cab47f1e886952bcf4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/c902d1c58adb10f2376f3662628418fb008580c1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/70e8eccef60af27717caef320d5fe5bf537a082e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/4e824ef7570460fefccea7740b8e637a576b834a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/152e87809517f9211b305c4146fb75ef41a0dee6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/a190fce6f67e759e901087e9c9dc4d6427d69d14.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/3e413810462bb198652baf704c867c1a25fdc1b3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/a5f521eb56abc2b3ac316c43a7a3fbb78191da4e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/616f23aac25c2fee8a63b0a9ef65e071392b7e79.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/a50e6635c0e48068c3f9e8bd22ec9188f491d9a3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/c0952c22b752bc90eb858cea27771660a011d2c1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/ac485781c4c1754405004d307d2a81355bc3c8c5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/4596736ed1c56c600cf949ea4d6629e65e693ddc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/7b37b8682284827e9d091036fee2646e2ef178a9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/69b228374a79d463e6765a656491d1ebcabd69.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/b9826154676a7a28cc93bcec4451db14a1b4c09e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/349639fa0ffdd565fbb2db3a08fcc074ddfb5385.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/37cf9f724978d679d37f721146b081ee38d1dada.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/1604262b134a06beac75082a0a1bd0a28219de20.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/60722b4a40e311f6444726e8c9108e4bd75c7eb6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/1292ac3efde39f993a1545aae13e94d2aaace3df.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/9bbd598020c90bbe782fa5cbdfef5c32e13efdee.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/5dc02007bf3cbed88fa8a23b7136649d56e57290.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/44e3fa404af6c7d0b9c5c0a7fa745a2af573f97a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/e640f492e1dee2086588cf38476c62d11dac2486.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/a6bd5ee18fb2a9d278dbb881112dfb5f8cfd9d5f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/3cac97145c3cd596f1fcb2e9c5ae7a14a106f99a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/e630ce3eb0d1fca607f4bae570bf0e229d6f72ac.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/288d8702b5a2d1dff6d76b3b96a62e9c69736cdd.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/d675693b501fb0b935d24c491c57b2d352446add.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/a887ed24cabb270d39cba184aaaa18f7b1894dcc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/9c3c70fc380165dd573fe6ab23fbde645fd40df9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/e8a484a7fcfadd6725b8fcfe9af449edcd81f983.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/3a75803b20f93ea8b02263e7ca131d34c2a7ff24.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/ed5ec8d2a9e765249e2fe78c15d7f3e012ab93fc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/a9337891fcd785e05cd8ec65677944e9ae140b0a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/131d910861b6470d4b1d9606c9c6ed8859f342ee.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/dcde02605dd8e3a4e19f7100436c3da47e977460.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/5531d627d0eb818480af69220b9ea8f2d8469b47.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/3fdb59179f2cc7f31f32a07df99e02033c2aec70.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/8aaf94ad76441d0de31c34fd219a58a450986c08.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/979e23bac22bdf4d8e01cc9688ad68f05e604d4a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/595798dcff3bf13ccc2e9c24c1d77238afa125f1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/3d3420364496fc3c9411d0489775812b6a9b2b42.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/4924a20a64611fb5caaa9e5f4825ebb12d613c1b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/b53200f36c1cd6a47090f94bd7c80527f1a633e3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/9fb48f815b35213542ccfce38ac5258f8b4f7cb7.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/2947ee0324ec2078293d7a8377daa0a96b64bcdf.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/a542d3ef271c9c03e82c7aae3beb6d3594622594.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/e62fff901d05986d33905ca576b049ee02a2f71e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/7f8f56d381396b45ce953838b7954a8d12ae5797.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/f7af740aab31903eda89357530196ea443a31981.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/40a602836196e4b3bcf48b887754ea6c15b20f3d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/24954e89d9bcb5e83e295b01b0a53a3271732078.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/9ab854b93d6482451543b1ed8d0f06f25c3bc262.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/80de256ce64df680a930a6331ed9f22ff6f5f285.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/a6d6560302796911ed355458106d94409c382272.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/a6735d8d0049bb1ee51e4d74162882d13a6807d9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/ea2bd8545b4423a8ce702050a74451d7d25b45ed.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/198cf1e9dddd5b7f907ef3f2e0d1a951ccfaf50f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/40d85f59d91131751b136ba44abb392a7eb1afc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/58a4f5fa7854e153bf9b3a9ca668cf5f8055adab.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/ff473f1c1d9b62088c5ae7ade5cfe1ad72ecdf5a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/2e4232d043382517ca755ca6d8402289f1e22ce3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/47a2e507692a3a6b02d6209cecbfc8c23d1badfe.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/20bdfa9b8cee1698c5cc74c2a1d1b23a4723886c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/36e29b17a4310c29959d4b94d60ef8e41ff6274b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/c8e86da5a4f8e810ba3008ecb5ca8f26c508dea3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/a9181adb883ee5b1610268e794375c5612b679b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/faca066737c7713689c954045234b99cbcc5bb4b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/b069505aa757564d36c8449265b046dcbdf9fe5f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/3535bbba060203a439efba1b3b61e6c43fe2ce9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/dc3effd1f72b7b9309aeb3e85cf2079393f129bc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/36f06cba10ed43faf5fd5a0c3f22bb7e20e04af0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/afd09382828ec12abe349271f0d335f6b0d1c47e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/b903d30ddf1544f54408ab05deebc8eedab0532.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/a065edda65ef7afe93d832eb5052a0b9a1fda19.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/d871fd57154df48db2543072451093493aafc5f9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/3ce738d73b49d67660781db97e47c2fff5d6715e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/6dcca900da6484f87983460a875e23dd735d976d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/ff20f3df354e802f0d6cb7ac86d90e0cd6d6ffa.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/83f2a5ffd04aa697f3aea79d72544261b232fb2e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/22ce14d90141d85bdd05a2501a8d39184767e004.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/40c8fc44aeb1c9bde0f9e5c66b26227fea25c729.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/f01c79870e0e90b382190b9550ce13b1d7f8d5c1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/8e7fbf84582d931f4184a899251c855f62f23fa.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/7ca408025a2bd8c7b27cec81017a26749bc917f4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/1ab3a737ca770ea81dc949694082ba7c513cf65d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/acbfadee0282bf45f29ddfc6622460eff866d5c4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/2a3d9a10cf07e9fef9595eb033d6c895221fcdb8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/271b1649a364c84e0bb930231c2df01643182075.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/5638e75f970e8f83692afe4f0ee5261f41b2422f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/72bf03d6aefd7173a36d92c8af640c1d3b0eb733.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/fd99cceb48c086782d8cbbbc3a05e997fd714d5e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/24e827661772b6cb115a7e6130ec317eb5361d6a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/68032c4de67d9928a10830fb815632735f2d0b34.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/b814d8240d3cd94f703ac509d7866313a7a61cdc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/ab8fb36927a97d86f2d8c2e41fd55433c5fb2b30.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/fd42e15adbb0c771ca38d0b244b78bdbd93dee28.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/60ca441a17b139357f5a23dc5cea9e53057cbf26.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/53bd66874806ec1106364e0772ef286088d114d0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/e003650fcadfb5f3496c70d033120fbdb14f6de0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/ae02378f75e3b0a249a7acd00b7707b8c134fe99.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/d242ead98b17857e0ae1d30bb1fca83663238f97.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/ef06a9e374dbf2ac2873da066c6b644fa751b1ce.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/946fde77be491909c866d1d97a3457fd03822f27.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/a8c35d3fdef3753c38eeab844690bb4c94f2103a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/ae6b61f15c7f2ec79284b676abdd2d9f8eb11ae4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/8d576a17e0e697a1002ee9b5cdc715da0b59d893.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/279d5026affce5dcdaf4c0bfe400ea0c358bd6ac.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/9deec1d2082e83f5104d9089629bfefad8752335.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/7de17384f376f97a1e54f14ef2e9e79ea1b3e477.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/38752bd6fdc5fe628c0bdb9d235d92a9b5ddfa1d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/5dd76ed9b0493a8dd52fa8adbeb96d8b613b5e1c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/f3b99d6688745f28a6c3135821138bd0d05b8302.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/362bb762500c86373073f2f05f525a498616e2c3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/e4eb482c8fdd5a66e2aea8a5afb22e63a6e18c17.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/6ed1748f75d1991f3c4cce83a60910dbb5d4683b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/8887e839d33e2817ee955db8d13c50bef5af5dac.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/27ad5508cc14d495f52108241dd3339e35c61f1b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/28b7a6b0ada7c8740b19dfc3e1a59844ed05b15a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/de74a25cda25a16cc86d7a0d0de75af6e28e723.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/7c7181431f1e9b076d56a5755fe75b903da93971.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/21fa8755aa91404851b957eda4dcbd100b3f19fd.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/c13efa10573f558cc56301a67f498df1600ecfec.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/9785d9097f2466f3120923533333dc8370bd7459.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/e4880bfb77773af1c3b3ae734c0eeaf7a9bea248.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/100fdfc194524492c24f414fd9fc6aff56bf3745.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/7d3df7b7d87f2d55240cdebc1b35e7740f57eb88.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/2b7c4906b36d3643e3f3fefb7fd0b2e6114f1423.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/39b066d2b487bcb0290e9cfe723389bfca490899.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/c45702ef1c512c0ce56119db849dca94a504c725.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/4b9a67339bafb57291fc5da3a387b5e1b5c900c6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/f44d35fd7539aa6a1dad79d3530ad26de518cdd2.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/369574e8f810ba1879edcdb6ff1b59076bbd4ab5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/e518b6253161c92f1dee0d1a929cc13d14ac5345.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/25877f587cdfc0eadb3d375a67c69d983fa16f0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/9a351ab444404c5f16c2084c56f0ac458a6f3c25.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/93b524f531884e835d5d958c9d3596e928815f08.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/f8ef076b7e8523acfad45ecb4883d834475040b8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/a793d03321b1a9f36b5b19216a7d21567da93eec.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/96ce2c0586deffaded03843c63ccd191c5c01fb0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/5d5dd58ede0bb609697b2eec9b6753e0f43f5d1b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/4364a6689cfed7bca46bf1161cdcf29ae2705b90.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/bac8e075ef6585b96a59ce6e9935c2643f1ee6c6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/20ac51f309a604360a5686c852495060ea12974d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/a10a1b748cf8a86a23397ea60133767a031f3520.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/8f71ab986fb4832e57297d71dc1f4091c3051ae3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/1dbba675b44bd379f1f2bc65398b03705720a3d3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/54b333b37cde9f1de51da5b190e31877f185df87.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/6b1c48767e11c1475cf493f0d29b9933dfbb80fe.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/12bbd4d772ab71e1314e6a660742dacd2f727843.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/5624d56806d68bc9410e59c62a966fb34bbe343e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/ae8cd0fd6441577a3fcda10c2b109eb00efb2f9f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/29fd4574a2fb6b4fff0137cb27fa76f34eee16d8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/d00000f6f876b98239d0c33b566a1f25b06d8124.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
