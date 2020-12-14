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
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/2ca74ecd496c4982dc0ec81a0d5c112d42199f6e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/ca88abeed33e69b83888039964a9b57058492a91.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/34d521efcd48e5eb3c0e29c23e53af493af8420f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/3bf29b5c7989b80ad476491b31e295c4dbe5a4c0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/d8c31a465dc94fd263c56df5360953eecfd315bc.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/f2090fcd3d6341b3ec278346c4938f9f4edcdecd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/e5fa123ce15268209b5795ac3fecff84d1a92a8e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/8372172ba7a17637dc130665206bfa39e6b1af7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/551ca14eaedab481e4778db3051b30dcbebc65f6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/d832bfbfdd8154558b306a7e818664c2f2160fc6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/d9d5517eb30db922413f3a2106c2650419158c3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/961ba0d53f80ff6c970560a3de6fc26c5765698a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/d2acdeaf1188a2a17ec92040197a5d43ea4e25ae.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/e2246d16c91181debdb33fc9fe6c06766ba2d7d4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/ef0124e54c22870fa97df7366b4fb311490db1f7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/77c45fab9fc6f78187c0bed0b020e8f55818fbb5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/ca04edaad2f5ada6641f0ad691da940710960fa2.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/49f867ebacb434dee669dd41e7e0422fde705814.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/e8de17bd759da35b1ae726276a1ead733d2f2746.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/bc05eaa72d2da1827c2f27da4d7a76ba2588bc7a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/59b14e1b37f8cff5b3bedc4d6f1a84e9ff8566a4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/22f8c64dc69a130e55bfadaeaf2335c18712a41a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/c504491d9f9b9763f4681805b26f28d14b0d367b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/f3831090351a181c32cf612c3d5f37f1a97d0977.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/7ec8bb4e3428ccbd4939fdd2fa9a01db37368482.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/35c8090d67acb92cef0d2a762a80b8e823463ca9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/68d51211a20d323adb45bb829df57d31bcefcbd1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/8f14f6c44d758fbd4f725fc64633a5cb821f8bcd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/6dc6bdaf81522b9ccabe0d99d8fd8704ce27abe5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/601f1dd2aa31351ad6e05fe3f07a33afa0d011c9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/f9c887cc72f5d9b833b46a5ad305360fe186d89e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/a58fd5767b6900725fa6f3cad4367f38d193eae8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/aeedcd6f8fd81db0b28ea376488ed436ded8b90c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/d882931dd7a4f91c9a441667c489d96303cd3133.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/1545113a9fbb571a7d603d253c33b9bb6a60aa63.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/91e596f1d6d2820a983859c6f7ff9ddb91efea3c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/553ef4cfcef77c40f0344fe331d5d5eab7bebe57.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/bec16ebb704d9eae19adf784cdd795f0dc07f6fd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/38e64015a3c1bbe0922236ff3d07dc63b7da5c1c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/e30651c03af166c61f2e3aef8cc10b3641e8d9b8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/87ec3e8d249c2666e063059bf81f5dd261172c3f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/9c6e97af86939dd738ad4e49e941193ac70764e9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/18eaa852fe87e61a3b8660abef2d77477479b0c0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/2bf6f8a9811d581813cfb665091d3e733b871804.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/35533d4fa68ca92558191d9af116bad9bc16ae08.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/d1dc5737dc4259533864b92238d195dde2f25dc7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/1ae98920bf997b94cf5bdb3ac5634f65a1a0f713.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/25050c8e722259628b2d9f7f6b8f643a5e2dc5a5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/e0a8af3ac94e9691cf3bf6349a9bf88b50e647c1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/a60498c823b29dbe784be8f26a5fcb1b8cadd51d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/e7738f8314343ca1d7e7a80f1e5e8c4ce38ec035.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/ff33aa012d5c96a80b34993c940409a725b65fca.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/edcc3e950163a25db578f040a0dd166086f3813a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/7738984b073ea9bd7cd993ee0ea9d5c2ccdd5ccd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/6653d38cdb9a4cb2a86e79531f384f9d9304fe57.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/f2a08090100661fdefcd2aa46998d14c64ed4dd7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/352c24cb00e36bd6cde920acc397beccf996d792.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/d1e06b7f29c05ebea503ec801834702ca7e397bb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/46909fdd938a017adec909275f919757ed94f0f8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/d56477e696259dd12f6125c70846e7a5b40fbfea.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/785f9f6d0368b6ca9c9b3badd1d315983b72dbfd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/2d2da079838f569a4a0ffe1c4a54e7977d074e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/a45288e4c17f1cf8fb3db32629d8c366df36b628.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/5afc02b4aa5e719343f075919798a000a65cd425.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/dc496a920a87114a8cb5371884cda63552353039.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/9497d8f1422214c5bc94b681a570b1c793e26923.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/ca855d5738e672ca5d5371f4f3f576c5d6843dca.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/8f2f02ebd1f0a3db2382b2fea48c3f393c8fc05a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/235e72797259a4a1d6e2c16c9b74f71eb151844b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/5a81e7758bac5d4469b5a6c5a76a62888ce7c376.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/4d493db6796d383f04eed810a3151fb9a5819e43.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/7905c0851a43cbeb95e9c9226fbd68fe6af82774.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/c4447d082a9e56a66f24bdbfb6096356576c7609.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/f4edbb0e567cffaa2dbc94d561c2f7658c9c2882.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/9da1a0fdf5ec8b671ccab929dc279f7756647634.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/6229029ec35cd0b10d8078babd56ea5b10888abd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/d0fe5ad737ffd367c692dbd31d904fa8d14e7b19.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/6b94df073e48702f3df0a9a961574c1c3d9e7b73.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/7bd6a9f1b0684d4146cd8984fca97f8ae601f6e6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/d195d0d49c6045e91a5a019e66cd011c5869c5f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/cc9518828337ed75e5d61df1f585fa450c33635d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/4857a2e3bd7c30bd504112b8722bb3371dabc80f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/29e5159f210cf1f17f0045366e0d1d567d139a12.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/5faa4b45d1e0a355e04aae01246d96029a4a248d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/80c7fdae1f2b933e83e483b8617ee131cc2be82c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/46518fd8b1365940e68a2c4300d3c19189efeab4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/af5fa6f7ded41fba36895ee9e9387ed93c324a11.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/b4ade84d64f0cf60bc979f2ea92a1b6f844568da.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/2d282c735f0fa469e586522a97291346993d819d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/eb443c65534150716f18f849768dfcb4b1814905.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/90ddec1603718841b1c31f454c0ab26dce967606.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/faaab3ca29c8e6bbb9fece55c0269d8f01b8f29c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/204a1713ddc8bd23c8d21c29aeeb160ef4479eca.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/1f2b641b66fb2e28589634979a5704b06bafd4e3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/502714226cefc43fb36b162863ec396c7c0dc79c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/4b3428d2b324144ac53f6600f47677a4efd30828.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/b2893bd972cb796343db28d3823a707722279d58.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/281c3d992c4d89dd045b3b607e67b325b6aca5f5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/a042ee772b81e11ee9305c556370a3d13b7b8cb3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/af27254e0bd7d52b07982a5a3214918894929a7c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/62b011e1f88fe36f878d1012336c7fbb0eb65e23.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/7ea3b9976dd69b4bf4bc826a62225bd4b9e1f5b6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/52b82bce9b2e82dc5a694e12d05befffdfef07ee.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/cdea06e7cdfc2ffb0896e5f6ed98a80bb37f8544.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/736a449c14651507b3463624543a86f3ffee9c43.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/1856e061584bb1a934c2919f4afe291e9145fe78.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/9a9963af13f75da2d9beb0f3b4eca2b0a1ce0e71.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/2afa8e8a74eca40c95a4773bdeb04fc5d5f7efe4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/1b938f54b83d6ac235f58376dfd71ad43548fbd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/a0fa8872086b4c3c6fdba43fbf4521e172ac4a39.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/384d06f5e32395fc859dacbc6f422d515725dbc5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/9dc720d87c93f563920c1ee67358aa44fef6e828.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/42b7eed2bd3dec34094b958f1c0b035f8381dc23.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/1f3bfc49c44c5d57429b78aead3efa9e61c0ec12.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/9519a5197a295ba69ae681b046a699809d5472e3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/36dcd9277ba71913256ba49f18cfaf572734f6cc.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/1308ac9cfdeca0779e6a7a3806ac0e302b4b0ff1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/5f0acc7e956c9a7b7ae5f5308d0cddaf443734e4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/e0ddf8ab90fda6399576426de422ca9b1c156f57.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/534eb99e55c235c0e7c1a64815af239eb6216ae5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/a2631cd0478cf718f08404d12c1840a7bf29291e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/7f1593474e7953c54eff73ec0f940053e4135a05.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/77f220c67723458c0a09bc12b84d549e640c5b18.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/dfdd2069b1741b753c9d1bb9832e71ffe01ccfb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/74d3ed2184c25546a5e4eb7577b6284d00fd0a96.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/3804a784e7925ce4ad4442444511f27866224329.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/418a841d680642fd561dd3057d990fa117415a9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/1f182fd496bd3a58286919a63382f62e9cc78825.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/cc04c8b123fe15ab0655ad11cda419173071fca9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/d54a121f9456a0e8b10dab3d81356299bf222cdf.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/3b460976b3be88b34b0ded2a5e133041db419279.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/684d239fba51c108a4432dc92152630ae019abb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/46bacd6c002a95752c640d1db81cefed3df6253.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/6a30de50c014f4b8ac3c7dc68549545b2f151afb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/c5e9bad0a3e4114fb3c30dfa9fd7533e32cba155.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/d46e0112d8f9b614e169d33d480a5608a6c91e6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/28ec090eb89027802c2030db3848f03bd90f8182.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/c2eb5a8e0ada05927ce3dc608c58edc6487e9e7d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/180a2664a719e3daaa17d35582cfc0f466fd3a9f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/2739b075232972ef45bbde3ab99c3e6f0069938b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/9a146746c185a169fbfc674183dd503569cf2a29.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/974537684a00c96f87076741f730b8f9e9e39f83.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/adc8401dcf9b8f885f11f13727fbc1c472218911.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/5903cbab159fcd8c1a63da8d4e92fbe3c2a47156.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/e1745444176ed744774440f8965a0ce1b7742802.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/ad8d4cf426de85fcd6bb0bad81e30a785024bcdb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/ffadb06a3a5fcda42a238798325576de461bb2e5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/8b09c5b954a21a1299633f7319da9a8c3fadb96e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/935aeb850af3e99b6ab998a2e2e167e7dc1a9cfe.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/da54fd0614f2d7a5f0a25d8106fa6db99262bee6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/e3c2a4f8ce1470653a05c1fac6c0dba565fe117b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/7164be96ac985a7c684ebf17e4f65ab177c0232.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/8f67e074ebaf4778faecbb457136f14560bc1df0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/2c0f71d02078da95db6ce75cf37b125cfaaecfa7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/6b1900b6b59f6b39e74346fa83e169f6ed07be58.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/ef483238ea1118541afe19b295fd23d634039712.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/b54000c1b9cc7984e0ee2aa18a421b5bd29ab2a7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/a543b13edbe1154e48252caa02f2937f5717af5c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/dcb462c85a8aa0d0687cb51b268a4109b8fe41d5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/f4cd73d05da0f717a12c9cf7eaf65db64c415c43.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/aac96fc8a84af1ad512824cee127184348a6c0e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/7b7d8375e30559fa26e90b625f262ffdef7734d0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/ec81b8966ce8b638aed95f61612640ea6e127a50.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/be8c7c6957a7a44fedf13da016173ed2fa452fb1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/ef4c6f8e4cea2996103a9977b4003af59c3ca7e3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/66665d509597fa7857c27925d377150d4ec87670.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
