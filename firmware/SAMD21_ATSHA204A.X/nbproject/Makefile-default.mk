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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/main.c ../src/app.c ../src/md5.c ../src/config/default/system/console/src/sys_console_uart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/md5.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d ${OBJECTDIR}/_ext/95446945/calib_aes.o.d ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d ${OBJECTDIR}/_ext/95446945/calib_basic.o.d ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d ${OBJECTDIR}/_ext/95446945/calib_command.o.d ${OBJECTDIR}/_ext/95446945/calib_counter.o.d ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d ${OBJECTDIR}/_ext/95446945/calib_execution.o.d ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d ${OBJECTDIR}/_ext/95446945/calib_info.o.d ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d ${OBJECTDIR}/_ext/95446945/calib_lock.o.d ${OBJECTDIR}/_ext/95446945/calib_mac.o.d ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d ${OBJECTDIR}/_ext/95446945/calib_random.o.d ${OBJECTDIR}/_ext/95446945/calib_read.o.d ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d ${OBJECTDIR}/_ext/95446945/calib_sha.o.d ${OBJECTDIR}/_ext/95446945/calib_sign.o.d ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d ${OBJECTDIR}/_ext/95446945/calib_verify.o.d ${OBJECTDIR}/_ext/95446945/calib_write.o.d ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d ${OBJECTDIR}/_ext/141463632/atca_host.o.d ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d ${OBJECTDIR}/_ext/701127929/atca_basic.o.d ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d ${OBJECTDIR}/_ext/701127929/atca_debug.o.d ${OBJECTDIR}/_ext/701127929/atca_device.o.d ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d ${OBJECTDIR}/_ext/701127929/atca_iface.o.d ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/md5.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/md5.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o

# Source Files
SOURCEFILES=../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/main.c ../src/app.c ../src/md5.c ../src/config/default/system/console/src/sys_console_uart.c

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

# 下面的宏可能使用在前处理和后处理的步骤
Device=ATSAMD21E18A
ProjectDir="E:\Working\Customer\SenseTime商汤\SAMD21_ATSHA204A\firmware\SAMD21_ATSHA204A.X"
ProjectName=SAMD21_ATSHA204A
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "用户自定义生成后步骤： [convert_to_uf2.bat]"
	@convert_to_uf2.bat
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATSAMD21E18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMD21E18A.ld"
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
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/1f0a82825ad460839ffb248f7c042427da1cc906.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/4b0d0f12b3040d6b63f73821776c35a9d4ea590b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/efd0cc70c49c66316ab4ba8841e271f7fa44ef89.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/2853652be0e02a02e58c565a3db056e5c4c79a9e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/3d68109416220a78dd5fdf4a7f1eba3a5b5789bf.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/4e4c2034e0d8e48b8f7b050f06cef44d27bc0ad5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/72257c9030269e7a4640f4ef31b97ded50c97c8b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/b885f206a4324d4cc0224ca02ca23a1433234a5b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/87a56534f03edd323b8bcf706d4fe3a023dfa218.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/46a07220f6b14bdff16158753c8f452124e15792.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/5b287e51c0d415ebe10f62b9d57853fbb678417.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/7325604b3516402f87c7cba970bff74f5dbad5d1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/556d42f2ea6d69cd839c0faa25ff74dcf9087096.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/9d1622cd5de22c01e54d1a77d558b716eab702e2.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/7e2621e1e9b6e5f7185356d9144d772576c272da.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/27e6686cd7c6965283d9429723e3c2266149a5ce.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/ccc6688272661e71a9b25fa7f5cf316add1aeef4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/39980bd27e0bb5c88bec9186d38415f1a8a4d61f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/951b2109295cf5448e82493a3f089f5cb7e72507.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/8cb36662b476a038be0329145118ad340672e8c8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/1831eca6f59308580bc8cf00a90314ba12e57f7f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/b84a0e6503f52516ed32de188099384ca4d63d04.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/3e18b311ca1eaa1fbe00b5b4ce125cfcb70974e1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/27b54e49e449e27af61b418d0b4617790482907.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/cb629c717985900b4df8951404b2d93c3a9b852a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/ef5c8c1e6e190454b630a9bcd56150427fcb1f3f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/136785b81acc42c66c2cd91bebfe908cf4076942.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/ca15708ba1806d866cb3522583a5e4ec01f58fa3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/87daa4e809868636f869e0562fb84f8e26d47bb4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/944ec090800f30593c60042669c622421894fce4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/c76a984d62bf70b5b5bf5a2a266ad0a27a624826.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/cc55b89d9607e2bbb93cfc7e0eaf130594de814b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/9b49f2d48d5a9667be6e5cc3069360bb27b0a23e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/9702651eed120d9449812fd4aa74484d50e61fa7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/e42b63d28aaa62f98b79db47b5fb0f7120af6c21.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/c74e18d5dffdc9118500d603937feba7ecb6732.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/35ee30dad9046c25319d84e7bdc3bf5e7b09d0da.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/6a47341dfc0c089d9487fc1e374e24c642facef7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/c21b46c231a12e7c1c3fd4e8510dea5ed60dfeda.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/e8dc9aa760876ed784f5eed49c975b4c4a8bb137.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/ca1f41408940d800e2e3b77039708bc9c9f4a411.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/6b16a269e9e2c4215ff1f15b1d9f9653d78640be.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/38458b901d2e87d7324656343f8501673dc4e0ea.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/8652afbcd1f26f4a25d4104ef72f7fd4a61c1aa0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/dacf1933410415a317e3dd95bdbbed058d29e2b3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/999f8b4f8e2147a8101dfde459b40347861c4aca.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/ff69eacecf9bfe51dba02674122bd44687532fec.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/b93400854cb7d6a0ef790dd9c38d18a91a8bcbc6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/19c4a11d7391b6a41f284ea4810164edffab2750.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/e5ca0659b769ee548cd307449419dce59930ce86.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/256ee6f77f372d2f37566e9b87caf3e83a2a3ec.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/a2df3f67140a20af295ab2aa1271c3031d886db0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/f081c4e94f7731b966763eb50657160370b1eb8b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/9cf401441c47bb7bf6bce2857e990dc602e70a72.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/3684cab777b4401b87e510363741cbff34b1b38c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/331cd3db6c7d5281f70382ebc8b9c2cd3085b4dd.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/7da4fa556070ab8dcb453250ecfe0b8e99c6a3f7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/1d713b09690076868011f5e7be6681dec1089e7c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/2e5ea97e8b6a53bc24415dac84ad3f352a2612d9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/ff608e08513babae165deb4fa5a4fc0a299d6ef.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/815030afc886f1a70fb1498f69f849e724587e7b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/bb2a6ab7297ac649cc14430d8143b13ce48fb6f7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/99f515c7e3c8ea2a26cdf9204b3db967c9005177.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/c327f8864976870d42b4dbe753bd050a99ae9e8e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/99a721f3bf1e9739f89ef339e62a7547a3d7f532.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/a76c105ccdabfc5f373985e210c28a6a2fc4d756.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/d0a50d795bd1bb78de972faa1638167d7f5fb4d7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/7a3b8ee0690862f84981419a909a9cfc2f7f15b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/fb241fbb8bd267f2b38f391ebbd666b9eaed603d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/6d4078ebc76da12a001f48a449f89871a2b2ffb5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/fd56d18c501e0736d03b51044b1ea5ec23248f5b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/99fe76755de1f2cb2246e35df1963e76b69a5325.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/4092d0f2bfda5dfd9432c3f9f09a4d15b5ffad5a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/30549a5caa63c184c6534c6cd4f9ce2d74c18db1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/fe8d58d4609c298ab2cc63e43ac06507ffb19733.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/d733903cedb630328b2d7a7c89baee9c1f920013.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/825c0fa8ecc01dd5e9366b9948b4249650c38166.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/cc6c086ef44243d69b0c85f10bcbcd5108ab2699.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/2de55f14a6e0ae06f4fc469f9a9917e194602a1a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/c8a51c7dc8831f43b73169e73247daefccee4f5c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/26d52d6e735ff06f223afcb3debbaf4c1485ef64.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/md5.o: ../src/md5.c  .generated_files/d87add6e1257b3df2262e6f78c7e4bc3e6df9356.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/md5.o.d" -o ${OBJECTDIR}/_ext/1360937237/md5.o ../src/md5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/6cd5e8f048cc1946bee79f3fab35853bd204c1e0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/df8eef0f9ef1fa6e068163e77318d128ee18bf9c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/2c84deb304a09e96d06467757b3d426b9ed55fb8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/fa6aa0584626baa8d301d0e13da21788c776ad68.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/12de23c008c1b526eeb1cab8df7d4393117c2aa8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/a0a7e66e98ee8c479f789704c8821a6f1e4e0240.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/abc55a8d01297f0eecbe07a7bd40f330e31d5777.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/a2c6b7b37d4c71566821d0972ea1440a3d43a423.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/fd54e456bf648acd81f574630ef893283eaea671.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/3df820098204b8b930e5506aab14fe4dc9b80404.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/834e00a1de0fd8ca64ef47e9f02d19120b57c673.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/3d9469a80ccf3baa9620a33f40f16cc26cd92345.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/ba71cce817a9d989744cb011231496bbe6473c2.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/abc43af6d5308599bf13c60e66a8f8d99fe73ab1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/8ec95901f20ac55d4acc52343289d222389ebb5f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/5bc393a3bf6123b7fa5943e04293f3d3292e1bcf.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/ed121ed6931d6b8ccb5b74485b018c44b3f7be47.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/1cb790eecad8f59c830dd01a3bd0fc0c872c2211.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/e80c086ec9bb33bb46bdd51f18cb9573797aaa23.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/e1341ab525d6d87b3ceb59ce5eec07c28aaae4a7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/adff60673c220497d05a06998c4ff6c00448ce3d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/f584ffff28da6c5793ad73f9ab309e0e79302f1d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/fea5212dd3c2ba209dd8edea3ed7c9469b77d2b4.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/9ff03ac0b0a4be98d96326e334fcd5966d02e04.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/3472ce37c5113dcc1151aa02bf89a2891c63c475.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/778288ea64f36b19b643b567eead62a501b0ff95.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/519d08ba9bf2f6050ffaa7bbd28ff825a99ed0d5.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/2ac20a84e9a8ce6d9377836a2d44e7cea125065d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/3146a7851abdd92ddc3a87de0eae6af1bafdf0a3.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/a149e6aaf9d5bfb73b5924cf5b43ffaa0ba57b45.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/33f205442fecdbdce82a7fc8b844265bcf75d104.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/a0f8e60c4ae909768155a3321d9f2242e1339a9b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/6f84aeaf568f10151b45e927927e158b675be35d.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/733f7fef69de43887cc6569cf86825bfefcea867.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/7f97c5bbcd4a104da1d1fa121f160d16ee8f018a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/cd74c72fe6d7cf76ae918e8cfa1034a08da01a96.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/1f9a9621db98a09df8fb6e7c250e3e4fce52d897.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/6b8e5baaa5004267d083b9c8aed8b2ff617cd728.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/e240fa33c1de2efdba1cb5a82de90d57685b50b1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/e968632e139af0b137c6086467ef2a40b20e867a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/6f3806369b9f1ce11b4d2546d6f6a6ec9b6dcf9.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/b97be75925b295c8cb8bfc93e4cedd26c4f2ec73.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/cda65c8954345a8495ff03a1aef397598ce5088a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/80e364f4c98a60d959d0b5ee34e8b3daceed4742.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/b8acfce9949876f8bb0339cea5036ef8bc038aec.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/bee6a11d19186f770f0fa3772c1fda820868fd44.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/33c8bc67c3e2d502c906f0b29259ac3c77ff78c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o: ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c  .generated_files/7c89da753e60175cd7e7de673be9e2b96bdf58c8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATSHA204A_0.o ../src/config/default/library/cryptoauthlib/hal/ATSHA204A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/13613f3efb0279774d840da52a7a8912a5bd9ba1.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/987815fdb5f8431759b131565348b1177cb88ca7.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/8a38431da3b81503438da7f080abb4589d6cf597.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/bbf23e7884d14851162404f142572ee7efbf5c31.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/aa0af68dea8b9931192ed7f76937c3296ea9989c.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/9b6d7e4ccb232f5c5526dfe9b66cc73cafeba8c6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/fc13c4afcee82c42cbc74330d72ee44210a6e303.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/c93370d254e01a32d22d7c8afca76b1d55da5cb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/2519d7ee05a0f3a57aa23dd92b164103b0dd8d4e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/de6cd23e0ed86bb886cb1b60d1a1c30194c5ad87.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/8affed110e06a99b917d1a22a1202485b96efbe0.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/bc3a35ad5148eb2427f487dc1efdddfd10e83d19.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/2ae6612089989428b228a354ad1a36b340623d78.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/dddcd24e5ed68985a9cbb4da15d90f9b6e2dd029.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/92089b14443ccf70c2e2a8ee73753e9a37bcd052.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/806069867fa51a4c18a275c94942de58f6d93a04.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/38bb5b368e03c7cebfa0e05d9d36519e828d135a.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/4584ec64c45df3f786acc4544e5adda213e00432.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/a1eae3f695418f7eb6f7e7379ef9d125d9472383.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/ced485acd476bf9bde010381da56ff07d69c7e4f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/6e888578aec26cbfd60645927d1925a11775a23b.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/da8ae0fb9eeab0c21aa8367f6eb6c62ba48e2937.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/ded9c5efba6be41d21e760f4f2bb8856033861b6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/d1c36268a9e4da352bc00e6235f36aecb73fea16.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/786b06d2de6ffce2e2acff1f56eb7feecca3ce66.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/7592ba15748c372d1e73fc1ba23b8d654920a08f.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/4ca87a6d5879fff2bbb904b2524b5e7de2f164b2.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/cf9991145042da851b50183d7da4ccee8e9bcbcc.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/804a1d36edb1ddfcf2b2714e8b19570749eda849.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/4229d63aa98f97b565bef30ba7dbea28e1939571.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/6f4987fd38b387058176a3c1b18c678274e31dba.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/3250e4343fb5139fa4b01e158c8a7c7c67b00a8.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/2eda8ae1bc671bd4b20cb4b834ae3d27dcc0814.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/15e5d7791b21310f9bf4204b03dd5250dacc0beb.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/md5.o: ../src/md5.c  .generated_files/3290c949d108eef1f731623c3001aa0925bc276e.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/md5.o.d" -o ${OBJECTDIR}/_ext/1360937237/md5.o ../src/md5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/d96fbd5ecb073a10b274228035383be30a424ee6.flag .generated_files/ae2f067417298ec2a27502dab14dbeba65dbf48a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21E18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DROM_LENGTH=0x3e000,-DROM_ORIGIN=0x2000,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21E18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SAMD21_ATSHA204A.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DROM_LENGTH=0x3e000,-DROM_ORIGIN=0x2000,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
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
