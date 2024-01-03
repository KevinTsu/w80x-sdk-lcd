##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=W800_SDK
ConfigurationName      :=BuildSet
WorkspacePath          :=./
ProjectPath            :=./
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=ziqin
Date                   :=03/01/2024
CDKPath                :=D:/C-Sky/CDK
ToolchainPath          :=D:/C-Sky/CDKRepo/Toolchain/CKV2ElfMinilib/V3.10.29/R/
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=w800
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=W800_SDK.txt
MakeDirCommand         :=mkdir
LinkOptions            := -mcpu=ck804ef  -mhard-float  -nostartfiles -Wl,--gc-sections -T"$(ProjectPath)../../../../../../../ld/w800/gcc_csky.ld"
LinkOtherFlagsOption   :=-Wl,-zmax-page-size=1024 -mhard-float
IncludePackagePath     :=
IncludeCPath           := $(IncludeSwitch)D:/C-Sky/CDK/CSKY/MinGW/csky-abiv2-elf-toolchain/csky-elfabiv2/include $(IncludeSwitch). $(IncludeSwitch)../../../../../../../app $(IncludeSwitch)../../../../../../../app/button $(IncludeSwitch)../../../../../../../app/solutions/switch_panel $(IncludeSwitch)../../../../../../../app/xmodem $(IncludeSwitch)../../../../../../../components $(IncludeSwitch)../../../../../../../components/lvgl $(IncludeSwitch)../../../../../../../components/lvgl/demos $(IncludeSwitch)../../../../../../../components/lvgl/demos/benchmark $(IncludeSwitch)../../../../../../../components/lvgl/demos/keypad_encoder $(IncludeSwitch)../../../../../../../components/lvgl/demos/music $(IncludeSwitch)../../../../../../../components/lvgl/demos/music/assets $(IncludeSwitch)../../../../../../../components/lvgl/demos/stress $(IncludeSwitch)../../../../../../../components/lvgl/demos/widgets $(IncludeSwitch)../../../../../../../components/lvgl/env_support/cmsis-pack $(IncludeSwitch)../../../../../../../components/lvgl/env_support/rt-thread $(IncludeSwitch)../../../../../../../components/lvgl/env_support/rt-thread/squareline/ui/lvgl $(IncludeSwitch)../../../../../../../components/lvgl/examples $(IncludeSwitch)../../../../../../../components/lvgl/examples/anim $(IncludeSwitch)../../../../../../../components/lvgl/examples/event $(IncludeSwitch)../../../../../../../components/lvgl/examples/get_started $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts/flex $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts/grid $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/bmp $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/ffmpeg $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/freetype $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/gif $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/png $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/qrcode $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/rlottie $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/sjpg $(IncludeSwitch)../../../../../../../components/lvgl/examples/others $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/fragment $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/gridnav $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/ime $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/imgfont $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/monkey $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/msg $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/snapshot $(IncludeSwitch)../../../../../../../components/lvgl/examples/porting $(IncludeSwitch)../../../../../../../components/lvgl/examples/scroll $(IncludeSwitch)../../../../../../../components/lvgl/examples/styles $(IncludeSwitch)../../../../../../../components/lvgl/examples/widgets $(IncludeSwitch)../../../../../../../components/lvgl/src $(IncludeSwitch)../../../../../../../components/lvgl/src/core $(IncludeSwitch)../../../../../../../components/lvgl/src/draw $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/arm2d $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp/pxp $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp/vglite $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/sdl $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/stm32_dma2d $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/sw $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/swm341_dma2d $(IncludeSwitch)../../../../../../../components/lvgl/src/extra $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts/flex $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts/grid $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/bmp $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/ffmpeg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/freetype $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/fsdrv $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/gif $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/png $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/qrcode $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/rlottie $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/sjpg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/fragment $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/gridnav $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/ime $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/imgfont $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/monkey $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/msg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/snapshot $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/basic $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/default $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/mono $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/animimg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/calendar $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/chart $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/colorwheel $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/imgbtn $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/keyboard $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/led $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/list $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/menu $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/meter $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/msgbox $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/span $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/spinbox $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/spinner $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/tabview $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/tileview $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/win $(IncludeSwitch)../../../../../../../components/lvgl/src/font $(IncludeSwitch)../../../../../../../components/lvgl/src/hal $(IncludeSwitch)../../../../../../../components/lvgl/src/misc $(IncludeSwitch)../../../../../../../components/lvgl/src/widgets $(IncludeSwitch)../../../../../../../components/lvgl/tests/src $(IncludeSwitch)../../../../../../../components/lvgl/tests/unity $(IncludeSwitch)../../../../../../../components/lvgl_drivers/encoder $(IncludeSwitch)../../../../../../../components/lvgl_drivers/lcd $(IncludeSwitch)../../../../../../../components/lvgl_drivers/psram $(IncludeSwitch)../../../../../../../components/lvgl_drivers/spiflash $(IncludeSwitch)../../../../../../../components/lvgl_drivers/touchpad $(IncludeSwitch)../../../../../../../components/lvgl_port $(IncludeSwitch)../../../../../../../demo $(IncludeSwitch)../../../../../../../include $(IncludeSwitch)../../../../../../../include/app $(IncludeSwitch)../../../../../../../include/arch/xt804 $(IncludeSwitch)../../../../../../../include/arch/xt804/csi_core $(IncludeSwitch)../../../../../../../include/arch/xt804/csi_dsp $(IncludeSwitch)../../../../../../../include/bt $(IncludeSwitch)../../../../../../../include/driver $(IncludeSwitch)../../../../../../../include/net $(IncludeSwitch)../../../../../../../include/os $(IncludeSwitch)../../../../../../../include/platform $(IncludeSwitch)../../../../../../../include/wifi $(IncludeSwitch)../../../../../../../platform/common/params $(IncludeSwitch)../../../../../../../platform/drivers/spi $(IncludeSwitch)../../../../../../../platform/inc $(IncludeSwitch)../../../../../../../platform/sys $(IncludeSwitch)../../../../../../../src/app $(IncludeSwitch)../../../../../../../src/app/POSIX/FreeRTOS-Plus-POSIX/include $(IncludeSwitch)../../../../../../../src/app/POSIX/FreeRTOS-Plus-POSIX/include/portable $(IncludeSwitch)../../../../../../../src/app/POSIX/include $(IncludeSwitch)../../../../../../../src/app/bleapp $(IncludeSwitch)../../../../../../../src/app/btapp $(IncludeSwitch)../../../../../../../src/app/cJSON $(IncludeSwitch)../../../../../../../src/app/dhcpserver $(IncludeSwitch)../../../../../../../src/app/dnsserver $(IncludeSwitch)../../../../../../../src/app/fatfs $(IncludeSwitch)../../../../../../../src/app/httpclient $(IncludeSwitch)../../../../../../../src/app/iperf $(IncludeSwitch)../../../../../../../src/app/libcoap/include $(IncludeSwitch)../../../../../../../src/app/libwebsockets-2.1-stable $(IncludeSwitch)../../../../../../../src/app/mDNS/mDNSCore $(IncludeSwitch)../../../../../../../src/app/mDNS/mDNSPosix $(IncludeSwitch)../../../../../../../src/app/mbedtls/include $(IncludeSwitch)../../../../../../../src/app/mbedtls/include/mbedtls $(IncludeSwitch)../../../../../../../src/app/mbedtls/ports $(IncludeSwitch)../../../../../../../src/app/mqtt $(IncludeSwitch)../../../../../../../src/app/oneshotconfig $(IncludeSwitch)../../../../../../../src/app/ota $(IncludeSwitch)../../../../../../../src/app/ping $(IncludeSwitch)../../../../../../../src/app/polarssl/include $(IncludeSwitch)../../../../../../../src/app/web $(IncludeSwitch)../../../../../../../src/app/wm_atcmd $(IncludeSwitch)../../../../../../../src/bt/blehost/ext/tinycrypt/include $(IncludeSwitch)../../../../../../../src/bt/blehost/ext/tinycrypt/include/tinycrypt $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/include/host $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/mesh/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/mesh/include/mesh $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/porting/w800/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gap/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gap/include/services/gap $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gatt/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gatt/include/services/gatt $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/src $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/config/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/config/include/store/config $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/config/src $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/ram/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/ram/include/store/ram $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/util/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/util/include/host/util $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/include/nimble $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/transport/uart/include $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/transport/uart/include/transport/uart $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/hal $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/log $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/log_common $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/logcfg $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/mem $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/modlog $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/nimble $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/os $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/stats $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/syscfg $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/sysflash $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/sysinit $(IncludeSwitch)../../../../../../../src/network/api_wm $(IncludeSwitch)../../../../../../../src/network/lwip2.1.3/apps/httpd $(IncludeSwitch)../../../../../../../src/network/lwip2.1.3/apps/snmp $(IncludeSwitch)../../../../../../../src/network/lwip2.1.3/include $(IncludeSwitch)../../../../../../../src/os/rtos/include $(IncludeSwitch)../../../../../../../components  
IncludeAPath           := $(IncludeSwitch)D:/C-Sky/CDK/CSKY/csi/csi_core/csi_cdk/ $(IncludeSwitch)D:/C-Sky/CDK/CSKY/csi/csi_core/include/ $(IncludeSwitch)D:/C-Sky/CDK/CSKY/csi/csi_driver/include/ $(IncludeSwitch). $(IncludeSwitch)../../../../../../../app $(IncludeSwitch)../../../../../../../app/button $(IncludeSwitch)../../../../../../../app/solutions/switch_panel $(IncludeSwitch)../../../../../../../app/xmodem $(IncludeSwitch)../../../../../../../components $(IncludeSwitch)../../../../../../../components/lvgl $(IncludeSwitch)../../../../../../../components/lvgl/demos $(IncludeSwitch)../../../../../../../components/lvgl/demos/benchmark $(IncludeSwitch)../../../../../../../components/lvgl/demos/keypad_encoder $(IncludeSwitch)../../../../../../../components/lvgl/demos/music $(IncludeSwitch)../../../../../../../components/lvgl/demos/music/assets $(IncludeSwitch)../../../../../../../components/lvgl/demos/stress $(IncludeSwitch)../../../../../../../components/lvgl/demos/widgets $(IncludeSwitch)../../../../../../../components/lvgl/env_support/cmsis-pack $(IncludeSwitch)../../../../../../../components/lvgl/env_support/rt-thread $(IncludeSwitch)../../../../../../../components/lvgl/env_support/rt-thread/squareline/ui/lvgl $(IncludeSwitch)../../../../../../../components/lvgl/examples $(IncludeSwitch)../../../../../../../components/lvgl/examples/anim $(IncludeSwitch)../../../../../../../components/lvgl/examples/event $(IncludeSwitch)../../../../../../../components/lvgl/examples/get_started $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts/flex $(IncludeSwitch)../../../../../../../components/lvgl/examples/layouts/grid $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/bmp $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/ffmpeg $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/freetype $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/gif $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/png $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/qrcode $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/rlottie $(IncludeSwitch)../../../../../../../components/lvgl/examples/libs/sjpg $(IncludeSwitch)../../../../../../../components/lvgl/examples/others $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/fragment $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/gridnav $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/ime $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/imgfont $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/monkey $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/msg $(IncludeSwitch)../../../../../../../components/lvgl/examples/others/snapshot $(IncludeSwitch)../../../../../../../components/lvgl/examples/porting $(IncludeSwitch)../../../../../../../components/lvgl/examples/scroll $(IncludeSwitch)../../../../../../../components/lvgl/examples/styles $(IncludeSwitch)../../../../../../../components/lvgl/examples/widgets $(IncludeSwitch)../../../../../../../components/lvgl/src $(IncludeSwitch)../../../../../../../components/lvgl/src/core $(IncludeSwitch)../../../../../../../components/lvgl/src/draw $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/arm2d $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp/pxp $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/nxp/vglite $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/sdl $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/stm32_dma2d $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/sw $(IncludeSwitch)../../../../../../../components/lvgl/src/draw/swm341_dma2d $(IncludeSwitch)../../../../../../../components/lvgl/src/extra $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts/flex $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/layouts/grid $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/bmp $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/ffmpeg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/freetype $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/fsdrv $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/gif $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/png $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/qrcode $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/rlottie $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/libs/sjpg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/fragment $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/gridnav $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/ime $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/imgfont $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/monkey $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/msg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/others/snapshot $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/basic $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/default $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/themes/mono $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/animimg $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/calendar $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/chart $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/colorwheel $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/imgbtn $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/keyboard $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/led $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/list $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/menu $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/meter $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/msgbox $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/span $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/spinbox $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/spinner $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/tabview $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/tileview $(IncludeSwitch)../../../../../../../components/lvgl/src/extra/widgets/win $(IncludeSwitch)../../../../../../../components/lvgl/src/font $(IncludeSwitch)../../../../../../../components/lvgl/src/hal $(IncludeSwitch)../../../../../../../components/lvgl/src/misc $(IncludeSwitch)../../../../../../../components/lvgl/src/widgets $(IncludeSwitch)../../../../../../../components/lvgl/tests/src $(IncludeSwitch)../../../../../../../components/lvgl/tests/unity $(IncludeSwitch)../../../../../../../components/lvgl_drivers/encoder $(IncludeSwitch)../../../../../../../components/lvgl_drivers/lcd $(IncludeSwitch)../../../../../../../components/lvgl_drivers/psram $(IncludeSwitch)../../../../../../../components/lvgl_drivers/spiflash $(IncludeSwitch)../../../../../../../components/lvgl_drivers/touchpad $(IncludeSwitch)../../../../../../../components/lvgl_port $(IncludeSwitch)../../../../../../../include $(IncludeSwitch)../../../../../../../include/arch/xt804 $(IncludeSwitch)../../../../../../../include/arch/xt804/csi_core $(IncludeSwitch)../../../../../../../include/arch/xt804/csi_dsp $(IncludeSwitch)../../../../../../../include/os $(IncludeSwitch)../../../../../../../include/platform $(IncludeSwitch)../../../../../../../src/app/bleapp $(IncludeSwitch)../../../../../../../src/app/btapp $(IncludeSwitch)../../../../../../../src/app/fatfs $(IncludeSwitch)../../../../../../../src/bt/blehost/ext/tinycrypt/include/tinycrypt $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/include/host $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/mesh/include/mesh $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/mesh/src $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gap/include/services/gap $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/services/gatt/include/services/gatt $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/src $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/config/include/store/config $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/config/src $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/store/ram/include/store/ram $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/host/util/include/host/util $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/include/nimble $(IncludeSwitch)../../../../../../../src/bt/blehost/nimble/transport/uart/include/transport/uart $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/hal $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/log $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/log_common $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/logcfg $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/mem $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/modlog $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/nimble $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/os $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/stats $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/syscfg $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/sysflash $(IncludeSwitch)../../../../../../../src/bt/blehost/porting/w800/include/sysinit $(IncludeSwitch)../../../../../../../src/os/rtos/include  
Libs                   := -Wl,--start-group  -Wl,--end-group $(LibrarySwitch)btcontroller $(LibrarySwitch)wlan $(LibrarySwitch)dsp  
ArLibs                 := "btcontroller" "wlan" "dsp" 
PackagesLibPath        :=
LibPath                :=$(LibraryPathSwitch)../../../../../../../lib/w800  $(PackagesLibPath) 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS := -mcpu=ck804ef  -mhard-float   $(PreprocessorSwitch)GCC_COMPILE=1  $(PreprocessorSwitch)TLS_CONFIG_CPU_XT804=1  $(PreprocessorSwitch)NIMBLE_FTR=1  $(PreprocessorSwitch)NO_PERSISTENCE=1  $(PreprocessorSwitch)USE_SELECT=1  $(PreprocessorSwitch)HIGH_PERFORMANCE=1  $(PreprocessorSwitch)USE_MBEDTLS=1   -O2  -g3  -Wall  -ffunction-sections -fdata-sections -c 
CFLAGS   := -mcpu=ck804ef  -mhard-float   $(PreprocessorSwitch)GCC_COMPILE=1  $(PreprocessorSwitch)TLS_CONFIG_CPU_XT804=1  $(PreprocessorSwitch)NIMBLE_FTR=1  $(PreprocessorSwitch)NO_PERSISTENCE=1  $(PreprocessorSwitch)USE_SELECT=1  $(PreprocessorSwitch)HIGH_PERFORMANCE=1  $(PreprocessorSwitch)USE_MBEDTLS=1   -O2  -g3  -Wall  -ffunction-sections -fdata-sections -c 
ASFLAGS  := -mcpu=ck804ef  -mhard-float    -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/demo_wm_7816_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_adc_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_apsta_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_connect_net_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_crypt_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_crypt_hard_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_flash_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_gpio_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_http_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_https_demo$(ObjectSuffix) \
	$(IntermediateDirectory)/demo_wm_i2c_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_i2s_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_iperf_auto_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_master_spi_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_mbedtls_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_mcast_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_mqtt_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_ntp_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_pmu_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_pwm_demo$(ObjectSuffix) \
	$(IntermediateDirectory)/demo_wm_rsa_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_rtc_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_scan_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_sck_client_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_sck_server_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_socket_client_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_socket_server_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_softap_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_ssl_server_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_timer_demo$(ObjectSuffix) \
	$(IntermediateDirectory)/demo_wm_uart_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_udp_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_websockets_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_wps_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_dsp_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_fatfs_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_sdio_host_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_slave_spi_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_touchsensor_demo$(ObjectSuffix) $(IntermediateDirectory)/demo_wm_avoid_copy_demo$(ObjectSuffix) \
	$(IntermediateDirectory)/demo_wm_lcd_demo$(ObjectSuffix) $(IntermediateDirectory)/app_lvgl_task$(ObjectSuffix) $(IntermediateDirectory)/app_main$(ObjectSuffix) $(IntermediateDirectory)/sys_tls_sys$(ObjectSuffix) $(IntermediateDirectory)/sys_wm_main$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/console_wm_demo_console_task$(ObjectSuffix) $(IntermediateDirectory)/lvgl_port_lv_port_disp$(ObjectSuffix) $(IntermediateDirectory)/lvgl_port_lv_port_indev$(ObjectSuffix) $(IntermediateDirectory)/lvgl_port_lv_port_tick$(ObjectSuffix) $(IntermediateDirectory)/button_multi_button$(ObjectSuffix) \
	$(IntermediateDirectory)/xmodem_xmodem$(ObjectSuffix) $(IntermediateDirectory)/rtos_wm_osal_rtos$(ObjectSuffix) $(IntermediateDirectory)/cJSON_cJSON$(ObjectSuffix) $(IntermediateDirectory)/dhcpserver_dhcp_server$(ObjectSuffix) $(IntermediateDirectory)/dnsserver_dns_server$(ObjectSuffix) $(IntermediateDirectory)/httpclient_HTTPClient$(ObjectSuffix) $(IntermediateDirectory)/httpclient_HTTPClientAuth$(ObjectSuffix) $(IntermediateDirectory)/httpclient_HTTPClientString$(ObjectSuffix) $(IntermediateDirectory)/httpclient_HTTPClientWrapper$(ObjectSuffix) $(IntermediateDirectory)/httpclient_wm_httpclient_task$(ObjectSuffix) \
	$(IntermediateDirectory)/iperf_iperf_api$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_client_api$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_error$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_locale$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_main$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_net$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/iperf_iperf_server_api$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_tcp$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_timer$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_udp$(ObjectSuffix) \
	$(IntermediateDirectory)/iperf_iperf_units$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf_util$(ObjectSuffix) $(IntermediateDirectory)/iperf_tcp_info$(ObjectSuffix) $(IntermediateDirectory)/iperf_tcp_window_size$(ObjectSuffix) $(IntermediateDirectory)/iperf_wm_perf$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_base64-decode$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_client-handshake$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_client-parser$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_client$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_context$(ObjectSuffix) \
	$(IntermediateDirectory)/libwebsockets-2.1-stable_handshake$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_header$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_libwebsockets$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_lws-plat-wm$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_output$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_parsers$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_pollfd$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_service$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_ssl-client$(ObjectSuffix) $(IntermediateDirectory)/libwebsockets-2.1-stable_ssl$(ObjectSuffix) \
	$(IntermediateDirectory)/mqtt_libemqtt$(ObjectSuffix) $(IntermediateDirectory)/ntp_ntp_client$(ObjectSuffix) $(IntermediateDirectory)/oneshotconfig_wm_oneshot_airkiss$(ObjectSuffix) $(IntermediateDirectory)/oneshotconfig_wm_oneshot_lsd$(ObjectSuffix) $(IntermediateDirectory)/oneshotconfig_wm_wifi_oneshot$(ObjectSuffix) $(IntermediateDirectory)/ota_wm_http_fwup$(ObjectSuffix) $(IntermediateDirectory)/ota_wm_socket_fwup$(ObjectSuffix) $(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IntermediateDirectory)/sslserver_wm_ssl_server$(ObjectSuffix) $(IntermediateDirectory)/web_fs$(ObjectSuffix) \
	$(IntermediateDirectory)/web_httpd$(ObjectSuffix) $(IntermediateDirectory)/web_web$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_cmdp$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_cmdp_hostif$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_cmdp_ri$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_rmms$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_uart_task$(ObjectSuffix) $(IntermediateDirectory)/wm_atcmd_wm_hspi_task$(ObjectSuffix) $(IntermediateDirectory)/fatfs_diskio$(ObjectSuffix) $(IntermediateDirectory)/fatfs_ff$(ObjectSuffix) \
	$(IntermediateDirectory)/fatfs_ffsystem$(ObjectSuffix) $(IntermediateDirectory)/fatfs_ffunicode$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_client_api_demo$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_client_api_multi_conn_demo$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_client_peer_manager$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_client_util$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_gap$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_server_api_demo$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_server_wifi_app$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_server_wifi_prof$(ObjectSuffix) \
	$(IntermediateDirectory)/bleapp_wm_ble_uart_if$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_bt_app$(ObjectSuffix) 

Objects3=$(IntermediateDirectory)/bleapp_wm_bt_util$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_level_server$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_client$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_server$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_health_server$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_light_model$(ObjectSuffix) $(IntermediateDirectory)/bleapp_wm_ble_mesh_node_demo$(ObjectSuffix) \
	$(IntermediateDirectory)/bleapp_wm_ble_mesh_vnd_model$(ObjectSuffix) $(IntermediateDirectory)/factorycmd_factory_atcmd$(ObjectSuffix) $(IntermediateDirectory)/lwip2.1.3_sys_arch$(ObjectSuffix) $(IntermediateDirectory)/api_wm_tls_netconn$(ObjectSuffix) $(IntermediateDirectory)/fwup_wm_fwup$(ObjectSuffix) $(IntermediateDirectory)/mem_wm_mem$(ObjectSuffix) $(IntermediateDirectory)/params_wm_param$(ObjectSuffix) $(IntermediateDirectory)/task_wm_wl_mbox$(ObjectSuffix) $(IntermediateDirectory)/task_wm_wl_task$(ObjectSuffix) $(IntermediateDirectory)/task_wm_wl_timers$(ObjectSuffix) \
	$(IntermediateDirectory)/utils_utils$(ObjectSuffix) $(IntermediateDirectory)/crypto_wm_crypto_hard$(ObjectSuffix) $(IntermediateDirectory)/crypto_wm_crypto_hard_mbed$(ObjectSuffix) $(IntermediateDirectory)/7816_wm_7816$(ObjectSuffix) $(IntermediateDirectory)/adc_wm_adc$(ObjectSuffix) $(IntermediateDirectory)/adc_wm_polyfit$(ObjectSuffix) $(IntermediateDirectory)/adc_wm_adc_cal$(ObjectSuffix) $(IntermediateDirectory)/cpu_wm_cpu$(ObjectSuffix) $(IntermediateDirectory)/dma_wm_dma$(ObjectSuffix) $(IntermediateDirectory)/efuse_wm_efuse$(ObjectSuffix) \
	$(IntermediateDirectory)/flash_wm_fls$(ObjectSuffix) $(IntermediateDirectory)/flash_wm_fls_gd25qxx$(ObjectSuffix) $(IntermediateDirectory)/gpio_wm_gpio$(ObjectSuffix) $(IntermediateDirectory)/gpio_wm_gpio_afsel$(ObjectSuffix) $(IntermediateDirectory)/i2c_wm_i2c$(ObjectSuffix) $(IntermediateDirectory)/i2s_wm_i2s$(ObjectSuffix) $(IntermediateDirectory)/internalflash_wm_internal_fls$(ObjectSuffix) $(IntermediateDirectory)/io_wm_io$(ObjectSuffix) $(IntermediateDirectory)/irq_wm_irq$(ObjectSuffix) $(IntermediateDirectory)/pmu_wm_pmu$(ObjectSuffix) \
	$(IntermediateDirectory)/pwm_wm_pwm$(ObjectSuffix) $(IntermediateDirectory)/rtc_wm_rtc$(ObjectSuffix) $(IntermediateDirectory)/sasc_wm_sasc$(ObjectSuffix) $(IntermediateDirectory)/spi_wm_hostspi$(ObjectSuffix) $(IntermediateDirectory)/timer_wm_timer$(ObjectSuffix) $(IntermediateDirectory)/uart_wm_uart$(ObjectSuffix) $(IntermediateDirectory)/watchdog_wm_watchdog$(ObjectSuffix) $(IntermediateDirectory)/hspi_wm_hspi$(ObjectSuffix) $(IntermediateDirectory)/sdio_host_wm_sdio_host$(ObjectSuffix) $(IntermediateDirectory)/psram_wm_psram$(ObjectSuffix) \
	$(IntermediateDirectory)/touchsensor_wm_touchsensor$(ObjectSuffix) $(IntermediateDirectory)/lcd_wm_lcd$(ObjectSuffix) $(IntermediateDirectory)/encoder_encoder$(ObjectSuffix) $(IntermediateDirectory)/lcd_lcd$(ObjectSuffix) $(IntermediateDirectory)/lcd_sdio_spi_driver$(ObjectSuffix) $(IntermediateDirectory)/psram_psram$(ObjectSuffix) $(IntermediateDirectory)/spiflash_spiflash$(ObjectSuffix) $(IntermediateDirectory)/touchpad_cst816t$(ObjectSuffix) $(IntermediateDirectory)/touchpad_ft5206$(ObjectSuffix) $(IntermediateDirectory)/touchpad_gt911$(ObjectSuffix) \
	$(IntermediateDirectory)/touchpad_iic$(ObjectSuffix) $(IntermediateDirectory)/touchpad_touchpad$(ObjectSuffix) $(IntermediateDirectory)/touchpad_xpt2046$(ObjectSuffix) 

Objects4=$(IntermediateDirectory)/switch_panel_ui$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_helpers$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_320x240_bg_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_bluetooth_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_clock_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_snow_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_28x22_png$(ObjectSuffix) \
	$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_1_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_2_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_3_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_4_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_5_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_fog_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_png$(ObjectSuffix) $(IntermediateDirectory)/switch_panel_ui_img_weather_sun_cloud_png$(ObjectSuffix) \
	$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_png$(ObjectSuffix) $(IntermediateDirectory)/source_croutine$(ObjectSuffix) $(IntermediateDirectory)/source_event_groups$(ObjectSuffix) $(IntermediateDirectory)/source_heap_2$(ObjectSuffix) $(IntermediateDirectory)/source_heap_3$(ObjectSuffix) $(IntermediateDirectory)/source_list$(ObjectSuffix) $(IntermediateDirectory)/source_queue$(ObjectSuffix) $(IntermediateDirectory)/source_stream_buffer$(ObjectSuffix) $(IntermediateDirectory)/source_tasks$(ObjectSuffix) $(IntermediateDirectory)/source_timers$(ObjectSuffix) \
	$(IntermediateDirectory)/library_aes$(ObjectSuffix) $(IntermediateDirectory)/library_aesni$(ObjectSuffix) $(IntermediateDirectory)/library_arc4$(ObjectSuffix) $(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) $(IntermediateDirectory)/library_asn1write$(ObjectSuffix) $(IntermediateDirectory)/library_base64$(ObjectSuffix) $(IntermediateDirectory)/library_bignum$(ObjectSuffix) $(IntermediateDirectory)/library_blowfish$(ObjectSuffix) $(IntermediateDirectory)/library_camellia$(ObjectSuffix) $(IntermediateDirectory)/library_ccm$(ObjectSuffix) \
	$(IntermediateDirectory)/library_certs$(ObjectSuffix) $(IntermediateDirectory)/library_cipher$(ObjectSuffix) $(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) $(IntermediateDirectory)/library_cmac$(ObjectSuffix) $(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) $(IntermediateDirectory)/library_debug$(ObjectSuffix) $(IntermediateDirectory)/library_des$(ObjectSuffix) $(IntermediateDirectory)/library_dhm$(ObjectSuffix) $(IntermediateDirectory)/library_ecdh$(ObjectSuffix) $(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) \
	

Objects5=$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) $(IntermediateDirectory)/library_ecp$(ObjectSuffix) $(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) $(IntermediateDirectory)/library_entropy$(ObjectSuffix) $(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) $(IntermediateDirectory)/library_error$(ObjectSuffix) $(IntermediateDirectory)/library_gcm$(ObjectSuffix) $(IntermediateDirectory)/library_havege$(ObjectSuffix) $(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) $(IntermediateDirectory)/library_md$(ObjectSuffix) \
	$(IntermediateDirectory)/library_md2$(ObjectSuffix) $(IntermediateDirectory)/library_md4$(ObjectSuffix) $(IntermediateDirectory)/library_md5$(ObjectSuffix) $(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) $(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) $(IntermediateDirectory)/library_net_sockets$(ObjectSuffix) $(IntermediateDirectory)/library_oid$(ObjectSuffix) $(IntermediateDirectory)/library_padlock$(ObjectSuffix) $(IntermediateDirectory)/library_pem$(ObjectSuffix) $(IntermediateDirectory)/library_pk$(ObjectSuffix) \
	$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) $(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) $(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) $(IntermediateDirectory)/library_pkparse$(ObjectSuffix) $(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) $(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) $(IntermediateDirectory)/library_platform$(ObjectSuffix) $(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) $(IntermediateDirectory)/library_rsa$(ObjectSuffix) $(IntermediateDirectory)/library_rsa_internal$(ObjectSuffix) \
	$(IntermediateDirectory)/library_sha1$(ObjectSuffix) $(IntermediateDirectory)/library_sha256$(ObjectSuffix) $(IntermediateDirectory)/library_sha512$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) \
	$(IntermediateDirectory)/library_threading$(ObjectSuffix) $(IntermediateDirectory)/library_timing$(ObjectSuffix) $(IntermediateDirectory)/library_version$(ObjectSuffix) $(IntermediateDirectory)/library_version_features$(ObjectSuffix) $(IntermediateDirectory)/library_x509$(ObjectSuffix) $(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) $(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) $(IntermediateDirectory)/library_x509_create$(ObjectSuffix) $(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) $(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) \
	$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) $(IntermediateDirectory)/library_xtea$(ObjectSuffix) $(IntermediateDirectory)/ports_aes_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_arc4_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_des_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_hardware_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_md5_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_net_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_sha1_alt$(ObjectSuffix) $(IntermediateDirectory)/ports_timing_alt$(ObjectSuffix) \
	$(IntermediateDirectory)/mDNSCore_mDNS$(ObjectSuffix) $(IntermediateDirectory)/mDNSPosix_mDNSPosix$(ObjectSuffix) $(IntermediateDirectory)/api_api_lib$(ObjectSuffix) $(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IntermediateDirectory)/api_err$(ObjectSuffix) $(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IntermediateDirectory)/api_if_api$(ObjectSuffix) $(IntermediateDirectory)/api_sockets$(ObjectSuffix) \
	$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IntermediateDirectory)/core_alg$(ObjectSuffix) $(IntermediateDirectory)/core_altcp$(ObjectSuffix) $(IntermediateDirectory)/core_altcp_alloc$(ObjectSuffix) $(IntermediateDirectory)/core_altcp_tcp$(ObjectSuffix) $(IntermediateDirectory)/core_def$(ObjectSuffix) $(IntermediateDirectory)/core_dns$(ObjectSuffix) $(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) $(IntermediateDirectory)/core_init$(ObjectSuffix) $(IntermediateDirectory)/core_ip$(ObjectSuffix) \
	$(IntermediateDirectory)/core_mem$(ObjectSuffix) $(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IntermediateDirectory)/core_stats$(ObjectSuffix) 

Objects6=$(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IntermediateDirectory)/core_tcp$(ObjectSuffix) $(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) \
	$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IntermediateDirectory)/netif_wm_ethernet$(ObjectSuffix) $(IntermediateDirectory)/bsp_board_init$(ObjectSuffix) $(IntermediateDirectory)/bsp_isr$(ObjectSuffix) $(IntermediateDirectory)/bsp_startup$(ObjectSuffix) $(IntermediateDirectory)/bsp_system$(ObjectSuffix) $(IntermediateDirectory)/bsp_trap_c$(ObjectSuffix) \
	$(IntermediateDirectory)/bsp_vectors$(ObjectSuffix) $(IntermediateDirectory)/libc_libc_port$(ObjectSuffix) $(IntermediateDirectory)/benchmark_lv_demo_benchmark$(ObjectSuffix) $(IntermediateDirectory)/keypad_encoder_lv_demo_keypad_encoder$(ObjectSuffix) $(IntermediateDirectory)/music_lv_demo_music$(ObjectSuffix) $(IntermediateDirectory)/music_lv_demo_music_list$(ObjectSuffix) $(IntermediateDirectory)/music_lv_demo_music_main$(ObjectSuffix) $(IntermediateDirectory)/stress_lv_demo_stress$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_demo_widgets$(ObjectSuffix) 

Objects7=$(IntermediateDirectory)/rt-thread_lv_rt_thread_port$(ObjectSuffix) \
	$(IntermediateDirectory)/core_lv_disp$(ObjectSuffix) $(IntermediateDirectory)/core_lv_event$(ObjectSuffix) $(IntermediateDirectory)/core_lv_group$(ObjectSuffix) $(IntermediateDirectory)/core_lv_indev$(ObjectSuffix) $(IntermediateDirectory)/core_lv_indev_scroll$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_class$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_draw$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_pos$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_scroll$(ObjectSuffix) \
	$(IntermediateDirectory)/core_lv_obj_style$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_style_gen$(ObjectSuffix) $(IntermediateDirectory)/core_lv_obj_tree$(ObjectSuffix) $(IntermediateDirectory)/core_lv_refr$(ObjectSuffix) 

Objects8=$(IntermediateDirectory)/core_lv_theme$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_arc$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_img$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_label$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_layer$(ObjectSuffix) \
	$(IntermediateDirectory)/draw_lv_draw_line$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_mask$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_rect$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_transform$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_draw_triangle$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_img_buf$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_img_cache$(ObjectSuffix) $(IntermediateDirectory)/draw_lv_img_decoder$(ObjectSuffix) $(IntermediateDirectory)/extra_lv_extra$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font$(ObjectSuffix) \
	$(IntermediateDirectory)/font_lv_font_dejavu_16_persian_hebrew$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_fmt_txt$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_loader$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_10$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_12$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_12_subpx$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_14$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_16$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_18$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_20$(ObjectSuffix) \
	$(IntermediateDirectory)/font_lv_font_montserrat_22$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_24$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_26$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_28$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_28_compressed$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_30$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_32$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_34$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_36$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_38$(ObjectSuffix) \
	$(IntermediateDirectory)/font_lv_font_montserrat_40$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_42$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_44$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_46$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_48$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_montserrat_8$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_simsun_16_cjk$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_unscii_16$(ObjectSuffix) $(IntermediateDirectory)/font_lv_font_unscii_8$(ObjectSuffix) $(IntermediateDirectory)/hal_lv_hal_disp$(ObjectSuffix) \
	$(IntermediateDirectory)/hal_lv_hal_indev$(ObjectSuffix) $(IntermediateDirectory)/hal_lv_hal_tick$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_anim$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_anim_timeline$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_area$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_async$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_bidi$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_color$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_fs$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_gc$(ObjectSuffix) \
	

Objects9=$(IntermediateDirectory)/misc_lv_ll$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_log$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_lru$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_math$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_mem$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_printf$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_style$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_style_gen$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_templ$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_timer$(ObjectSuffix) \
	$(IntermediateDirectory)/misc_lv_tlsf$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_txt$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_txt_ap$(ObjectSuffix) $(IntermediateDirectory)/misc_lv_utils$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_arc$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_bar$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_btn$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_btnmatrix$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_canvas$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_checkbox$(ObjectSuffix) \
	$(IntermediateDirectory)/widgets_lv_dropdown$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_img$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_label$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_line$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_objx_templ$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_roller$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_slider$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_switch$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_table$(ObjectSuffix) $(IntermediateDirectory)/widgets_lv_textarea$(ObjectSuffix) \
	$(IntermediateDirectory)/src_lv_test_indev$(ObjectSuffix) $(IntermediateDirectory)/src_lv_test_init$(ObjectSuffix) $(IntermediateDirectory)/unity_unity$(ObjectSuffix) $(IntermediateDirectory)/unity_unity_support$(ObjectSuffix) $(IntermediateDirectory)/xt804_cpu_task_sw$(ObjectSuffix) $(IntermediateDirectory)/xt804_port$(ObjectSuffix) 

Objects10=$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) \
	$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IntermediateDirectory)/ipv6_dhcp6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_ethip6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_icmp6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_inet6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_ip6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_ip6_addr$(ObjectSuffix) \
	$(IntermediateDirectory)/ipv6_ip6_frag$(ObjectSuffix) $(IntermediateDirectory)/ipv6_mld6$(ObjectSuffix) $(IntermediateDirectory)/ipv6_nd6$(ObjectSuffix) 

Objects11=$(IntermediateDirectory)/assets_img_benchmark_cogwheel_alpha16$(ObjectSuffix) $(IntermediateDirectory)/assets_img_benchmark_cogwheel_argb$(ObjectSuffix) $(IntermediateDirectory)/assets_img_benchmark_cogwheel_chroma_keyed$(ObjectSuffix) $(IntermediateDirectory)/assets_img_benchmark_cogwheel_indexed16$(ObjectSuffix) $(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb$(ObjectSuffix) $(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb565a8$(ObjectSuffix) $(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_12_compr_az.c$(ObjectSuffix) \
	$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_16_compr_az.c$(ObjectSuffix) $(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_28_compr_az.c$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_corner_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_next$(ObjectSuffix) \
	$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_play$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_play_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_corner_left$(ObjectSuffix) \
	$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_corner_right$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_corner_right_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_1$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_1_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_2$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_2_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_3$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_cover_3_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_1$(ObjectSuffix) \
	$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_2$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_2_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_3$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_3_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_4$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_icon_4_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_list_border$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_list_border_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_logo$(ObjectSuffix) \
	$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_wave_top$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lv_demo_music_wave_top_large$(ObjectSuffix) $(IntermediateDirectory)/assets_img_clothes$(ObjectSuffix) $(IntermediateDirectory)/assets_img_demo_widgets_avatar$(ObjectSuffix) $(IntermediateDirectory)/assets_img_lvgl_logo$(ObjectSuffix) 

Objects12=$(IntermediateDirectory)/squareline_lv_ui_entry$(ObjectSuffix) \
	$(IntermediateDirectory)/arm2d_lv_gpu_arm2d$(ObjectSuffix) $(IntermediateDirectory)/nxp_lv_gpu_nxp$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_arc$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_bg$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_composite$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_img$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_label$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_layer$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_line$(ObjectSuffix) \
	$(IntermediateDirectory)/sdl_lv_draw_sdl_mask$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_polygon$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_rect$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_stack_blur$(ObjectSuffix) $(IntermediateDirectory)/sdl_lv_draw_sdl_texture_cache$(ObjectSuffix) 

Objects13=$(IntermediateDirectory)/sdl_lv_draw_sdl_utils$(ObjectSuffix) $(IntermediateDirectory)/stm32_dma2d_lv_gpu_stm32_dma2d$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_arc$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_blend$(ObjectSuffix) \
	$(IntermediateDirectory)/sw_lv_draw_sw_dither$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_gradient$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_img$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_layer$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_letter$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_line$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_polygon$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_rect$(ObjectSuffix) $(IntermediateDirectory)/sw_lv_draw_sw_transform$(ObjectSuffix) $(IntermediateDirectory)/swm341_dma2d_lv_gpu_swm341_dma2d$(ObjectSuffix) \
	$(IntermediateDirectory)/test_cases_test_arc$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_bar$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_checkbox$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_config$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_demo_stress$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_demo_widgets$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_dropdown$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_event$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_font_loader$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_fs$(ObjectSuffix) \
	$(IntermediateDirectory)/test_cases_test_line$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_mem$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_obj_tree$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_slider$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_snapshot$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_style$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_switch$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_table$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_textarea$(ObjectSuffix) $(IntermediateDirectory)/test_cases_test_txt$(ObjectSuffix) \
	$(IntermediateDirectory)/test_cases__test_template$(ObjectSuffix) $(IntermediateDirectory)/test_fonts_font_1$(ObjectSuffix) $(IntermediateDirectory)/test_fonts_font_2$(ObjectSuffix) $(IntermediateDirectory)/test_fonts_font_3$(ObjectSuffix) 

Objects14=$(IntermediateDirectory)/src_aes_decrypt$(ObjectSuffix) $(IntermediateDirectory)/src_aes_encrypt$(ObjectSuffix) $(IntermediateDirectory)/src_bleutils$(ObjectSuffix) $(IntermediateDirectory)/src_cbc_mode$(ObjectSuffix) $(IntermediateDirectory)/src_ccm_mode$(ObjectSuffix) $(IntermediateDirectory)/src_cmac_mode$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ctr_mode$(ObjectSuffix) $(IntermediateDirectory)/src_ctr_prng$(ObjectSuffix) $(IntermediateDirectory)/src_ecc$(ObjectSuffix) $(IntermediateDirectory)/src_ecc_dh$(ObjectSuffix) $(IntermediateDirectory)/src_ecc_dsa$(ObjectSuffix) $(IntermediateDirectory)/src_ecc_platform_specific$(ObjectSuffix) $(IntermediateDirectory)/src_hmac$(ObjectSuffix) $(IntermediateDirectory)/src_hmac_prng$(ObjectSuffix) $(IntermediateDirectory)/src_sha256$(ObjectSuffix) $(IntermediateDirectory)/src_ble_att$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_att_clt$(ObjectSuffix) $(IntermediateDirectory)/src_ble_att_cmd$(ObjectSuffix) $(IntermediateDirectory)/src_ble_att_svr$(ObjectSuffix) $(IntermediateDirectory)/src_ble_eddystone$(ObjectSuffix) $(IntermediateDirectory)/src_ble_gap$(ObjectSuffix) $(IntermediateDirectory)/src_ble_gattc$(ObjectSuffix) $(IntermediateDirectory)/src_ble_gatts$(ObjectSuffix) $(IntermediateDirectory)/src_ble_gatts_lcl$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_adv$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_hs_atomic$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_cfg$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_conn$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_flow$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_hci$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_hci_cmd$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_hci_evt$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_hci_util$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_id$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_log$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_hs_mbuf$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_misc$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_mqueue$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_periodic_sync$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_pvcy$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_shutdown$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_startup$(ObjectSuffix) $(IntermediateDirectory)/src_ble_hs_stop$(ObjectSuffix) $(IntermediateDirectory)/src_ble_ibeacon$(ObjectSuffix) $(IntermediateDirectory)/src_ble_l2cap$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_l2cap_coc$(ObjectSuffix) $(IntermediateDirectory)/src_ble_l2cap_sig$(ObjectSuffix) $(IntermediateDirectory)/src_ble_l2cap_sig_cmd$(ObjectSuffix) 

Objects15=$(IntermediateDirectory)/src_ble_monitor$(ObjectSuffix) $(IntermediateDirectory)/src_ble_sm$(ObjectSuffix) $(IntermediateDirectory)/src_ble_sm_alg$(ObjectSuffix) $(IntermediateDirectory)/src_ble_sm_cmd$(ObjectSuffix) $(IntermediateDirectory)/src_ble_sm_lgcy$(ObjectSuffix) $(IntermediateDirectory)/src_ble_sm_sc$(ObjectSuffix) $(IntermediateDirectory)/src_ble_store$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_store_util$(ObjectSuffix) $(IntermediateDirectory)/src_ble_uuid$(ObjectSuffix) $(IntermediateDirectory)/src_endian$(ObjectSuffix) $(IntermediateDirectory)/src_mem$(ObjectSuffix) $(IntermediateDirectory)/src_nimble_port$(ObjectSuffix) $(IntermediateDirectory)/src_npl_os_freertos$(ObjectSuffix) $(IntermediateDirectory)/src_os_mbuf$(ObjectSuffix) $(IntermediateDirectory)/src_os_mempool$(ObjectSuffix) $(IntermediateDirectory)/src_os_msys_init$(ObjectSuffix) $(IntermediateDirectory)/src_tls_nimble$(ObjectSuffix) \
	$(IntermediateDirectory)/pxp_lv_draw_pxp_blend$(ObjectSuffix) $(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp$(ObjectSuffix) $(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp_osa$(ObjectSuffix) $(IntermediateDirectory)/vglite_lv_draw_vglite_arc$(ObjectSuffix) $(IntermediateDirectory)/vglite_lv_draw_vglite_blend$(ObjectSuffix) $(IntermediateDirectory)/vglite_lv_draw_vglite_rect$(ObjectSuffix) $(IntermediateDirectory)/vglite_lv_gpu_nxp_vglite$(ObjectSuffix) $(IntermediateDirectory)/flex_lv_flex$(ObjectSuffix) $(IntermediateDirectory)/grid_lv_grid$(ObjectSuffix) $(IntermediateDirectory)/bmp_lv_bmp$(ObjectSuffix) \
	$(IntermediateDirectory)/ffmpeg_lv_ffmpeg$(ObjectSuffix) $(IntermediateDirectory)/freetype_lv_freetype$(ObjectSuffix) $(IntermediateDirectory)/fsdrv_lv_fs_fatfs$(ObjectSuffix) $(IntermediateDirectory)/fsdrv_lv_fs_posix$(ObjectSuffix) $(IntermediateDirectory)/fsdrv_lv_fs_stdio$(ObjectSuffix) $(IntermediateDirectory)/fsdrv_lv_fs_win32$(ObjectSuffix) $(IntermediateDirectory)/gif_gifdec$(ObjectSuffix) $(IntermediateDirectory)/gif_lv_gif$(ObjectSuffix) $(IntermediateDirectory)/png_lodepng$(ObjectSuffix) $(IntermediateDirectory)/png_lv_png$(ObjectSuffix) \
	$(IntermediateDirectory)/qrcode_lv_qrcode$(ObjectSuffix) $(IntermediateDirectory)/qrcode_qrcodegen$(ObjectSuffix) $(IntermediateDirectory)/rlottie_lv_rlottie$(ObjectSuffix) $(IntermediateDirectory)/sjpg_lv_sjpg$(ObjectSuffix) $(IntermediateDirectory)/sjpg_tjpgd$(ObjectSuffix) $(IntermediateDirectory)/fragment_lv_fragment$(ObjectSuffix) $(IntermediateDirectory)/fragment_lv_fragment_manager$(ObjectSuffix) $(IntermediateDirectory)/gridnav_lv_gridnav$(ObjectSuffix) $(IntermediateDirectory)/ime_lv_ime_pinyin$(ObjectSuffix) $(IntermediateDirectory)/imgfont_lv_imgfont$(ObjectSuffix) \
	

Objects16=$(IntermediateDirectory)/monkey_lv_monkey$(ObjectSuffix) $(IntermediateDirectory)/msg_lv_msg$(ObjectSuffix) $(IntermediateDirectory)/snapshot_lv_snapshot$(ObjectSuffix) $(IntermediateDirectory)/basic_lv_theme_basic$(ObjectSuffix) $(IntermediateDirectory)/default_lv_theme_default$(ObjectSuffix) $(IntermediateDirectory)/mono_lv_theme_mono$(ObjectSuffix) $(IntermediateDirectory)/animimg_lv_animimg$(ObjectSuffix) $(IntermediateDirectory)/calendar_lv_calendar$(ObjectSuffix) $(IntermediateDirectory)/calendar_lv_calendar_header_arrow$(ObjectSuffix) $(IntermediateDirectory)/calendar_lv_calendar_header_dropdown$(ObjectSuffix) \
	$(IntermediateDirectory)/chart_lv_chart$(ObjectSuffix) $(IntermediateDirectory)/colorwheel_lv_colorwheel$(ObjectSuffix) $(IntermediateDirectory)/imgbtn_lv_imgbtn$(ObjectSuffix) $(IntermediateDirectory)/keyboard_lv_keyboard$(ObjectSuffix) $(IntermediateDirectory)/led_lv_led$(ObjectSuffix) $(IntermediateDirectory)/list_lv_list$(ObjectSuffix) $(IntermediateDirectory)/menu_lv_menu$(ObjectSuffix) $(IntermediateDirectory)/meter_lv_meter$(ObjectSuffix) $(IntermediateDirectory)/msgbox_lv_msgbox$(ObjectSuffix) $(IntermediateDirectory)/span_lv_span$(ObjectSuffix) \
	$(IntermediateDirectory)/spinbox_lv_spinbox$(ObjectSuffix) $(IntermediateDirectory)/spinner_lv_spinner$(ObjectSuffix) $(IntermediateDirectory)/tabview_lv_tabview$(ObjectSuffix) $(IntermediateDirectory)/tileview_lv_tileview$(ObjectSuffix) $(IntermediateDirectory)/win_lv_win$(ObjectSuffix) 

Objects17=$(IntermediateDirectory)/src_access$(ObjectSuffix) $(IntermediateDirectory)/src_adv$(ObjectSuffix) $(IntermediateDirectory)/src_beacon$(ObjectSuffix) $(IntermediateDirectory)/src_cfg_cli$(ObjectSuffix) $(IntermediateDirectory)/src_cfg_srv$(ObjectSuffix) \
	$(IntermediateDirectory)/src_crypto$(ObjectSuffix) $(IntermediateDirectory)/src_friend$(ObjectSuffix) $(IntermediateDirectory)/src_glue$(ObjectSuffix) $(IntermediateDirectory)/src_health_cli$(ObjectSuffix) $(IntermediateDirectory)/src_health_srv$(ObjectSuffix) $(IntermediateDirectory)/src_light_model$(ObjectSuffix) $(IntermediateDirectory)/src_lpn$(ObjectSuffix) $(IntermediateDirectory)/src_mesh$(ObjectSuffix) $(IntermediateDirectory)/src_model_cli$(ObjectSuffix) $(IntermediateDirectory)/src_model_srv$(ObjectSuffix) \
	$(IntermediateDirectory)/src_net$(ObjectSuffix) $(IntermediateDirectory)/src_nodes$(ObjectSuffix) $(IntermediateDirectory)/src_prov$(ObjectSuffix) $(IntermediateDirectory)/src_proxy$(ObjectSuffix) $(IntermediateDirectory)/src_settings$(ObjectSuffix) $(IntermediateDirectory)/src_shell$(ObjectSuffix) $(IntermediateDirectory)/src_testing$(ObjectSuffix) $(IntermediateDirectory)/src_transport$(ObjectSuffix) $(IntermediateDirectory)/src_wm_ble_mesh_store$(ObjectSuffix) $(IntermediateDirectory)/src_addr$(ObjectSuffix) \
	$(IntermediateDirectory)/src_ble_hci_uart$(ObjectSuffix) $(IntermediateDirectory)/src_ble_svc_gap$(ObjectSuffix) $(IntermediateDirectory)/src_ble_svc_gatt$(ObjectSuffix) $(IntermediateDirectory)/src_ble_store_config$(ObjectSuffix) 

Objects18=$(IntermediateDirectory)/src_ble_store_nvram$(ObjectSuffix) $(IntermediateDirectory)/src_wm_bt_storage$(ObjectSuffix) $(IntermediateDirectory)/src_ble_store_ram$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) $(Objects2) $(Objects3) $(Objects4) $(Objects5) $(Objects6) $(Objects7) $(Objects8) $(Objects9) $(Objects10) $(Objects11) $(Objects12) $(Objects13) $(Objects14) $(Objects15) $(Objects16) $(Objects17) $(Objects18) 

##
## Main Build Targets 
##
.PHONY: all
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile):  $(Objects) Always_Link 
	$(LinkerName) $(OutputSwitch) $(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) $(LinkerNameoption) $(LinkOtherFlagsOption)  -Wl,--ckmap=$(ProjectPath)/Lst/$(OutputFile).map  @$(ObjectsFileList)  $(LinkOptions) $(LibPath) $(Libs)
	@mv $(ProjectPath)/Lst/$(OutputFile).map $(ProjectPath)/Lst/$(OutputFile).temp && $(READELF) $(ElfInfoSwitch) $(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix) > $(ProjectPath)/Lst/$(OutputFile).map && echo ====================================================================== >> $(ProjectPath)/Lst/$(OutputFile).map && cat $(ProjectPath)/Lst/$(OutputFile).temp >> $(ProjectPath)/Lst/$(OutputFile).map && rm -rf $(ProjectPath)/Lst/$(OutputFile).temp
	$(OBJDUMP) $(ObjdumpSwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  > $(ProjectPath)/Lst/$(OutputFile)$(DisassemSuffix) 
	@echo size of target:
	@$(SIZE) $(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@echo -n checksum value of target:  
	@$(CHECKSUM) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@$(ProjectName).modify.bat $(IntermediateDirectory) $(OutputFile)$(ExeSuffix) 

Always_Link:


##
## Objects
##
$(IntermediateDirectory)/demo_wm_7816_demo$(ObjectSuffix): ../../../../../../../demo/wm_7816_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_7816_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_7816_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_7816_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_7816_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_7816_demo$(PreprocessSuffix): ../../../../../../../demo/wm_7816_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_7816_demo$(PreprocessSuffix) ../../../../../../../demo/wm_7816_demo.c

$(IntermediateDirectory)/demo_wm_adc_demo$(ObjectSuffix): ../../../../../../../demo/wm_adc_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_adc_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_adc_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_adc_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_adc_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_adc_demo$(PreprocessSuffix): ../../../../../../../demo/wm_adc_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_adc_demo$(PreprocessSuffix) ../../../../../../../demo/wm_adc_demo.c

$(IntermediateDirectory)/demo_wm_apsta_demo$(ObjectSuffix): ../../../../../../../demo/wm_apsta_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_apsta_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_apsta_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_apsta_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_apsta_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_apsta_demo$(PreprocessSuffix): ../../../../../../../demo/wm_apsta_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_apsta_demo$(PreprocessSuffix) ../../../../../../../demo/wm_apsta_demo.c

$(IntermediateDirectory)/demo_wm_connect_net_demo$(ObjectSuffix): ../../../../../../../demo/wm_connect_net_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_connect_net_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_connect_net_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_connect_net_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_connect_net_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_connect_net_demo$(PreprocessSuffix): ../../../../../../../demo/wm_connect_net_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_connect_net_demo$(PreprocessSuffix) ../../../../../../../demo/wm_connect_net_demo.c

$(IntermediateDirectory)/demo_wm_crypt_demo$(ObjectSuffix): ../../../../../../../demo/wm_crypt_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_crypt_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_crypt_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_crypt_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_crypt_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_crypt_demo$(PreprocessSuffix): ../../../../../../../demo/wm_crypt_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_crypt_demo$(PreprocessSuffix) ../../../../../../../demo/wm_crypt_demo.c

$(IntermediateDirectory)/demo_wm_crypt_hard_demo$(ObjectSuffix): ../../../../../../../demo/wm_crypt_hard_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_crypt_hard_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_crypt_hard_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_crypt_hard_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_crypt_hard_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_crypt_hard_demo$(PreprocessSuffix): ../../../../../../../demo/wm_crypt_hard_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_crypt_hard_demo$(PreprocessSuffix) ../../../../../../../demo/wm_crypt_hard_demo.c

$(IntermediateDirectory)/demo_wm_flash_demo$(ObjectSuffix): ../../../../../../../demo/wm_flash_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_flash_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_flash_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_flash_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_flash_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_flash_demo$(PreprocessSuffix): ../../../../../../../demo/wm_flash_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_flash_demo$(PreprocessSuffix) ../../../../../../../demo/wm_flash_demo.c

$(IntermediateDirectory)/demo_wm_gpio_demo$(ObjectSuffix): ../../../../../../../demo/wm_gpio_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_gpio_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_gpio_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_gpio_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_gpio_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_gpio_demo$(PreprocessSuffix): ../../../../../../../demo/wm_gpio_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_gpio_demo$(PreprocessSuffix) ../../../../../../../demo/wm_gpio_demo.c

$(IntermediateDirectory)/demo_wm_http_demo$(ObjectSuffix): ../../../../../../../demo/wm_http_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_http_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_http_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_http_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_http_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_http_demo$(PreprocessSuffix): ../../../../../../../demo/wm_http_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_http_demo$(PreprocessSuffix) ../../../../../../../demo/wm_http_demo.c

$(IntermediateDirectory)/demo_wm_https_demo$(ObjectSuffix): ../../../../../../../demo/wm_https_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_https_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_https_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_https_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_https_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_https_demo$(PreprocessSuffix): ../../../../../../../demo/wm_https_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_https_demo$(PreprocessSuffix) ../../../../../../../demo/wm_https_demo.c

$(IntermediateDirectory)/demo_wm_i2c_demo$(ObjectSuffix): ../../../../../../../demo/wm_i2c_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_i2c_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_i2c_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_i2c_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_i2c_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_i2c_demo$(PreprocessSuffix): ../../../../../../../demo/wm_i2c_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_i2c_demo$(PreprocessSuffix) ../../../../../../../demo/wm_i2c_demo.c

$(IntermediateDirectory)/demo_wm_i2s_demo$(ObjectSuffix): ../../../../../../../demo/wm_i2s_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_i2s_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_i2s_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_i2s_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_i2s_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_i2s_demo$(PreprocessSuffix): ../../../../../../../demo/wm_i2s_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_i2s_demo$(PreprocessSuffix) ../../../../../../../demo/wm_i2s_demo.c

$(IntermediateDirectory)/demo_wm_iperf_auto_demo$(ObjectSuffix): ../../../../../../../demo/wm_iperf_auto_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_iperf_auto_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_iperf_auto_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_iperf_auto_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_iperf_auto_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_iperf_auto_demo$(PreprocessSuffix): ../../../../../../../demo/wm_iperf_auto_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_iperf_auto_demo$(PreprocessSuffix) ../../../../../../../demo/wm_iperf_auto_demo.c

$(IntermediateDirectory)/demo_wm_master_spi_demo$(ObjectSuffix): ../../../../../../../demo/wm_master_spi_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_master_spi_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_master_spi_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_master_spi_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_master_spi_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_master_spi_demo$(PreprocessSuffix): ../../../../../../../demo/wm_master_spi_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_master_spi_demo$(PreprocessSuffix) ../../../../../../../demo/wm_master_spi_demo.c

$(IntermediateDirectory)/demo_wm_mbedtls_demo$(ObjectSuffix): ../../../../../../../demo/wm_mbedtls_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_mbedtls_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_mbedtls_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_mbedtls_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_mbedtls_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_mbedtls_demo$(PreprocessSuffix): ../../../../../../../demo/wm_mbedtls_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_mbedtls_demo$(PreprocessSuffix) ../../../../../../../demo/wm_mbedtls_demo.c

$(IntermediateDirectory)/demo_wm_mcast_demo$(ObjectSuffix): ../../../../../../../demo/wm_mcast_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_mcast_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_mcast_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_mcast_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_mcast_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_mcast_demo$(PreprocessSuffix): ../../../../../../../demo/wm_mcast_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_mcast_demo$(PreprocessSuffix) ../../../../../../../demo/wm_mcast_demo.c

$(IntermediateDirectory)/demo_wm_mqtt_demo$(ObjectSuffix): ../../../../../../../demo/wm_mqtt_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_mqtt_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_mqtt_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_mqtt_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_mqtt_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_mqtt_demo$(PreprocessSuffix): ../../../../../../../demo/wm_mqtt_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_mqtt_demo$(PreprocessSuffix) ../../../../../../../demo/wm_mqtt_demo.c

$(IntermediateDirectory)/demo_wm_ntp_demo$(ObjectSuffix): ../../../../../../../demo/wm_ntp_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_ntp_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_ntp_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_ntp_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_ntp_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_ntp_demo$(PreprocessSuffix): ../../../../../../../demo/wm_ntp_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_ntp_demo$(PreprocessSuffix) ../../../../../../../demo/wm_ntp_demo.c

$(IntermediateDirectory)/demo_wm_pmu_demo$(ObjectSuffix): ../../../../../../../demo/wm_pmu_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_pmu_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_pmu_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_pmu_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_pmu_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_pmu_demo$(PreprocessSuffix): ../../../../../../../demo/wm_pmu_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_pmu_demo$(PreprocessSuffix) ../../../../../../../demo/wm_pmu_demo.c

$(IntermediateDirectory)/demo_wm_pwm_demo$(ObjectSuffix): ../../../../../../../demo/wm_pwm_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_pwm_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_pwm_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_pwm_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_pwm_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_pwm_demo$(PreprocessSuffix): ../../../../../../../demo/wm_pwm_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_pwm_demo$(PreprocessSuffix) ../../../../../../../demo/wm_pwm_demo.c

$(IntermediateDirectory)/demo_wm_rsa_demo$(ObjectSuffix): ../../../../../../../demo/wm_rsa_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_rsa_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_rsa_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_rsa_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_rsa_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_rsa_demo$(PreprocessSuffix): ../../../../../../../demo/wm_rsa_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_rsa_demo$(PreprocessSuffix) ../../../../../../../demo/wm_rsa_demo.c

$(IntermediateDirectory)/demo_wm_rtc_demo$(ObjectSuffix): ../../../../../../../demo/wm_rtc_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_rtc_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_rtc_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_rtc_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_rtc_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_rtc_demo$(PreprocessSuffix): ../../../../../../../demo/wm_rtc_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_rtc_demo$(PreprocessSuffix) ../../../../../../../demo/wm_rtc_demo.c

$(IntermediateDirectory)/demo_wm_scan_demo$(ObjectSuffix): ../../../../../../../demo/wm_scan_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_scan_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_scan_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_scan_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_scan_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_scan_demo$(PreprocessSuffix): ../../../../../../../demo/wm_scan_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_scan_demo$(PreprocessSuffix) ../../../../../../../demo/wm_scan_demo.c

$(IntermediateDirectory)/demo_wm_sck_client_demo$(ObjectSuffix): ../../../../../../../demo/wm_sck_client_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_sck_client_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_sck_client_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_sck_client_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_sck_client_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_sck_client_demo$(PreprocessSuffix): ../../../../../../../demo/wm_sck_client_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_sck_client_demo$(PreprocessSuffix) ../../../../../../../demo/wm_sck_client_demo.c

$(IntermediateDirectory)/demo_wm_sck_server_demo$(ObjectSuffix): ../../../../../../../demo/wm_sck_server_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_sck_server_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_sck_server_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_sck_server_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_sck_server_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_sck_server_demo$(PreprocessSuffix): ../../../../../../../demo/wm_sck_server_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_sck_server_demo$(PreprocessSuffix) ../../../../../../../demo/wm_sck_server_demo.c

$(IntermediateDirectory)/demo_wm_socket_client_demo$(ObjectSuffix): ../../../../../../../demo/wm_socket_client_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_socket_client_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_socket_client_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_socket_client_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_socket_client_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_socket_client_demo$(PreprocessSuffix): ../../../../../../../demo/wm_socket_client_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_socket_client_demo$(PreprocessSuffix) ../../../../../../../demo/wm_socket_client_demo.c

$(IntermediateDirectory)/demo_wm_socket_server_demo$(ObjectSuffix): ../../../../../../../demo/wm_socket_server_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_socket_server_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_socket_server_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_socket_server_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_socket_server_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_socket_server_demo$(PreprocessSuffix): ../../../../../../../demo/wm_socket_server_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_socket_server_demo$(PreprocessSuffix) ../../../../../../../demo/wm_socket_server_demo.c

$(IntermediateDirectory)/demo_wm_softap_demo$(ObjectSuffix): ../../../../../../../demo/wm_softap_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_softap_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_softap_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_softap_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_softap_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_softap_demo$(PreprocessSuffix): ../../../../../../../demo/wm_softap_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_softap_demo$(PreprocessSuffix) ../../../../../../../demo/wm_softap_demo.c

$(IntermediateDirectory)/demo_wm_ssl_server_demo$(ObjectSuffix): ../../../../../../../demo/wm_ssl_server_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_ssl_server_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_ssl_server_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_ssl_server_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_ssl_server_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_ssl_server_demo$(PreprocessSuffix): ../../../../../../../demo/wm_ssl_server_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_ssl_server_demo$(PreprocessSuffix) ../../../../../../../demo/wm_ssl_server_demo.c

$(IntermediateDirectory)/demo_wm_timer_demo$(ObjectSuffix): ../../../../../../../demo/wm_timer_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_timer_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_timer_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_timer_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_timer_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_timer_demo$(PreprocessSuffix): ../../../../../../../demo/wm_timer_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_timer_demo$(PreprocessSuffix) ../../../../../../../demo/wm_timer_demo.c

$(IntermediateDirectory)/demo_wm_uart_demo$(ObjectSuffix): ../../../../../../../demo/wm_uart_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_uart_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_uart_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_uart_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_uart_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_uart_demo$(PreprocessSuffix): ../../../../../../../demo/wm_uart_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_uart_demo$(PreprocessSuffix) ../../../../../../../demo/wm_uart_demo.c

$(IntermediateDirectory)/demo_wm_udp_demo$(ObjectSuffix): ../../../../../../../demo/wm_udp_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_udp_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_udp_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_udp_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_udp_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_udp_demo$(PreprocessSuffix): ../../../../../../../demo/wm_udp_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_udp_demo$(PreprocessSuffix) ../../../../../../../demo/wm_udp_demo.c

$(IntermediateDirectory)/demo_wm_websockets_demo$(ObjectSuffix): ../../../../../../../demo/wm_websockets_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_websockets_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_websockets_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_websockets_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_websockets_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_websockets_demo$(PreprocessSuffix): ../../../../../../../demo/wm_websockets_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_websockets_demo$(PreprocessSuffix) ../../../../../../../demo/wm_websockets_demo.c

$(IntermediateDirectory)/demo_wm_wps_demo$(ObjectSuffix): ../../../../../../../demo/wm_wps_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_wps_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_wps_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_wps_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_wps_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_wps_demo$(PreprocessSuffix): ../../../../../../../demo/wm_wps_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_wps_demo$(PreprocessSuffix) ../../../../../../../demo/wm_wps_demo.c

$(IntermediateDirectory)/demo_wm_dsp_demo$(ObjectSuffix): ../../../../../../../demo/wm_dsp_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_dsp_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_dsp_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_dsp_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_dsp_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_dsp_demo$(PreprocessSuffix): ../../../../../../../demo/wm_dsp_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_dsp_demo$(PreprocessSuffix) ../../../../../../../demo/wm_dsp_demo.c

$(IntermediateDirectory)/demo_wm_fatfs_demo$(ObjectSuffix): ../../../../../../../demo/wm_fatfs_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_fatfs_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_fatfs_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_fatfs_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_fatfs_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_fatfs_demo$(PreprocessSuffix): ../../../../../../../demo/wm_fatfs_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_fatfs_demo$(PreprocessSuffix) ../../../../../../../demo/wm_fatfs_demo.c

$(IntermediateDirectory)/demo_wm_sdio_host_demo$(ObjectSuffix): ../../../../../../../demo/wm_sdio_host_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_sdio_host_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_sdio_host_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_sdio_host_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_sdio_host_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_sdio_host_demo$(PreprocessSuffix): ../../../../../../../demo/wm_sdio_host_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_sdio_host_demo$(PreprocessSuffix) ../../../../../../../demo/wm_sdio_host_demo.c

$(IntermediateDirectory)/demo_wm_slave_spi_demo$(ObjectSuffix): ../../../../../../../demo/wm_slave_spi_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_slave_spi_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_slave_spi_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_slave_spi_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_slave_spi_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_slave_spi_demo$(PreprocessSuffix): ../../../../../../../demo/wm_slave_spi_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_slave_spi_demo$(PreprocessSuffix) ../../../../../../../demo/wm_slave_spi_demo.c

$(IntermediateDirectory)/demo_wm_touchsensor_demo$(ObjectSuffix): ../../../../../../../demo/wm_touchsensor_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_touchsensor_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_touchsensor_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_touchsensor_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_touchsensor_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_touchsensor_demo$(PreprocessSuffix): ../../../../../../../demo/wm_touchsensor_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_touchsensor_demo$(PreprocessSuffix) ../../../../../../../demo/wm_touchsensor_demo.c

$(IntermediateDirectory)/demo_wm_avoid_copy_demo$(ObjectSuffix): ../../../../../../../demo/wm_avoid_copy_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_avoid_copy_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_avoid_copy_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_avoid_copy_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_avoid_copy_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_avoid_copy_demo$(PreprocessSuffix): ../../../../../../../demo/wm_avoid_copy_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_avoid_copy_demo$(PreprocessSuffix) ../../../../../../../demo/wm_avoid_copy_demo.c

$(IntermediateDirectory)/demo_wm_lcd_demo$(ObjectSuffix): ../../../../../../../demo/wm_lcd_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/wm_lcd_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/demo_wm_lcd_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/demo_wm_lcd_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/demo_wm_lcd_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/demo_wm_lcd_demo$(PreprocessSuffix): ../../../../../../../demo/wm_lcd_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/demo_wm_lcd_demo$(PreprocessSuffix) ../../../../../../../demo/wm_lcd_demo.c

$(IntermediateDirectory)/app_lvgl_task$(ObjectSuffix): ../../../../../../../app/lvgl_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/lvgl_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/app_lvgl_task$(ObjectSuffix) -MF$(IntermediateDirectory)/app_lvgl_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/app_lvgl_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/app_lvgl_task$(PreprocessSuffix): ../../../../../../../app/lvgl_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/app_lvgl_task$(PreprocessSuffix) ../../../../../../../app/lvgl_task.c

$(IntermediateDirectory)/app_main$(ObjectSuffix): ../../../../../../../app/main.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/app_main$(ObjectSuffix) -MF$(IntermediateDirectory)/app_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/app_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/app_main$(PreprocessSuffix): ../../../../../../../app/main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/app_main$(PreprocessSuffix) ../../../../../../../app/main.c

$(IntermediateDirectory)/sys_tls_sys$(ObjectSuffix): ../../../../../../../platform/sys/tls_sys.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/sys/tls_sys.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sys_tls_sys$(ObjectSuffix) -MF$(IntermediateDirectory)/sys_tls_sys$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sys_tls_sys$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sys_tls_sys$(PreprocessSuffix): ../../../../../../../platform/sys/tls_sys.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sys_tls_sys$(PreprocessSuffix) ../../../../../../../platform/sys/tls_sys.c

$(IntermediateDirectory)/sys_wm_main$(ObjectSuffix): ../../../../../../../platform/sys/wm_main.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/sys/wm_main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sys_wm_main$(ObjectSuffix) -MF$(IntermediateDirectory)/sys_wm_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sys_wm_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sys_wm_main$(PreprocessSuffix): ../../../../../../../platform/sys/wm_main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sys_wm_main$(PreprocessSuffix) ../../../../../../../platform/sys/wm_main.c

$(IntermediateDirectory)/console_wm_demo_console_task$(ObjectSuffix): ../../../../../../../demo/console/wm_demo_console_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../demo/console/wm_demo_console_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/console_wm_demo_console_task$(ObjectSuffix) -MF$(IntermediateDirectory)/console_wm_demo_console_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/console_wm_demo_console_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/console_wm_demo_console_task$(PreprocessSuffix): ../../../../../../../demo/console/wm_demo_console_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/console_wm_demo_console_task$(PreprocessSuffix) ../../../../../../../demo/console/wm_demo_console_task.c

$(IntermediateDirectory)/lvgl_port_lv_port_disp$(ObjectSuffix): ../../../../../../../components/lvgl_port/lv_port_disp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_port/lv_port_disp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lvgl_port_lv_port_disp$(ObjectSuffix) -MF$(IntermediateDirectory)/lvgl_port_lv_port_disp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lvgl_port_lv_port_disp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lvgl_port_lv_port_disp$(PreprocessSuffix): ../../../../../../../components/lvgl_port/lv_port_disp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lvgl_port_lv_port_disp$(PreprocessSuffix) ../../../../../../../components/lvgl_port/lv_port_disp.c

$(IntermediateDirectory)/lvgl_port_lv_port_indev$(ObjectSuffix): ../../../../../../../components/lvgl_port/lv_port_indev.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_port/lv_port_indev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lvgl_port_lv_port_indev$(ObjectSuffix) -MF$(IntermediateDirectory)/lvgl_port_lv_port_indev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lvgl_port_lv_port_indev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lvgl_port_lv_port_indev$(PreprocessSuffix): ../../../../../../../components/lvgl_port/lv_port_indev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lvgl_port_lv_port_indev$(PreprocessSuffix) ../../../../../../../components/lvgl_port/lv_port_indev.c

$(IntermediateDirectory)/lvgl_port_lv_port_tick$(ObjectSuffix): ../../../../../../../components/lvgl_port/lv_port_tick.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_port/lv_port_tick.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lvgl_port_lv_port_tick$(ObjectSuffix) -MF$(IntermediateDirectory)/lvgl_port_lv_port_tick$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lvgl_port_lv_port_tick$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lvgl_port_lv_port_tick$(PreprocessSuffix): ../../../../../../../components/lvgl_port/lv_port_tick.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lvgl_port_lv_port_tick$(PreprocessSuffix) ../../../../../../../components/lvgl_port/lv_port_tick.c

$(IntermediateDirectory)/button_multi_button$(ObjectSuffix): ../../../../../../../app/button/multi_button.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/button/multi_button.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/button_multi_button$(ObjectSuffix) -MF$(IntermediateDirectory)/button_multi_button$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/button_multi_button$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/button_multi_button$(PreprocessSuffix): ../../../../../../../app/button/multi_button.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/button_multi_button$(PreprocessSuffix) ../../../../../../../app/button/multi_button.c

$(IntermediateDirectory)/xmodem_xmodem$(ObjectSuffix): ../../../../../../../app/xmodem/xmodem.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/xmodem/xmodem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/xmodem_xmodem$(ObjectSuffix) -MF$(IntermediateDirectory)/xmodem_xmodem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/xmodem_xmodem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/xmodem_xmodem$(PreprocessSuffix): ../../../../../../../app/xmodem/xmodem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/xmodem_xmodem$(PreprocessSuffix) ../../../../../../../app/xmodem/xmodem.c

$(IntermediateDirectory)/rtos_wm_osal_rtos$(ObjectSuffix): ../../../../../../../src/os/rtos/wm_osal_rtos.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/wm_osal_rtos.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rtos_wm_osal_rtos$(ObjectSuffix) -MF$(IntermediateDirectory)/rtos_wm_osal_rtos$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rtos_wm_osal_rtos$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rtos_wm_osal_rtos$(PreprocessSuffix): ../../../../../../../src/os/rtos/wm_osal_rtos.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtos_wm_osal_rtos$(PreprocessSuffix) ../../../../../../../src/os/rtos/wm_osal_rtos.c

$(IntermediateDirectory)/cJSON_cJSON$(ObjectSuffix): ../../../../../../../src/app/cJSON/cJSON.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/cJSON/cJSON.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/cJSON_cJSON$(ObjectSuffix) -MF$(IntermediateDirectory)/cJSON_cJSON$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/cJSON_cJSON$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/cJSON_cJSON$(PreprocessSuffix): ../../../../../../../src/app/cJSON/cJSON.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/cJSON_cJSON$(PreprocessSuffix) ../../../../../../../src/app/cJSON/cJSON.c

$(IntermediateDirectory)/dhcpserver_dhcp_server$(ObjectSuffix): ../../../../../../../src/app/dhcpserver/dhcp_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/dhcpserver/dhcp_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/dhcpserver_dhcp_server$(ObjectSuffix) -MF$(IntermediateDirectory)/dhcpserver_dhcp_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/dhcpserver_dhcp_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/dhcpserver_dhcp_server$(PreprocessSuffix): ../../../../../../../src/app/dhcpserver/dhcp_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/dhcpserver_dhcp_server$(PreprocessSuffix) ../../../../../../../src/app/dhcpserver/dhcp_server.c

$(IntermediateDirectory)/dnsserver_dns_server$(ObjectSuffix): ../../../../../../../src/app/dnsserver/dns_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/dnsserver/dns_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/dnsserver_dns_server$(ObjectSuffix) -MF$(IntermediateDirectory)/dnsserver_dns_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/dnsserver_dns_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/dnsserver_dns_server$(PreprocessSuffix): ../../../../../../../src/app/dnsserver/dns_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/dnsserver_dns_server$(PreprocessSuffix) ../../../../../../../src/app/dnsserver/dns_server.c

$(IntermediateDirectory)/httpclient_HTTPClient$(ObjectSuffix): ../../../../../../../src/app/httpclient/HTTPClient.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/httpclient/HTTPClient.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/httpclient_HTTPClient$(ObjectSuffix) -MF$(IntermediateDirectory)/httpclient_HTTPClient$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/httpclient_HTTPClient$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/httpclient_HTTPClient$(PreprocessSuffix): ../../../../../../../src/app/httpclient/HTTPClient.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/httpclient_HTTPClient$(PreprocessSuffix) ../../../../../../../src/app/httpclient/HTTPClient.c

$(IntermediateDirectory)/httpclient_HTTPClientAuth$(ObjectSuffix): ../../../../../../../src/app/httpclient/HTTPClientAuth.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/httpclient/HTTPClientAuth.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/httpclient_HTTPClientAuth$(ObjectSuffix) -MF$(IntermediateDirectory)/httpclient_HTTPClientAuth$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/httpclient_HTTPClientAuth$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/httpclient_HTTPClientAuth$(PreprocessSuffix): ../../../../../../../src/app/httpclient/HTTPClientAuth.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/httpclient_HTTPClientAuth$(PreprocessSuffix) ../../../../../../../src/app/httpclient/HTTPClientAuth.c

$(IntermediateDirectory)/httpclient_HTTPClientString$(ObjectSuffix): ../../../../../../../src/app/httpclient/HTTPClientString.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/httpclient/HTTPClientString.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/httpclient_HTTPClientString$(ObjectSuffix) -MF$(IntermediateDirectory)/httpclient_HTTPClientString$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/httpclient_HTTPClientString$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/httpclient_HTTPClientString$(PreprocessSuffix): ../../../../../../../src/app/httpclient/HTTPClientString.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/httpclient_HTTPClientString$(PreprocessSuffix) ../../../../../../../src/app/httpclient/HTTPClientString.c

$(IntermediateDirectory)/httpclient_HTTPClientWrapper$(ObjectSuffix): ../../../../../../../src/app/httpclient/HTTPClientWrapper.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/httpclient/HTTPClientWrapper.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/httpclient_HTTPClientWrapper$(ObjectSuffix) -MF$(IntermediateDirectory)/httpclient_HTTPClientWrapper$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/httpclient_HTTPClientWrapper$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/httpclient_HTTPClientWrapper$(PreprocessSuffix): ../../../../../../../src/app/httpclient/HTTPClientWrapper.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/httpclient_HTTPClientWrapper$(PreprocessSuffix) ../../../../../../../src/app/httpclient/HTTPClientWrapper.c

$(IntermediateDirectory)/httpclient_wm_httpclient_task$(ObjectSuffix): ../../../../../../../src/app/httpclient/wm_httpclient_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/httpclient/wm_httpclient_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/httpclient_wm_httpclient_task$(ObjectSuffix) -MF$(IntermediateDirectory)/httpclient_wm_httpclient_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/httpclient_wm_httpclient_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/httpclient_wm_httpclient_task$(PreprocessSuffix): ../../../../../../../src/app/httpclient/wm_httpclient_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/httpclient_wm_httpclient_task$(PreprocessSuffix) ../../../../../../../src/app/httpclient/wm_httpclient_task.c

$(IntermediateDirectory)/iperf_iperf_api$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_api.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_api.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_api$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_api$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_api$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_api$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_api.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_api$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_api.c

$(IntermediateDirectory)/iperf_iperf_client_api$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_client_api.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_client_api.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_client_api$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_client_api$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_client_api$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_client_api$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_client_api.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_client_api$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_client_api.c

$(IntermediateDirectory)/iperf_iperf_error$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_error.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_error.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_error$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_error$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_error$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_error$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_error.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_error$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_error.c

$(IntermediateDirectory)/iperf_iperf_locale$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_locale.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_locale.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_locale$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_locale$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_locale$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_locale$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_locale.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_locale$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_locale.c

$(IntermediateDirectory)/iperf_iperf_main$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_main.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_main$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_main$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_main$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_main.c

$(IntermediateDirectory)/iperf_iperf_net$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_net.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_net.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_net$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_net$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_net$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_net$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_net.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_net$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_net.c

$(IntermediateDirectory)/iperf_iperf_server_api$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_server_api.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_server_api.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_server_api$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_server_api$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_server_api$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_server_api$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_server_api.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_server_api$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_server_api.c

$(IntermediateDirectory)/iperf_iperf_tcp$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_tcp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_tcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_tcp$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_tcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_tcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_tcp$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_tcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_tcp$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_tcp.c

$(IntermediateDirectory)/iperf_iperf_timer$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_timer.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_timer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_timer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_timer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_timer$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_timer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_timer$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_timer.c

$(IntermediateDirectory)/iperf_iperf_udp$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_udp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_udp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_udp$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_udp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_udp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_udp$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_udp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_udp$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_udp.c

$(IntermediateDirectory)/iperf_iperf_units$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_units.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_units.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_units$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_units$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_units$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_units$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_units.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_units$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_units.c

$(IntermediateDirectory)/iperf_iperf_util$(ObjectSuffix): ../../../../../../../src/app/iperf/iperf_util.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/iperf_util.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf_util$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf_util$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf_util$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf_util$(PreprocessSuffix): ../../../../../../../src/app/iperf/iperf_util.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf_util$(PreprocessSuffix) ../../../../../../../src/app/iperf/iperf_util.c

$(IntermediateDirectory)/iperf_tcp_info$(ObjectSuffix): ../../../../../../../src/app/iperf/tcp_info.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/tcp_info.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_tcp_info$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_tcp_info$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_tcp_info$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_tcp_info$(PreprocessSuffix): ../../../../../../../src/app/iperf/tcp_info.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_tcp_info$(PreprocessSuffix) ../../../../../../../src/app/iperf/tcp_info.c

$(IntermediateDirectory)/iperf_tcp_window_size$(ObjectSuffix): ../../../../../../../src/app/iperf/tcp_window_size.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/tcp_window_size.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_tcp_window_size$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_tcp_window_size$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_tcp_window_size$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_tcp_window_size$(PreprocessSuffix): ../../../../../../../src/app/iperf/tcp_window_size.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_tcp_window_size$(PreprocessSuffix) ../../../../../../../src/app/iperf/tcp_window_size.c

$(IntermediateDirectory)/iperf_wm_perf$(ObjectSuffix): ../../../../../../../src/app/iperf/wm_perf.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/iperf/wm_perf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_wm_perf$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_wm_perf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_wm_perf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_wm_perf$(PreprocessSuffix): ../../../../../../../src/app/iperf/wm_perf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_wm_perf$(PreprocessSuffix) ../../../../../../../src/app/iperf/wm_perf.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_base64-decode$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/base64-decode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/base64-decode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_base64-decode$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_base64-decode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_base64-decode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_base64-decode$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/base64-decode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_base64-decode$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/base64-decode.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_client-handshake$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client-handshake.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/client-handshake.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_client-handshake$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_client-handshake$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_client-handshake$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_client-handshake$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client-handshake.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_client-handshake$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/client-handshake.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_client-parser$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client-parser.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/client-parser.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_client-parser$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_client-parser$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_client-parser$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_client-parser$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client-parser.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_client-parser$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/client-parser.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_client$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/client.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_client$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_client$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_client$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_client$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/client.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_client$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/client.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_context$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/context.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/context.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_context$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_context$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_context$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_context$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/context.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_context$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/context.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_handshake$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/handshake.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/handshake.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_handshake$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_handshake$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_handshake$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_handshake$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/handshake.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_handshake$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/handshake.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_header$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/header.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/header.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_header$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_header$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_header$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_header$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/header.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_header$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/header.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_libwebsockets$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/libwebsockets.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/libwebsockets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_libwebsockets$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_libwebsockets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_libwebsockets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_libwebsockets$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/libwebsockets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_libwebsockets$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/libwebsockets.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_lws-plat-wm$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/lws-plat-wm.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/lws-plat-wm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_lws-plat-wm$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_lws-plat-wm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_lws-plat-wm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_lws-plat-wm$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/lws-plat-wm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_lws-plat-wm$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/lws-plat-wm.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_output$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/output.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/output.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_output$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_output$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_output$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_output$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/output.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_output$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/output.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_parsers$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/parsers.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/parsers.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_parsers$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_parsers$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_parsers$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_parsers$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/parsers.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_parsers$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/parsers.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_pollfd$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/pollfd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/pollfd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_pollfd$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_pollfd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_pollfd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_pollfd$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/pollfd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_pollfd$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/pollfd.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_service$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/service.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/service.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_service$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_service$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_service$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_service$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/service.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_service$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/service.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl-client$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/ssl-client.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/ssl-client.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl-client$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl-client$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl-client$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_ssl-client$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/ssl-client.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_ssl-client$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/ssl-client.c

$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl$(ObjectSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/ssl.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/libwebsockets-2.1-stable/ssl.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl$(ObjectSuffix) -MF$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libwebsockets-2.1-stable_ssl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libwebsockets-2.1-stable_ssl$(PreprocessSuffix): ../../../../../../../src/app/libwebsockets-2.1-stable/ssl.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libwebsockets-2.1-stable_ssl$(PreprocessSuffix) ../../../../../../../src/app/libwebsockets-2.1-stable/ssl.c

$(IntermediateDirectory)/mqtt_libemqtt$(ObjectSuffix): ../../../../../../../src/app/mqtt/libemqtt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mqtt/libemqtt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/mqtt_libemqtt$(ObjectSuffix) -MF$(IntermediateDirectory)/mqtt_libemqtt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/mqtt_libemqtt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/mqtt_libemqtt$(PreprocessSuffix): ../../../../../../../src/app/mqtt/libemqtt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mqtt_libemqtt$(PreprocessSuffix) ../../../../../../../src/app/mqtt/libemqtt.c

$(IntermediateDirectory)/ntp_ntp_client$(ObjectSuffix): ../../../../../../../src/app/ntp/ntp_client.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/ntp/ntp_client.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ntp_ntp_client$(ObjectSuffix) -MF$(IntermediateDirectory)/ntp_ntp_client$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ntp_ntp_client$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ntp_ntp_client$(PreprocessSuffix): ../../../../../../../src/app/ntp/ntp_client.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ntp_ntp_client$(PreprocessSuffix) ../../../../../../../src/app/ntp/ntp_client.c

$(IntermediateDirectory)/oneshotconfig_wm_oneshot_airkiss$(ObjectSuffix): ../../../../../../../src/app/oneshotconfig/wm_oneshot_airkiss.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/oneshotconfig/wm_oneshot_airkiss.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/oneshotconfig_wm_oneshot_airkiss$(ObjectSuffix) -MF$(IntermediateDirectory)/oneshotconfig_wm_oneshot_airkiss$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/oneshotconfig_wm_oneshot_airkiss$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/oneshotconfig_wm_oneshot_airkiss$(PreprocessSuffix): ../../../../../../../src/app/oneshotconfig/wm_oneshot_airkiss.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/oneshotconfig_wm_oneshot_airkiss$(PreprocessSuffix) ../../../../../../../src/app/oneshotconfig/wm_oneshot_airkiss.c

$(IntermediateDirectory)/oneshotconfig_wm_oneshot_lsd$(ObjectSuffix): ../../../../../../../src/app/oneshotconfig/wm_oneshot_lsd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/oneshotconfig/wm_oneshot_lsd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/oneshotconfig_wm_oneshot_lsd$(ObjectSuffix) -MF$(IntermediateDirectory)/oneshotconfig_wm_oneshot_lsd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/oneshotconfig_wm_oneshot_lsd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/oneshotconfig_wm_oneshot_lsd$(PreprocessSuffix): ../../../../../../../src/app/oneshotconfig/wm_oneshot_lsd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/oneshotconfig_wm_oneshot_lsd$(PreprocessSuffix) ../../../../../../../src/app/oneshotconfig/wm_oneshot_lsd.c

$(IntermediateDirectory)/oneshotconfig_wm_wifi_oneshot$(ObjectSuffix): ../../../../../../../src/app/oneshotconfig/wm_wifi_oneshot.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/oneshotconfig/wm_wifi_oneshot.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/oneshotconfig_wm_wifi_oneshot$(ObjectSuffix) -MF$(IntermediateDirectory)/oneshotconfig_wm_wifi_oneshot$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/oneshotconfig_wm_wifi_oneshot$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/oneshotconfig_wm_wifi_oneshot$(PreprocessSuffix): ../../../../../../../src/app/oneshotconfig/wm_wifi_oneshot.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/oneshotconfig_wm_wifi_oneshot$(PreprocessSuffix) ../../../../../../../src/app/oneshotconfig/wm_wifi_oneshot.c

$(IntermediateDirectory)/ota_wm_http_fwup$(ObjectSuffix): ../../../../../../../src/app/ota/wm_http_fwup.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/ota/wm_http_fwup.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ota_wm_http_fwup$(ObjectSuffix) -MF$(IntermediateDirectory)/ota_wm_http_fwup$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ota_wm_http_fwup$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ota_wm_http_fwup$(PreprocessSuffix): ../../../../../../../src/app/ota/wm_http_fwup.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ota_wm_http_fwup$(PreprocessSuffix) ../../../../../../../src/app/ota/wm_http_fwup.c

$(IntermediateDirectory)/ota_wm_socket_fwup$(ObjectSuffix): ../../../../../../../src/app/ota/wm_socket_fwup.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/ota/wm_socket_fwup.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ota_wm_socket_fwup$(ObjectSuffix) -MF$(IntermediateDirectory)/ota_wm_socket_fwup$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ota_wm_socket_fwup$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ota_wm_socket_fwup$(PreprocessSuffix): ../../../../../../../src/app/ota/wm_socket_fwup.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ota_wm_socket_fwup$(PreprocessSuffix) ../../../../../../../src/app/ota/wm_socket_fwup.c

$(IntermediateDirectory)/ping_ping$(ObjectSuffix): ../../../../../../../src/app/ping/ping.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/ping/ping.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ping_ping$(ObjectSuffix) -MF$(IntermediateDirectory)/ping_ping$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ping_ping$(PreprocessSuffix): ../../../../../../../src/app/ping/ping.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ping_ping$(PreprocessSuffix) ../../../../../../../src/app/ping/ping.c

$(IntermediateDirectory)/sslserver_wm_ssl_server$(ObjectSuffix): ../../../../../../../src/app/sslserver/wm_ssl_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/sslserver/wm_ssl_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sslserver_wm_ssl_server$(ObjectSuffix) -MF$(IntermediateDirectory)/sslserver_wm_ssl_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sslserver_wm_ssl_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sslserver_wm_ssl_server$(PreprocessSuffix): ../../../../../../../src/app/sslserver/wm_ssl_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sslserver_wm_ssl_server$(PreprocessSuffix) ../../../../../../../src/app/sslserver/wm_ssl_server.c

$(IntermediateDirectory)/web_fs$(ObjectSuffix): ../../../../../../../src/app/web/fs.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/web/fs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/web_fs$(ObjectSuffix) -MF$(IntermediateDirectory)/web_fs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/web_fs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/web_fs$(PreprocessSuffix): ../../../../../../../src/app/web/fs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/web_fs$(PreprocessSuffix) ../../../../../../../src/app/web/fs.c

$(IntermediateDirectory)/web_httpd$(ObjectSuffix): ../../../../../../../src/app/web/httpd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/web/httpd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/web_httpd$(ObjectSuffix) -MF$(IntermediateDirectory)/web_httpd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/web_httpd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/web_httpd$(PreprocessSuffix): ../../../../../../../src/app/web/httpd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/web_httpd$(PreprocessSuffix) ../../../../../../../src/app/web/httpd.c

$(IntermediateDirectory)/web_web$(ObjectSuffix): ../../../../../../../src/app/web/web.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/web/web.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/web_web$(ObjectSuffix) -MF$(IntermediateDirectory)/web_web$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/web_web$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/web_web$(PreprocessSuffix): ../../../../../../../src/app/web/web.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/web_web$(PreprocessSuffix) ../../../../../../../src/app/web/web.c

$(IntermediateDirectory)/wm_atcmd_wm_cmdp$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_cmdp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_cmdp$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_cmdp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_cmdp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_cmdp$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_cmdp$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_cmdp.c

$(IntermediateDirectory)/wm_atcmd_wm_cmdp_hostif$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp_hostif.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_cmdp_hostif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_cmdp_hostif$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_cmdp_hostif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_cmdp_hostif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_cmdp_hostif$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp_hostif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_cmdp_hostif$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_cmdp_hostif.c

$(IntermediateDirectory)/wm_atcmd_wm_cmdp_ri$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp_ri.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_cmdp_ri.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_cmdp_ri$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_cmdp_ri$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_cmdp_ri$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_cmdp_ri$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_cmdp_ri.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_cmdp_ri$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_cmdp_ri.c

$(IntermediateDirectory)/wm_atcmd_wm_rmms$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_rmms.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_rmms.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_rmms$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_rmms$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_rmms$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_rmms$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_rmms.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_rmms$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_rmms.c

$(IntermediateDirectory)/wm_atcmd_wm_uart_task$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_uart_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_uart_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_uart_task$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_uart_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_uart_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_uart_task$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_uart_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_uart_task$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_uart_task.c

$(IntermediateDirectory)/wm_atcmd_wm_hspi_task$(ObjectSuffix): ../../../../../../../src/app/wm_atcmd/wm_hspi_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/wm_atcmd/wm_hspi_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/wm_atcmd_wm_hspi_task$(ObjectSuffix) -MF$(IntermediateDirectory)/wm_atcmd_wm_hspi_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/wm_atcmd_wm_hspi_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/wm_atcmd_wm_hspi_task$(PreprocessSuffix): ../../../../../../../src/app/wm_atcmd/wm_hspi_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/wm_atcmd_wm_hspi_task$(PreprocessSuffix) ../../../../../../../src/app/wm_atcmd/wm_hspi_task.c

$(IntermediateDirectory)/fatfs_diskio$(ObjectSuffix): ../../../../../../../src/app/fatfs/diskio.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/fatfs/diskio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fatfs_diskio$(ObjectSuffix) -MF$(IntermediateDirectory)/fatfs_diskio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fatfs_diskio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fatfs_diskio$(PreprocessSuffix): ../../../../../../../src/app/fatfs/diskio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fatfs_diskio$(PreprocessSuffix) ../../../../../../../src/app/fatfs/diskio.c

$(IntermediateDirectory)/fatfs_ff$(ObjectSuffix): ../../../../../../../src/app/fatfs/ff.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/fatfs/ff.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fatfs_ff$(ObjectSuffix) -MF$(IntermediateDirectory)/fatfs_ff$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fatfs_ff$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fatfs_ff$(PreprocessSuffix): ../../../../../../../src/app/fatfs/ff.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fatfs_ff$(PreprocessSuffix) ../../../../../../../src/app/fatfs/ff.c

$(IntermediateDirectory)/fatfs_ffsystem$(ObjectSuffix): ../../../../../../../src/app/fatfs/ffsystem.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/fatfs/ffsystem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fatfs_ffsystem$(ObjectSuffix) -MF$(IntermediateDirectory)/fatfs_ffsystem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fatfs_ffsystem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fatfs_ffsystem$(PreprocessSuffix): ../../../../../../../src/app/fatfs/ffsystem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fatfs_ffsystem$(PreprocessSuffix) ../../../../../../../src/app/fatfs/ffsystem.c

$(IntermediateDirectory)/fatfs_ffunicode$(ObjectSuffix): ../../../../../../../src/app/fatfs/ffunicode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/fatfs/ffunicode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fatfs_ffunicode$(ObjectSuffix) -MF$(IntermediateDirectory)/fatfs_ffunicode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fatfs_ffunicode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fatfs_ffunicode$(PreprocessSuffix): ../../../../../../../src/app/fatfs/ffunicode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fatfs_ffunicode$(PreprocessSuffix) ../../../../../../../src/app/fatfs/ffunicode.c

$(IntermediateDirectory)/bleapp_wm_ble_client_api_demo$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_api_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_client_api_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_client_api_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_client_api_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_client_api_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_client_api_demo$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_api_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_client_api_demo$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_client_api_demo.c

$(IntermediateDirectory)/bleapp_wm_ble_client_api_multi_conn_demo$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_api_multi_conn_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_client_api_multi_conn_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_client_api_multi_conn_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_client_api_multi_conn_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_client_api_multi_conn_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_client_api_multi_conn_demo$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_api_multi_conn_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_client_api_multi_conn_demo$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_client_api_multi_conn_demo.c

$(IntermediateDirectory)/bleapp_wm_ble_client_peer_manager$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_peer_manager.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_client_peer_manager.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_client_peer_manager$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_client_peer_manager$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_client_peer_manager$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_client_peer_manager$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_peer_manager.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_client_peer_manager$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_client_peer_manager.c

$(IntermediateDirectory)/bleapp_wm_ble_client_util$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_util.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_client_util.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_client_util$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_client_util$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_client_util$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_client_util$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_client_util.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_client_util$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_client_util.c

$(IntermediateDirectory)/bleapp_wm_ble_gap$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_gap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_gap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_gap$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_gap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_gap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_gap$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_gap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_gap$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_gap.c

$(IntermediateDirectory)/bleapp_wm_ble_server_api_demo$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_api_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_server_api_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_server_api_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_server_api_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_server_api_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_server_api_demo$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_api_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_server_api_demo$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_server_api_demo.c

$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_app$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_wifi_app.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_server_wifi_app.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_app$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_app$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_app$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_server_wifi_app$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_wifi_app.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_server_wifi_app$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_server_wifi_app.c

$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_prof$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_wifi_prof.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_server_wifi_prof.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_prof$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_prof$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_server_wifi_prof$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_server_wifi_prof$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_server_wifi_prof.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_server_wifi_prof$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_server_wifi_prof.c

$(IntermediateDirectory)/bleapp_wm_ble_uart_if$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_uart_if.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_uart_if.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_uart_if$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_uart_if$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_uart_if$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_uart_if$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_uart_if.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_uart_if$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_uart_if.c

$(IntermediateDirectory)/bleapp_wm_bt_app$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_bt_app.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_bt_app.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_bt_app$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_bt_app$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_bt_app$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_bt_app$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_bt_app.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_bt_app$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_bt_app.c

$(IntermediateDirectory)/bleapp_wm_bt_util$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_bt_util.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_bt_util.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_bt_util$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_bt_util$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_bt_util$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_bt_util$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_bt_util.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_bt_util$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_bt_util.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_level_server$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_level_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_level_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_level_server$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_level_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_level_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_gen_level_server$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_level_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_gen_level_server$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_level_server.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_client$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_client.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_client.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_client$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_client$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_client$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_gen_onoff_client$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_client.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_gen_onoff_client$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_client.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_server$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_server$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_gen_onoff_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_gen_onoff_server$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_gen_onoff_server$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_gen_onoff_server.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_health_server$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_health_server.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_health_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_health_server$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_health_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_health_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_health_server$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_health_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_health_server$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_health_server.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_light_model$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_light_model.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_light_model.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_light_model$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_light_model$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_light_model$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_light_model$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_light_model.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_light_model$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_light_model.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_node_demo$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_node_demo.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_node_demo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_node_demo$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_node_demo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_node_demo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_node_demo$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_node_demo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_node_demo$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_node_demo.c

$(IntermediateDirectory)/bleapp_wm_ble_mesh_vnd_model$(ObjectSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_vnd_model.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/bleapp/wm_ble_mesh_vnd_model.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bleapp_wm_ble_mesh_vnd_model$(ObjectSuffix) -MF$(IntermediateDirectory)/bleapp_wm_ble_mesh_vnd_model$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bleapp_wm_ble_mesh_vnd_model$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bleapp_wm_ble_mesh_vnd_model$(PreprocessSuffix): ../../../../../../../src/app/bleapp/wm_ble_mesh_vnd_model.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bleapp_wm_ble_mesh_vnd_model$(PreprocessSuffix) ../../../../../../../src/app/bleapp/wm_ble_mesh_vnd_model.c

$(IntermediateDirectory)/factorycmd_factory_atcmd$(ObjectSuffix): ../../../../../../../src/app/factorycmd/factory_atcmd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/factorycmd/factory_atcmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/factorycmd_factory_atcmd$(ObjectSuffix) -MF$(IntermediateDirectory)/factorycmd_factory_atcmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/factorycmd_factory_atcmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/factorycmd_factory_atcmd$(PreprocessSuffix): ../../../../../../../src/app/factorycmd/factory_atcmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/factorycmd_factory_atcmd$(PreprocessSuffix) ../../../../../../../src/app/factorycmd/factory_atcmd.c

$(IntermediateDirectory)/lwip2.1.3_sys_arch$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/sys_arch.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/sys_arch.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lwip2.1.3_sys_arch$(ObjectSuffix) -MF$(IntermediateDirectory)/lwip2.1.3_sys_arch$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lwip2.1.3_sys_arch$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lwip2.1.3_sys_arch$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/sys_arch.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lwip2.1.3_sys_arch$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/sys_arch.c

$(IntermediateDirectory)/api_wm_tls_netconn$(ObjectSuffix): ../../../../../../../src/network/api_wm/tls_netconn.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/api_wm/tls_netconn.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_wm_tls_netconn$(ObjectSuffix) -MF$(IntermediateDirectory)/api_wm_tls_netconn$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_wm_tls_netconn$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_wm_tls_netconn$(PreprocessSuffix): ../../../../../../../src/network/api_wm/tls_netconn.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_wm_tls_netconn$(PreprocessSuffix) ../../../../../../../src/network/api_wm/tls_netconn.c

$(IntermediateDirectory)/fwup_wm_fwup$(ObjectSuffix): ../../../../../../../platform/common/fwup/wm_fwup.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/fwup/wm_fwup.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fwup_wm_fwup$(ObjectSuffix) -MF$(IntermediateDirectory)/fwup_wm_fwup$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fwup_wm_fwup$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fwup_wm_fwup$(PreprocessSuffix): ../../../../../../../platform/common/fwup/wm_fwup.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fwup_wm_fwup$(PreprocessSuffix) ../../../../../../../platform/common/fwup/wm_fwup.c

$(IntermediateDirectory)/mem_wm_mem$(ObjectSuffix): ../../../../../../../platform/common/mem/wm_mem.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/mem/wm_mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/mem_wm_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/mem_wm_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/mem_wm_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/mem_wm_mem$(PreprocessSuffix): ../../../../../../../platform/common/mem/wm_mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mem_wm_mem$(PreprocessSuffix) ../../../../../../../platform/common/mem/wm_mem.c

$(IntermediateDirectory)/params_wm_param$(ObjectSuffix): ../../../../../../../platform/common/params/wm_param.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/params/wm_param.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/params_wm_param$(ObjectSuffix) -MF$(IntermediateDirectory)/params_wm_param$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/params_wm_param$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/params_wm_param$(PreprocessSuffix): ../../../../../../../platform/common/params/wm_param.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/params_wm_param$(PreprocessSuffix) ../../../../../../../platform/common/params/wm_param.c

$(IntermediateDirectory)/task_wm_wl_mbox$(ObjectSuffix): ../../../../../../../platform/common/task/wm_wl_mbox.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/task/wm_wl_mbox.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/task_wm_wl_mbox$(ObjectSuffix) -MF$(IntermediateDirectory)/task_wm_wl_mbox$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/task_wm_wl_mbox$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/task_wm_wl_mbox$(PreprocessSuffix): ../../../../../../../platform/common/task/wm_wl_mbox.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/task_wm_wl_mbox$(PreprocessSuffix) ../../../../../../../platform/common/task/wm_wl_mbox.c

$(IntermediateDirectory)/task_wm_wl_task$(ObjectSuffix): ../../../../../../../platform/common/task/wm_wl_task.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/task/wm_wl_task.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/task_wm_wl_task$(ObjectSuffix) -MF$(IntermediateDirectory)/task_wm_wl_task$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/task_wm_wl_task$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/task_wm_wl_task$(PreprocessSuffix): ../../../../../../../platform/common/task/wm_wl_task.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/task_wm_wl_task$(PreprocessSuffix) ../../../../../../../platform/common/task/wm_wl_task.c

$(IntermediateDirectory)/task_wm_wl_timers$(ObjectSuffix): ../../../../../../../platform/common/task/wm_wl_timers.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/task/wm_wl_timers.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/task_wm_wl_timers$(ObjectSuffix) -MF$(IntermediateDirectory)/task_wm_wl_timers$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/task_wm_wl_timers$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/task_wm_wl_timers$(PreprocessSuffix): ../../../../../../../platform/common/task/wm_wl_timers.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/task_wm_wl_timers$(PreprocessSuffix) ../../../../../../../platform/common/task/wm_wl_timers.c

$(IntermediateDirectory)/utils_utils$(ObjectSuffix): ../../../../../../../platform/common/utils/utils.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/utils/utils.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/utils_utils$(ObjectSuffix) -MF$(IntermediateDirectory)/utils_utils$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/utils_utils$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/utils_utils$(PreprocessSuffix): ../../../../../../../platform/common/utils/utils.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/utils_utils$(PreprocessSuffix) ../../../../../../../platform/common/utils/utils.c

$(IntermediateDirectory)/crypto_wm_crypto_hard$(ObjectSuffix): ../../../../../../../platform/common/crypto/wm_crypto_hard.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/crypto/wm_crypto_hard.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/crypto_wm_crypto_hard$(ObjectSuffix) -MF$(IntermediateDirectory)/crypto_wm_crypto_hard$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/crypto_wm_crypto_hard$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/crypto_wm_crypto_hard$(PreprocessSuffix): ../../../../../../../platform/common/crypto/wm_crypto_hard.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/crypto_wm_crypto_hard$(PreprocessSuffix) ../../../../../../../platform/common/crypto/wm_crypto_hard.c

$(IntermediateDirectory)/crypto_wm_crypto_hard_mbed$(ObjectSuffix): ../../../../../../../platform/common/crypto/wm_crypto_hard_mbed.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/common/crypto/wm_crypto_hard_mbed.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/crypto_wm_crypto_hard_mbed$(ObjectSuffix) -MF$(IntermediateDirectory)/crypto_wm_crypto_hard_mbed$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/crypto_wm_crypto_hard_mbed$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/crypto_wm_crypto_hard_mbed$(PreprocessSuffix): ../../../../../../../platform/common/crypto/wm_crypto_hard_mbed.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/crypto_wm_crypto_hard_mbed$(PreprocessSuffix) ../../../../../../../platform/common/crypto/wm_crypto_hard_mbed.c

$(IntermediateDirectory)/7816_wm_7816$(ObjectSuffix): ../../../../../../../platform/drivers/7816/wm_7816.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/7816/wm_7816.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/7816_wm_7816$(ObjectSuffix) -MF$(IntermediateDirectory)/7816_wm_7816$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/7816_wm_7816$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/7816_wm_7816$(PreprocessSuffix): ../../../../../../../platform/drivers/7816/wm_7816.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/7816_wm_7816$(PreprocessSuffix) ../../../../../../../platform/drivers/7816/wm_7816.c

$(IntermediateDirectory)/adc_wm_adc$(ObjectSuffix): ../../../../../../../platform/drivers/adc/wm_adc.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/adc/wm_adc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/adc_wm_adc$(ObjectSuffix) -MF$(IntermediateDirectory)/adc_wm_adc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/adc_wm_adc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/adc_wm_adc$(PreprocessSuffix): ../../../../../../../platform/drivers/adc/wm_adc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/adc_wm_adc$(PreprocessSuffix) ../../../../../../../platform/drivers/adc/wm_adc.c

$(IntermediateDirectory)/adc_wm_polyfit$(ObjectSuffix): ../../../../../../../platform/drivers/adc/wm_polyfit.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/adc/wm_polyfit.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/adc_wm_polyfit$(ObjectSuffix) -MF$(IntermediateDirectory)/adc_wm_polyfit$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/adc_wm_polyfit$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/adc_wm_polyfit$(PreprocessSuffix): ../../../../../../../platform/drivers/adc/wm_polyfit.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/adc_wm_polyfit$(PreprocessSuffix) ../../../../../../../platform/drivers/adc/wm_polyfit.c

$(IntermediateDirectory)/adc_wm_adc_cal$(ObjectSuffix): ../../../../../../../platform/drivers/adc/wm_adc_cal.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/adc/wm_adc_cal.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/adc_wm_adc_cal$(ObjectSuffix) -MF$(IntermediateDirectory)/adc_wm_adc_cal$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/adc_wm_adc_cal$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/adc_wm_adc_cal$(PreprocessSuffix): ../../../../../../../platform/drivers/adc/wm_adc_cal.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/adc_wm_adc_cal$(PreprocessSuffix) ../../../../../../../platform/drivers/adc/wm_adc_cal.c

$(IntermediateDirectory)/cpu_wm_cpu$(ObjectSuffix): ../../../../../../../platform/drivers/cpu/wm_cpu.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/cpu/wm_cpu.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/cpu_wm_cpu$(ObjectSuffix) -MF$(IntermediateDirectory)/cpu_wm_cpu$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/cpu_wm_cpu$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/cpu_wm_cpu$(PreprocessSuffix): ../../../../../../../platform/drivers/cpu/wm_cpu.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/cpu_wm_cpu$(PreprocessSuffix) ../../../../../../../platform/drivers/cpu/wm_cpu.c

$(IntermediateDirectory)/dma_wm_dma$(ObjectSuffix): ../../../../../../../platform/drivers/dma/wm_dma.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/dma/wm_dma.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/dma_wm_dma$(ObjectSuffix) -MF$(IntermediateDirectory)/dma_wm_dma$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/dma_wm_dma$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/dma_wm_dma$(PreprocessSuffix): ../../../../../../../platform/drivers/dma/wm_dma.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/dma_wm_dma$(PreprocessSuffix) ../../../../../../../platform/drivers/dma/wm_dma.c

$(IntermediateDirectory)/efuse_wm_efuse$(ObjectSuffix): ../../../../../../../platform/drivers/efuse/wm_efuse.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/efuse/wm_efuse.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/efuse_wm_efuse$(ObjectSuffix) -MF$(IntermediateDirectory)/efuse_wm_efuse$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/efuse_wm_efuse$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/efuse_wm_efuse$(PreprocessSuffix): ../../../../../../../platform/drivers/efuse/wm_efuse.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/efuse_wm_efuse$(PreprocessSuffix) ../../../../../../../platform/drivers/efuse/wm_efuse.c

$(IntermediateDirectory)/flash_wm_fls$(ObjectSuffix): ../../../../../../../platform/drivers/flash/wm_fls.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/flash/wm_fls.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/flash_wm_fls$(ObjectSuffix) -MF$(IntermediateDirectory)/flash_wm_fls$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/flash_wm_fls$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/flash_wm_fls$(PreprocessSuffix): ../../../../../../../platform/drivers/flash/wm_fls.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/flash_wm_fls$(PreprocessSuffix) ../../../../../../../platform/drivers/flash/wm_fls.c

$(IntermediateDirectory)/flash_wm_fls_gd25qxx$(ObjectSuffix): ../../../../../../../platform/drivers/flash/wm_fls_gd25qxx.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/flash/wm_fls_gd25qxx.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/flash_wm_fls_gd25qxx$(ObjectSuffix) -MF$(IntermediateDirectory)/flash_wm_fls_gd25qxx$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/flash_wm_fls_gd25qxx$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/flash_wm_fls_gd25qxx$(PreprocessSuffix): ../../../../../../../platform/drivers/flash/wm_fls_gd25qxx.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/flash_wm_fls_gd25qxx$(PreprocessSuffix) ../../../../../../../platform/drivers/flash/wm_fls_gd25qxx.c

$(IntermediateDirectory)/gpio_wm_gpio$(ObjectSuffix): ../../../../../../../platform/drivers/gpio/wm_gpio.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/gpio/wm_gpio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/gpio_wm_gpio$(ObjectSuffix) -MF$(IntermediateDirectory)/gpio_wm_gpio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/gpio_wm_gpio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/gpio_wm_gpio$(PreprocessSuffix): ../../../../../../../platform/drivers/gpio/wm_gpio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/gpio_wm_gpio$(PreprocessSuffix) ../../../../../../../platform/drivers/gpio/wm_gpio.c

$(IntermediateDirectory)/gpio_wm_gpio_afsel$(ObjectSuffix): ../../../../../../../platform/drivers/gpio/wm_gpio_afsel.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/gpio/wm_gpio_afsel.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/gpio_wm_gpio_afsel$(ObjectSuffix) -MF$(IntermediateDirectory)/gpio_wm_gpio_afsel$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/gpio_wm_gpio_afsel$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/gpio_wm_gpio_afsel$(PreprocessSuffix): ../../../../../../../platform/drivers/gpio/wm_gpio_afsel.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/gpio_wm_gpio_afsel$(PreprocessSuffix) ../../../../../../../platform/drivers/gpio/wm_gpio_afsel.c

$(IntermediateDirectory)/i2c_wm_i2c$(ObjectSuffix): ../../../../../../../platform/drivers/i2c/wm_i2c.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/i2c/wm_i2c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2c_wm_i2c$(ObjectSuffix) -MF$(IntermediateDirectory)/i2c_wm_i2c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2c_wm_i2c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2c_wm_i2c$(PreprocessSuffix): ../../../../../../../platform/drivers/i2c/wm_i2c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2c_wm_i2c$(PreprocessSuffix) ../../../../../../../platform/drivers/i2c/wm_i2c.c

$(IntermediateDirectory)/i2s_wm_i2s$(ObjectSuffix): ../../../../../../../platform/drivers/i2s/wm_i2s.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/i2s/wm_i2s.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2s_wm_i2s$(ObjectSuffix) -MF$(IntermediateDirectory)/i2s_wm_i2s$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2s_wm_i2s$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2s_wm_i2s$(PreprocessSuffix): ../../../../../../../platform/drivers/i2s/wm_i2s.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2s_wm_i2s$(PreprocessSuffix) ../../../../../../../platform/drivers/i2s/wm_i2s.c

$(IntermediateDirectory)/internalflash_wm_internal_fls$(ObjectSuffix): ../../../../../../../platform/drivers/internalflash/wm_internal_fls.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/internalflash/wm_internal_fls.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/internalflash_wm_internal_fls$(ObjectSuffix) -MF$(IntermediateDirectory)/internalflash_wm_internal_fls$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/internalflash_wm_internal_fls$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/internalflash_wm_internal_fls$(PreprocessSuffix): ../../../../../../../platform/drivers/internalflash/wm_internal_fls.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/internalflash_wm_internal_fls$(PreprocessSuffix) ../../../../../../../platform/drivers/internalflash/wm_internal_fls.c

$(IntermediateDirectory)/io_wm_io$(ObjectSuffix): ../../../../../../../platform/drivers/io/wm_io.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/io/wm_io.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/io_wm_io$(ObjectSuffix) -MF$(IntermediateDirectory)/io_wm_io$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/io_wm_io$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/io_wm_io$(PreprocessSuffix): ../../../../../../../platform/drivers/io/wm_io.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/io_wm_io$(PreprocessSuffix) ../../../../../../../platform/drivers/io/wm_io.c

$(IntermediateDirectory)/irq_wm_irq$(ObjectSuffix): ../../../../../../../platform/drivers/irq/wm_irq.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/irq/wm_irq.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/irq_wm_irq$(ObjectSuffix) -MF$(IntermediateDirectory)/irq_wm_irq$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/irq_wm_irq$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/irq_wm_irq$(PreprocessSuffix): ../../../../../../../platform/drivers/irq/wm_irq.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/irq_wm_irq$(PreprocessSuffix) ../../../../../../../platform/drivers/irq/wm_irq.c

$(IntermediateDirectory)/pmu_wm_pmu$(ObjectSuffix): ../../../../../../../platform/drivers/pmu/wm_pmu.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/pmu/wm_pmu.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/pmu_wm_pmu$(ObjectSuffix) -MF$(IntermediateDirectory)/pmu_wm_pmu$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/pmu_wm_pmu$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/pmu_wm_pmu$(PreprocessSuffix): ../../../../../../../platform/drivers/pmu/wm_pmu.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/pmu_wm_pmu$(PreprocessSuffix) ../../../../../../../platform/drivers/pmu/wm_pmu.c

$(IntermediateDirectory)/pwm_wm_pwm$(ObjectSuffix): ../../../../../../../platform/drivers/pwm/wm_pwm.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/pwm/wm_pwm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/pwm_wm_pwm$(ObjectSuffix) -MF$(IntermediateDirectory)/pwm_wm_pwm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/pwm_wm_pwm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/pwm_wm_pwm$(PreprocessSuffix): ../../../../../../../platform/drivers/pwm/wm_pwm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/pwm_wm_pwm$(PreprocessSuffix) ../../../../../../../platform/drivers/pwm/wm_pwm.c

$(IntermediateDirectory)/rtc_wm_rtc$(ObjectSuffix): ../../../../../../../platform/drivers/rtc/wm_rtc.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/rtc/wm_rtc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rtc_wm_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/rtc_wm_rtc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rtc_wm_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rtc_wm_rtc$(PreprocessSuffix): ../../../../../../../platform/drivers/rtc/wm_rtc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtc_wm_rtc$(PreprocessSuffix) ../../../../../../../platform/drivers/rtc/wm_rtc.c

$(IntermediateDirectory)/sasc_wm_sasc$(ObjectSuffix): ../../../../../../../platform/drivers/sasc/wm_sasc.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/sasc/wm_sasc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sasc_wm_sasc$(ObjectSuffix) -MF$(IntermediateDirectory)/sasc_wm_sasc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sasc_wm_sasc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sasc_wm_sasc$(PreprocessSuffix): ../../../../../../../platform/drivers/sasc/wm_sasc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sasc_wm_sasc$(PreprocessSuffix) ../../../../../../../platform/drivers/sasc/wm_sasc.c

$(IntermediateDirectory)/spi_wm_hostspi$(ObjectSuffix): ../../../../../../../platform/drivers/spi/wm_hostspi.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/spi/wm_hostspi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spi_wm_hostspi$(ObjectSuffix) -MF$(IntermediateDirectory)/spi_wm_hostspi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spi_wm_hostspi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spi_wm_hostspi$(PreprocessSuffix): ../../../../../../../platform/drivers/spi/wm_hostspi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spi_wm_hostspi$(PreprocessSuffix) ../../../../../../../platform/drivers/spi/wm_hostspi.c

$(IntermediateDirectory)/timer_wm_timer$(ObjectSuffix): ../../../../../../../platform/drivers/timer/wm_timer.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/timer/wm_timer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/timer_wm_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/timer_wm_timer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/timer_wm_timer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/timer_wm_timer$(PreprocessSuffix): ../../../../../../../platform/drivers/timer/wm_timer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/timer_wm_timer$(PreprocessSuffix) ../../../../../../../platform/drivers/timer/wm_timer.c

$(IntermediateDirectory)/uart_wm_uart$(ObjectSuffix): ../../../../../../../platform/drivers/uart/wm_uart.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/uart/wm_uart.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/uart_wm_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/uart_wm_uart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/uart_wm_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/uart_wm_uart$(PreprocessSuffix): ../../../../../../../platform/drivers/uart/wm_uart.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/uart_wm_uart$(PreprocessSuffix) ../../../../../../../platform/drivers/uart/wm_uart.c

$(IntermediateDirectory)/watchdog_wm_watchdog$(ObjectSuffix): ../../../../../../../platform/drivers/watchdog/wm_watchdog.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/watchdog/wm_watchdog.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/watchdog_wm_watchdog$(ObjectSuffix) -MF$(IntermediateDirectory)/watchdog_wm_watchdog$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/watchdog_wm_watchdog$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/watchdog_wm_watchdog$(PreprocessSuffix): ../../../../../../../platform/drivers/watchdog/wm_watchdog.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/watchdog_wm_watchdog$(PreprocessSuffix) ../../../../../../../platform/drivers/watchdog/wm_watchdog.c

$(IntermediateDirectory)/hspi_wm_hspi$(ObjectSuffix): ../../../../../../../platform/drivers/hspi/wm_hspi.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/hspi/wm_hspi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/hspi_wm_hspi$(ObjectSuffix) -MF$(IntermediateDirectory)/hspi_wm_hspi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/hspi_wm_hspi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/hspi_wm_hspi$(PreprocessSuffix): ../../../../../../../platform/drivers/hspi/wm_hspi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hspi_wm_hspi$(PreprocessSuffix) ../../../../../../../platform/drivers/hspi/wm_hspi.c

$(IntermediateDirectory)/sdio_host_wm_sdio_host$(ObjectSuffix): ../../../../../../../platform/drivers/sdio_host/wm_sdio_host.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/sdio_host/wm_sdio_host.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdio_host_wm_sdio_host$(ObjectSuffix) -MF$(IntermediateDirectory)/sdio_host_wm_sdio_host$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdio_host_wm_sdio_host$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdio_host_wm_sdio_host$(PreprocessSuffix): ../../../../../../../platform/drivers/sdio_host/wm_sdio_host.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdio_host_wm_sdio_host$(PreprocessSuffix) ../../../../../../../platform/drivers/sdio_host/wm_sdio_host.c

$(IntermediateDirectory)/psram_wm_psram$(ObjectSuffix): ../../../../../../../platform/drivers/psram/wm_psram.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/psram/wm_psram.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/psram_wm_psram$(ObjectSuffix) -MF$(IntermediateDirectory)/psram_wm_psram$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/psram_wm_psram$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/psram_wm_psram$(PreprocessSuffix): ../../../../../../../platform/drivers/psram/wm_psram.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/psram_wm_psram$(PreprocessSuffix) ../../../../../../../platform/drivers/psram/wm_psram.c

$(IntermediateDirectory)/touchsensor_wm_touchsensor$(ObjectSuffix): ../../../../../../../platform/drivers/touchsensor/wm_touchsensor.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/touchsensor/wm_touchsensor.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchsensor_wm_touchsensor$(ObjectSuffix) -MF$(IntermediateDirectory)/touchsensor_wm_touchsensor$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchsensor_wm_touchsensor$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchsensor_wm_touchsensor$(PreprocessSuffix): ../../../../../../../platform/drivers/touchsensor/wm_touchsensor.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchsensor_wm_touchsensor$(PreprocessSuffix) ../../../../../../../platform/drivers/touchsensor/wm_touchsensor.c

$(IntermediateDirectory)/lcd_wm_lcd$(ObjectSuffix): ../../../../../../../platform/drivers/lcd/wm_lcd.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/drivers/lcd/wm_lcd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lcd_wm_lcd$(ObjectSuffix) -MF$(IntermediateDirectory)/lcd_wm_lcd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lcd_wm_lcd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lcd_wm_lcd$(PreprocessSuffix): ../../../../../../../platform/drivers/lcd/wm_lcd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lcd_wm_lcd$(PreprocessSuffix) ../../../../../../../platform/drivers/lcd/wm_lcd.c

$(IntermediateDirectory)/encoder_encoder$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/encoder/encoder.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/encoder/encoder.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/encoder_encoder$(ObjectSuffix) -MF$(IntermediateDirectory)/encoder_encoder$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/encoder_encoder$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/encoder_encoder$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/encoder/encoder.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/encoder_encoder$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/encoder/encoder.c

$(IntermediateDirectory)/lcd_lcd$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/lcd/lcd.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/lcd/lcd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lcd_lcd$(ObjectSuffix) -MF$(IntermediateDirectory)/lcd_lcd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lcd_lcd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lcd_lcd$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/lcd/lcd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lcd_lcd$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/lcd/lcd.c

$(IntermediateDirectory)/lcd_sdio_spi_driver$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/lcd/sdio_spi_driver.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/lcd/sdio_spi_driver.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/lcd_sdio_spi_driver$(ObjectSuffix) -MF$(IntermediateDirectory)/lcd_sdio_spi_driver$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/lcd_sdio_spi_driver$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/lcd_sdio_spi_driver$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/lcd/sdio_spi_driver.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/lcd_sdio_spi_driver$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/lcd/sdio_spi_driver.c

$(IntermediateDirectory)/psram_psram$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/psram/psram.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/psram/psram.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/psram_psram$(ObjectSuffix) -MF$(IntermediateDirectory)/psram_psram$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/psram_psram$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/psram_psram$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/psram/psram.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/psram_psram$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/psram/psram.c

$(IntermediateDirectory)/spiflash_spiflash$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/spiflash/spiflash.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/spiflash/spiflash.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spiflash_spiflash$(ObjectSuffix) -MF$(IntermediateDirectory)/spiflash_spiflash$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spiflash_spiflash$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spiflash_spiflash$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/spiflash/spiflash.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spiflash_spiflash$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/spiflash/spiflash.c

$(IntermediateDirectory)/touchpad_cst816t$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/cst816t.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/cst816t.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_cst816t$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_cst816t$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_cst816t$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_cst816t$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/cst816t.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_cst816t$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/cst816t.c

$(IntermediateDirectory)/touchpad_ft5206$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/ft5206.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/ft5206.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_ft5206$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_ft5206$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_ft5206$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_ft5206$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/ft5206.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_ft5206$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/ft5206.c

$(IntermediateDirectory)/touchpad_gt911$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/gt911.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/gt911.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_gt911$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_gt911$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_gt911$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_gt911$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/gt911.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_gt911$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/gt911.c

$(IntermediateDirectory)/touchpad_iic$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/iic.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/iic.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_iic$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_iic$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_iic$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_iic$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/iic.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_iic$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/iic.c

$(IntermediateDirectory)/touchpad_touchpad$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/touchpad.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/touchpad.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_touchpad$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_touchpad$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_touchpad$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_touchpad$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/touchpad.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_touchpad$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/touchpad.c

$(IntermediateDirectory)/touchpad_xpt2046$(ObjectSuffix): ../../../../../../../components/lvgl_drivers/touchpad/xpt2046.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl_drivers/touchpad/xpt2046.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/touchpad_xpt2046$(ObjectSuffix) -MF$(IntermediateDirectory)/touchpad_xpt2046$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/touchpad_xpt2046$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/touchpad_xpt2046$(PreprocessSuffix): ../../../../../../../components/lvgl_drivers/touchpad/xpt2046.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/touchpad_xpt2046$(PreprocessSuffix) ../../../../../../../components/lvgl_drivers/touchpad/xpt2046.c

$(IntermediateDirectory)/switch_panel_ui$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui.c

$(IntermediateDirectory)/switch_panel_ui_helpers$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_helpers.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_helpers.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_helpers$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_helpers$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_helpers$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_helpers$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_helpers.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_helpers$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_helpers.c

$(IntermediateDirectory)/switch_panel_ui_img_320x240_bg_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_320x240_bg_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_320x240_bg_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_320x240_bg_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_320x240_bg_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_320x240_bg_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_320x240_bg_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_320x240_bg_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_320x240_bg_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_320x240_bg_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_bluetooth_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_bluetooth_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_bluetooth_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_bluetooth_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_bluetooth_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_bluetooth_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_bluetooth_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_bluetooth_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_bluetooth_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_bluetooth_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_clock_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_clock_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_clock_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_clock_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_clock_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_clock_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_clock_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_clock_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_clock_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_clock_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_snow_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_snow_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_snow_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_snow_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_snow_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_snow_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_snow_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_snow_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_snow_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_snow_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_28x22_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_28x22_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_28x22_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_28x22_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_28x22_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_28x22_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wifi_28x22_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_28x22_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wifi_28x22_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_28x22_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wifi_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wifi_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wifi_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wifi_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_1_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_1_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_1_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_1_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_1_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_1_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_1_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_1_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_1_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_1_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_2_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_2_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_2_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_2_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_2_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_2_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_2_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_2_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_2_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_2_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_3_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_3_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_3_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_3_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_3_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_3_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_3_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_3_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_3_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_3_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_4_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_4_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_4_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_4_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_4_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_4_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_4_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_4_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_4_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_4_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_5_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_5_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_5_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_5_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_5_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_5_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_5_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_5_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_5_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_5_png.c

$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_icn_wind_speed_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_icn_wind_speed_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_icn_wind_speed_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_icn_wind_speed_png.c

$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_fog_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_fog_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_fog_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_fog_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_fog_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_fog_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_weather_cloud_fog_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_fog_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_weather_cloud_fog_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_fog_png.c

$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_weather_cloud_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_weather_cloud_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_weather_cloud_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_weather_cloud_png.c

$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_cloud_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_cloud_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_cloud_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_cloud_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_cloud_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_cloud_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_weather_sun_cloud_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_cloud_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_weather_sun_cloud_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_cloud_png.c

$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_png$(ObjectSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_png$(ObjectSuffix) -MF$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/switch_panel_ui_img_weather_sun_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/switch_panel_ui_img_weather_sun_png$(PreprocessSuffix): ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/switch_panel_ui_img_weather_sun_png$(PreprocessSuffix) ../../../../../../../app/solutions/switch_panel/ui_img_weather_sun_png.c

$(IntermediateDirectory)/source_croutine$(ObjectSuffix): ../../../../../../../src/os/rtos/source/croutine.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/croutine.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_croutine$(ObjectSuffix) -MF$(IntermediateDirectory)/source_croutine$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_croutine$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_croutine$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/croutine.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_croutine$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/croutine.c

$(IntermediateDirectory)/source_event_groups$(ObjectSuffix): ../../../../../../../src/os/rtos/source/event_groups.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/event_groups.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_event_groups$(ObjectSuffix) -MF$(IntermediateDirectory)/source_event_groups$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_event_groups$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_event_groups$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/event_groups.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_event_groups$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/event_groups.c

$(IntermediateDirectory)/source_heap_2$(ObjectSuffix): ../../../../../../../src/os/rtos/source/heap_2.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/heap_2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_heap_2$(ObjectSuffix) -MF$(IntermediateDirectory)/source_heap_2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_heap_2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_heap_2$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/heap_2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_heap_2$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/heap_2.c

$(IntermediateDirectory)/source_heap_3$(ObjectSuffix): ../../../../../../../src/os/rtos/source/heap_3.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/heap_3.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_heap_3$(ObjectSuffix) -MF$(IntermediateDirectory)/source_heap_3$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_heap_3$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_heap_3$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/heap_3.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_heap_3$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/heap_3.c

$(IntermediateDirectory)/source_list$(ObjectSuffix): ../../../../../../../src/os/rtos/source/list.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/list.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_list$(ObjectSuffix) -MF$(IntermediateDirectory)/source_list$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_list$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_list$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/list.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_list$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/list.c

$(IntermediateDirectory)/source_queue$(ObjectSuffix): ../../../../../../../src/os/rtos/source/queue.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/queue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/source_queue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_queue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_queue$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/queue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_queue$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/queue.c

$(IntermediateDirectory)/source_stream_buffer$(ObjectSuffix): ../../../../../../../src/os/rtos/source/stream_buffer.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/stream_buffer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_stream_buffer$(ObjectSuffix) -MF$(IntermediateDirectory)/source_stream_buffer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_stream_buffer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_stream_buffer$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/stream_buffer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_stream_buffer$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/stream_buffer.c

$(IntermediateDirectory)/source_tasks$(ObjectSuffix): ../../../../../../../src/os/rtos/source/tasks.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/tasks.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_tasks$(ObjectSuffix) -MF$(IntermediateDirectory)/source_tasks$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_tasks$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_tasks$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/tasks.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_tasks$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/tasks.c

$(IntermediateDirectory)/source_timers$(ObjectSuffix): ../../../../../../../src/os/rtos/source/timers.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/source/timers.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/source_timers$(ObjectSuffix) -MF$(IntermediateDirectory)/source_timers$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/source_timers$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/source_timers$(PreprocessSuffix): ../../../../../../../src/os/rtos/source/timers.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/source_timers$(PreprocessSuffix) ../../../../../../../src/os/rtos/source/timers.c

$(IntermediateDirectory)/library_aes$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/aes.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/aes.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_aes$(ObjectSuffix) -MF$(IntermediateDirectory)/library_aes$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_aes$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_aes$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/aes.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_aes$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/aes.c

$(IntermediateDirectory)/library_aesni$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/aesni.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/aesni.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_aesni$(ObjectSuffix) -MF$(IntermediateDirectory)/library_aesni$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_aesni$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_aesni$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/aesni.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_aesni$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/aesni.c

$(IntermediateDirectory)/library_arc4$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/arc4.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/arc4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_arc4$(ObjectSuffix) -MF$(IntermediateDirectory)/library_arc4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_arc4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_arc4$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/arc4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_arc4$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/arc4.c

$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/asn1parse.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/asn1parse.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) -MF$(IntermediateDirectory)/library_asn1parse$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_asn1parse$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/asn1parse.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_asn1parse$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/asn1parse.c

$(IntermediateDirectory)/library_asn1write$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/asn1write.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/asn1write.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_asn1write$(ObjectSuffix) -MF$(IntermediateDirectory)/library_asn1write$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_asn1write$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_asn1write$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/asn1write.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_asn1write$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/asn1write.c

$(IntermediateDirectory)/library_base64$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/base64.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/base64.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_base64$(ObjectSuffix) -MF$(IntermediateDirectory)/library_base64$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_base64$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_base64$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/base64.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_base64$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/base64.c

$(IntermediateDirectory)/library_bignum$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/bignum.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/bignum.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_bignum$(ObjectSuffix) -MF$(IntermediateDirectory)/library_bignum$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_bignum$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_bignum$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/bignum.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_bignum$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/bignum.c

$(IntermediateDirectory)/library_blowfish$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/blowfish.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/blowfish.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_blowfish$(ObjectSuffix) -MF$(IntermediateDirectory)/library_blowfish$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_blowfish$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_blowfish$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/blowfish.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_blowfish$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/blowfish.c

$(IntermediateDirectory)/library_camellia$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/camellia.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/camellia.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_camellia$(ObjectSuffix) -MF$(IntermediateDirectory)/library_camellia$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_camellia$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_camellia$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/camellia.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_camellia$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/camellia.c

$(IntermediateDirectory)/library_ccm$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ccm.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ccm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ccm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ccm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ccm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ccm$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ccm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ccm$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ccm.c

$(IntermediateDirectory)/library_certs$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/certs.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/certs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_certs$(ObjectSuffix) -MF$(IntermediateDirectory)/library_certs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_certs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_certs$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/certs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_certs$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/certs.c

$(IntermediateDirectory)/library_cipher$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/cipher.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/cipher.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cipher$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cipher$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cipher$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cipher$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/cipher.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cipher$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/cipher.c

$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/cipher_wrap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/cipher_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cipher_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cipher_wrap$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/cipher_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cipher_wrap$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/cipher_wrap.c

$(IntermediateDirectory)/library_cmac$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/cmac.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/cmac.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cmac$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cmac$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cmac$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cmac$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/cmac.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cmac$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/cmac.c

$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ctr_drbg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ctr_drbg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ctr_drbg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ctr_drbg$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ctr_drbg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ctr_drbg$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ctr_drbg.c

$(IntermediateDirectory)/library_debug$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/debug.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/debug.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_debug$(ObjectSuffix) -MF$(IntermediateDirectory)/library_debug$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_debug$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_debug$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/debug.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_debug$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/debug.c

$(IntermediateDirectory)/library_des$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/des.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/des.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_des$(ObjectSuffix) -MF$(IntermediateDirectory)/library_des$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_des$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_des$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/des.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_des$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/des.c

$(IntermediateDirectory)/library_dhm$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/dhm.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/dhm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_dhm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_dhm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_dhm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_dhm$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/dhm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_dhm$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/dhm.c

$(IntermediateDirectory)/library_ecdh$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ecdh.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ecdh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdh$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdh$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ecdh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdh$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ecdh.c

$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ecdsa.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ecdsa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdsa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdsa$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ecdsa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdsa$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ecdsa.c

$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ecjpake.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ecjpake.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecjpake$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecjpake$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ecjpake.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecjpake$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ecjpake.c

$(IntermediateDirectory)/library_ecp$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ecp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ecp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ecp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ecp.c

$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ecp_curves.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ecp_curves.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp_curves$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp_curves$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ecp_curves.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp_curves$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ecp_curves.c

$(IntermediateDirectory)/library_entropy$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/entropy.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/entropy.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_entropy$(ObjectSuffix) -MF$(IntermediateDirectory)/library_entropy$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_entropy$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_entropy$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/entropy.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_entropy$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/entropy.c

$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/entropy_poll.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/entropy_poll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) -MF$(IntermediateDirectory)/library_entropy_poll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_entropy_poll$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/entropy_poll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_entropy_poll$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/entropy_poll.c

$(IntermediateDirectory)/library_error$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/error.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/error.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_error$(ObjectSuffix) -MF$(IntermediateDirectory)/library_error$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_error$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_error$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/error.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_error$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/error.c

$(IntermediateDirectory)/library_gcm$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/gcm.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/gcm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_gcm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_gcm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_gcm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_gcm$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/gcm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_gcm$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/gcm.c

$(IntermediateDirectory)/library_havege$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/havege.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/havege.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_havege$(ObjectSuffix) -MF$(IntermediateDirectory)/library_havege$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_havege$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_havege$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/havege.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_havege$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/havege.c

$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/hmac_drbg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/hmac_drbg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) -MF$(IntermediateDirectory)/library_hmac_drbg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_hmac_drbg$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/hmac_drbg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_hmac_drbg$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/hmac_drbg.c

$(IntermediateDirectory)/library_md$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/md.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/md.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/md.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/md.c

$(IntermediateDirectory)/library_md2$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/md2.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/md2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md2$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md2$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/md2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md2$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/md2.c

$(IntermediateDirectory)/library_md4$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/md4.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/md4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md4$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md4$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/md4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md4$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/md4.c

$(IntermediateDirectory)/library_md5$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/md5.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/md5.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md5$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md5$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md5$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md5$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/md5.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md5$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/md5.c

$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/md_wrap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/md_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md_wrap$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/md_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md_wrap$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/md_wrap.c

$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/memory_buffer_alloc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/memory_buffer_alloc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) -MF$(IntermediateDirectory)/library_memory_buffer_alloc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_memory_buffer_alloc$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/memory_buffer_alloc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_memory_buffer_alloc$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/memory_buffer_alloc.c

$(IntermediateDirectory)/library_net_sockets$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/net_sockets.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/net_sockets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_net_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/library_net_sockets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_net_sockets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_net_sockets$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/net_sockets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_net_sockets$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/net_sockets.c

$(IntermediateDirectory)/library_oid$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/oid.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/oid.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_oid$(ObjectSuffix) -MF$(IntermediateDirectory)/library_oid$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_oid$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_oid$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/oid.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_oid$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/oid.c

$(IntermediateDirectory)/library_padlock$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/padlock.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/padlock.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_padlock$(ObjectSuffix) -MF$(IntermediateDirectory)/library_padlock$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_padlock$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_padlock$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/padlock.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_padlock$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/padlock.c

$(IntermediateDirectory)/library_pem$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pem.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pem$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pem$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pem$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pem.c

$(IntermediateDirectory)/library_pk$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pk.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pk.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pk$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pk$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pk$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pk$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pk.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pk$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pk.c

$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pkcs11.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pkcs11.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs11$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs11$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pkcs11.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs11$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pkcs11.c

$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pkcs12.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pkcs12.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs12$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs12$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pkcs12.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs12$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pkcs12.c

$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pkcs5.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pkcs5.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs5$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs5$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pkcs5.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs5$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pkcs5.c

$(IntermediateDirectory)/library_pkparse$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pkparse.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pkparse.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkparse$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkparse$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkparse$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkparse$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pkparse.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkparse$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pkparse.c

$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pkwrite.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pkwrite.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkwrite$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkwrite$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pkwrite.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkwrite$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pkwrite.c

$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/pk_wrap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/pk_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pk_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pk_wrap$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/pk_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pk_wrap$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/pk_wrap.c

$(IntermediateDirectory)/library_platform$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/platform.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/platform.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_platform$(ObjectSuffix) -MF$(IntermediateDirectory)/library_platform$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_platform$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_platform$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/platform.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_platform$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/platform.c

$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ripemd160.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ripemd160.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ripemd160$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ripemd160$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ripemd160.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ripemd160$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ripemd160.c

$(IntermediateDirectory)/library_rsa$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/rsa.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/rsa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_rsa$(ObjectSuffix) -MF$(IntermediateDirectory)/library_rsa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_rsa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_rsa$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/rsa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_rsa$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/rsa.c

$(IntermediateDirectory)/library_rsa_internal$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/rsa_internal.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/rsa_internal.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_rsa_internal$(ObjectSuffix) -MF$(IntermediateDirectory)/library_rsa_internal$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_rsa_internal$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_rsa_internal$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/rsa_internal.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_rsa_internal$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/rsa_internal.c

$(IntermediateDirectory)/library_sha1$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/sha1.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/sha1.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha1$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha1$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha1$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha1$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/sha1.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha1$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/sha1.c

$(IntermediateDirectory)/library_sha256$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/sha256.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/sha256.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha256$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha256$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha256$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha256$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/sha256.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha256$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/sha256.c

$(IntermediateDirectory)/library_sha512$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/sha512.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/sha512.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha512$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha512$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha512$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha512$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/sha512.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha512$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/sha512.c

$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cache.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_cache.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cache$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cache$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cache.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cache$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_cache.c

$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_ciphersuites.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_ciphersuites.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_ciphersuites$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_ciphersuites$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_ciphersuites.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_ciphersuites$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_ciphersuites.c

$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cli.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_cli.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cli$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cli$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cli.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cli$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_cli.c

$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cookie.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_cookie.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cookie$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cookie$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_cookie.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cookie$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_cookie.c

$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_srv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_srv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_srv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_srv$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_srv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_srv$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_srv.c

$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_ticket.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_ticket.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_ticket$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_ticket$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_ticket.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_ticket$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_ticket.c

$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/ssl_tls.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/ssl_tls.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_tls$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_tls$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/ssl_tls.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_tls$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/ssl_tls.c

$(IntermediateDirectory)/library_threading$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/threading.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/threading.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_threading$(ObjectSuffix) -MF$(IntermediateDirectory)/library_threading$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_threading$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_threading$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/threading.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_threading$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/threading.c

$(IntermediateDirectory)/library_timing$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/timing.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/timing.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_timing$(ObjectSuffix) -MF$(IntermediateDirectory)/library_timing$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_timing$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_timing$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/timing.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_timing$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/timing.c

$(IntermediateDirectory)/library_version$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/version.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/version.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_version$(ObjectSuffix) -MF$(IntermediateDirectory)/library_version$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_version$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_version$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/version.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_version$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/version.c

$(IntermediateDirectory)/library_version_features$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/version_features.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/version_features.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_version_features$(ObjectSuffix) -MF$(IntermediateDirectory)/library_version_features$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_version_features$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_version_features$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/version_features.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_version_features$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/version_features.c

$(IntermediateDirectory)/library_x509$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509.c

$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509write_crt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509write_crt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509write_crt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509write_crt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509write_crt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509write_crt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509write_crt.c

$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509write_csr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509write_csr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509write_csr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509write_csr$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509write_csr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509write_csr$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509write_csr.c

$(IntermediateDirectory)/library_x509_create$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509_create.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509_create.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_create$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_create$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_create$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_create$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509_create.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_create$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509_create.c

$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509_crl.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509_crl.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_crl$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_crl$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509_crl.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_crl$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509_crl.c

$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509_crt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509_crt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_crt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_crt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509_crt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_crt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509_crt.c

$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/x509_csr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/x509_csr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_csr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_csr$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/x509_csr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_csr$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/x509_csr.c

$(IntermediateDirectory)/library_xtea$(ObjectSuffix): ../../../../../../../src/app/mbedtls/library/xtea.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/library/xtea.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_xtea$(ObjectSuffix) -MF$(IntermediateDirectory)/library_xtea$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_xtea$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_xtea$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/library/xtea.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_xtea$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/library/xtea.c

$(IntermediateDirectory)/ports_aes_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/aes_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/aes_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_aes_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_aes_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_aes_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_aes_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/aes_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_aes_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/aes_alt.c

$(IntermediateDirectory)/ports_arc4_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/arc4_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/arc4_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_arc4_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_arc4_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_arc4_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_arc4_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/arc4_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_arc4_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/arc4_alt.c

$(IntermediateDirectory)/ports_des_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/des_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/des_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_des_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_des_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_des_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_des_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/des_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_des_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/des_alt.c

$(IntermediateDirectory)/ports_hardware_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/hardware_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/hardware_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_hardware_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_hardware_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_hardware_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_hardware_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/hardware_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_hardware_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/hardware_alt.c

$(IntermediateDirectory)/ports_md5_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/md5_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/md5_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_md5_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_md5_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_md5_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_md5_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/md5_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_md5_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/md5_alt.c

$(IntermediateDirectory)/ports_net_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/net_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/net_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_net_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_net_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_net_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_net_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/net_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_net_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/net_alt.c

$(IntermediateDirectory)/ports_sha1_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/sha1_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/sha1_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_sha1_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_sha1_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_sha1_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_sha1_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/sha1_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_sha1_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/sha1_alt.c

$(IntermediateDirectory)/ports_timing_alt$(ObjectSuffix): ../../../../../../../src/app/mbedtls/ports/timing_alt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mbedtls/ports/timing_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ports_timing_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/ports_timing_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ports_timing_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ports_timing_alt$(PreprocessSuffix): ../../../../../../../src/app/mbedtls/ports/timing_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ports_timing_alt$(PreprocessSuffix) ../../../../../../../src/app/mbedtls/ports/timing_alt.c

$(IntermediateDirectory)/mDNSCore_mDNS$(ObjectSuffix): ../../../../../../../src/app/mDNS/mDNSCore/mDNS.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mDNS/mDNSCore/mDNS.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/mDNSCore_mDNS$(ObjectSuffix) -MF$(IntermediateDirectory)/mDNSCore_mDNS$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/mDNSCore_mDNS$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/mDNSCore_mDNS$(PreprocessSuffix): ../../../../../../../src/app/mDNS/mDNSCore/mDNS.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mDNSCore_mDNS$(PreprocessSuffix) ../../../../../../../src/app/mDNS/mDNSCore/mDNS.c

$(IntermediateDirectory)/mDNSPosix_mDNSPosix$(ObjectSuffix): ../../../../../../../src/app/mDNS/mDNSPosix/mDNSPosix.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/app/mDNS/mDNSPosix/mDNSPosix.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/mDNSPosix_mDNSPosix$(ObjectSuffix) -MF$(IntermediateDirectory)/mDNSPosix_mDNSPosix$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/mDNSPosix_mDNSPosix$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/mDNSPosix_mDNSPosix$(PreprocessSuffix): ../../../../../../../src/app/mDNS/mDNSPosix/mDNSPosix.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mDNSPosix_mDNSPosix$(PreprocessSuffix) ../../../../../../../src/app/mDNS/mDNSPosix/mDNSPosix.c

$(IntermediateDirectory)/api_api_lib$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/api_lib.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/api_lib.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_lib$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_api_lib$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/api_lib.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_lib$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/api_lib.c

$(IntermediateDirectory)/api_api_msg$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/api_msg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/api_msg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_msg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_api_msg$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/api_msg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_msg$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/api_msg.c

$(IntermediateDirectory)/api_err$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/err.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/err.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_err$(ObjectSuffix) -MF$(IntermediateDirectory)/api_err$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_err$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_err$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/err.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_err$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/err.c

$(IntermediateDirectory)/api_netbuf$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/netbuf.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/netbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netbuf$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/netbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netbuf$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/netbuf.c

$(IntermediateDirectory)/api_netdb$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/netdb.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/netdb.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netdb$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netdb$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netdb$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/netdb.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netdb$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/netdb.c

$(IntermediateDirectory)/api_netifapi$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/netifapi.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/netifapi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netifapi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netifapi$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/netifapi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netifapi$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/netifapi.c

$(IntermediateDirectory)/api_if_api$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/if_api.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/if_api.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_if_api$(ObjectSuffix) -MF$(IntermediateDirectory)/api_if_api$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_if_api$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_if_api$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/if_api.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_if_api$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/if_api.c

$(IntermediateDirectory)/api_sockets$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/sockets.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/sockets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/api_sockets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_sockets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_sockets$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/sockets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_sockets$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/sockets.c

$(IntermediateDirectory)/api_tcpip$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/api/tcpip.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/api/tcpip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) -MF$(IntermediateDirectory)/api_tcpip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_tcpip$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/api/tcpip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_tcpip$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/api/tcpip.c

$(IntermediateDirectory)/core_alg$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/alg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/alg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_alg$(ObjectSuffix) -MF$(IntermediateDirectory)/core_alg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_alg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_alg$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/alg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_alg$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/alg.c

$(IntermediateDirectory)/core_altcp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/altcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_altcp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_altcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_altcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_altcp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_altcp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/altcp.c

$(IntermediateDirectory)/core_altcp_alloc$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp_alloc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/altcp_alloc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_altcp_alloc$(ObjectSuffix) -MF$(IntermediateDirectory)/core_altcp_alloc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_altcp_alloc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_altcp_alloc$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp_alloc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_altcp_alloc$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/altcp_alloc.c

$(IntermediateDirectory)/core_altcp_tcp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp_tcp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/altcp_tcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_altcp_tcp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_altcp_tcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_altcp_tcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_altcp_tcp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/altcp_tcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_altcp_tcp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/altcp_tcp.c

$(IntermediateDirectory)/core_def$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/def.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/def.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_def$(ObjectSuffix) -MF$(IntermediateDirectory)/core_def$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_def$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_def$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/def.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_def$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/def.c

$(IntermediateDirectory)/core_dns$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/dns.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/dns.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_dns$(ObjectSuffix) -MF$(IntermediateDirectory)/core_dns$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_dns$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_dns$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/dns.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_dns$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/dns.c

$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/inet_chksum.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/inet_chksum.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) -MF$(IntermediateDirectory)/core_inet_chksum$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_inet_chksum$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/inet_chksum.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_inet_chksum$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/inet_chksum.c

$(IntermediateDirectory)/core_init$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/init.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_init$(ObjectSuffix) -MF$(IntermediateDirectory)/core_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_init$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_init$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/init.c

$(IntermediateDirectory)/core_ip$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ip.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_ip$(ObjectSuffix) -MF$(IntermediateDirectory)/core_ip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_ip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_ip$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_ip$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ip.c

$(IntermediateDirectory)/core_mem$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/mem.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/core_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_mem$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_mem$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/mem.c

$(IntermediateDirectory)/core_memp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/memp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/memp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_memp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_memp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_memp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/memp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_memp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/memp.c

$(IntermediateDirectory)/core_netif$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/netif.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/netif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_netif$(ObjectSuffix) -MF$(IntermediateDirectory)/core_netif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_netif$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/netif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_netif$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/netif.c

$(IntermediateDirectory)/core_pbuf$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/pbuf.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/pbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/core_pbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_pbuf$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/pbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_pbuf$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/pbuf.c

$(IntermediateDirectory)/core_raw$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/raw.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/raw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_raw$(ObjectSuffix) -MF$(IntermediateDirectory)/core_raw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_raw$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/raw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_raw$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/raw.c

$(IntermediateDirectory)/core_stats$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/stats.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/stats.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_stats$(ObjectSuffix) -MF$(IntermediateDirectory)/core_stats$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_stats$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_stats$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/stats.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_stats$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/stats.c

$(IntermediateDirectory)/core_sys$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/sys.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/sys.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_sys$(ObjectSuffix) -MF$(IntermediateDirectory)/core_sys$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_sys$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/sys.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_sys$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/sys.c

$(IntermediateDirectory)/core_tcp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/tcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/tcp.c

$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp_in.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/tcp_in.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_in$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp_in$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp_in.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_in$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/tcp_in.c

$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp_out.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/tcp_out.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_out$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp_out$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/tcp_out.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_out$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/tcp_out.c

$(IntermediateDirectory)/core_timeouts$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/timeouts.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/timeouts.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) -MF$(IntermediateDirectory)/core_timeouts$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_timeouts$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/timeouts.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_timeouts$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/timeouts.c

$(IntermediateDirectory)/core_udp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/udp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/udp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_udp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_udp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_udp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/udp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_udp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/udp.c

$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/netif/ethernet.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/netif/ethernet.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernet$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_ethernet$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/netif/ethernet.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernet$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/netif/ethernet.c

$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/netif/ethernetif.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/netif/ethernetif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernetif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_ethernetif$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/netif/ethernetif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernetif$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/netif/ethernetif.c

$(IntermediateDirectory)/netif_wm_ethernet$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/netif/wm_ethernet.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/netif/wm_ethernet.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_wm_ethernet$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_wm_ethernet$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_wm_ethernet$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_wm_ethernet$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/netif/wm_ethernet.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_wm_ethernet$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/netif/wm_ethernet.c

$(IntermediateDirectory)/bsp_board_init$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/board_init.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/board_init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_board_init$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_board_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_board_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bsp_board_init$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/board_init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_board_init$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/board_init.c

$(IntermediateDirectory)/bsp_isr$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/isr.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/isr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_isr$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_isr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_isr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bsp_isr$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/isr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_isr$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/isr.c

$(IntermediateDirectory)/bsp_startup$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/startup.S  
	$(AS) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/startup.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_startup$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_startup$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_startup$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/bsp_startup$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/startup.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_startup$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/startup.S

$(IntermediateDirectory)/bsp_system$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/system.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/system.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_system$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_system$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_system$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bsp_system$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/system.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_system$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/system.c

$(IntermediateDirectory)/bsp_trap_c$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/trap_c.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/trap_c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_trap_c$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_trap_c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_trap_c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bsp_trap_c$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/trap_c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_trap_c$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/trap_c.c

$(IntermediateDirectory)/bsp_vectors$(ObjectSuffix): ../../../../../../../platform/arch/xt804/bsp/vectors.S  
	$(AS) $(SourceSwitch) ../../../../../../../platform/arch/xt804/bsp/vectors.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bsp_vectors$(ObjectSuffix) -MF$(IntermediateDirectory)/bsp_vectors$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bsp_vectors$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/bsp_vectors$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/bsp/vectors.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bsp_vectors$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/bsp/vectors.S

$(IntermediateDirectory)/libc_libc_port$(ObjectSuffix): ../../../../../../../platform/arch/xt804/libc/libc_port.c  
	$(CC) $(SourceSwitch) ../../../../../../../platform/arch/xt804/libc/libc_port.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/libc_libc_port$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_libc_port$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/libc_libc_port$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/libc_libc_port$(PreprocessSuffix): ../../../../../../../platform/arch/xt804/libc/libc_port.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_libc_port$(PreprocessSuffix) ../../../../../../../platform/arch/xt804/libc/libc_port.c

$(IntermediateDirectory)/benchmark_lv_demo_benchmark$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/lv_demo_benchmark.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/lv_demo_benchmark.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/benchmark_lv_demo_benchmark$(ObjectSuffix) -MF$(IntermediateDirectory)/benchmark_lv_demo_benchmark$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/benchmark_lv_demo_benchmark$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/benchmark_lv_demo_benchmark$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/lv_demo_benchmark.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/benchmark_lv_demo_benchmark$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/lv_demo_benchmark.c

$(IntermediateDirectory)/keypad_encoder_lv_demo_keypad_encoder$(ObjectSuffix): ../../../../../../../components/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/keypad_encoder_lv_demo_keypad_encoder$(ObjectSuffix) -MF$(IntermediateDirectory)/keypad_encoder_lv_demo_keypad_encoder$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/keypad_encoder_lv_demo_keypad_encoder$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/keypad_encoder_lv_demo_keypad_encoder$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/keypad_encoder_lv_demo_keypad_encoder$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c

$(IntermediateDirectory)/music_lv_demo_music$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/lv_demo_music.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/music_lv_demo_music$(ObjectSuffix) -MF$(IntermediateDirectory)/music_lv_demo_music$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/music_lv_demo_music$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/music_lv_demo_music$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/music_lv_demo_music$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/lv_demo_music.c

$(IntermediateDirectory)/music_lv_demo_music_list$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music_list.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/lv_demo_music_list.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/music_lv_demo_music_list$(ObjectSuffix) -MF$(IntermediateDirectory)/music_lv_demo_music_list$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/music_lv_demo_music_list$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/music_lv_demo_music_list$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music_list.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/music_lv_demo_music_list$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/lv_demo_music_list.c

$(IntermediateDirectory)/music_lv_demo_music_main$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music_main.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/lv_demo_music_main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/music_lv_demo_music_main$(ObjectSuffix) -MF$(IntermediateDirectory)/music_lv_demo_music_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/music_lv_demo_music_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/music_lv_demo_music_main$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/lv_demo_music_main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/music_lv_demo_music_main$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/lv_demo_music_main.c

$(IntermediateDirectory)/stress_lv_demo_stress$(ObjectSuffix): ../../../../../../../components/lvgl/demos/stress/lv_demo_stress.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/stress/lv_demo_stress.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/stress_lv_demo_stress$(ObjectSuffix) -MF$(IntermediateDirectory)/stress_lv_demo_stress$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/stress_lv_demo_stress$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/stress_lv_demo_stress$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/stress/lv_demo_stress.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/stress_lv_demo_stress$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/stress/lv_demo_stress.c

$(IntermediateDirectory)/widgets_lv_demo_widgets$(ObjectSuffix): ../../../../../../../components/lvgl/demos/widgets/lv_demo_widgets.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/widgets/lv_demo_widgets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_demo_widgets$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_demo_widgets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_demo_widgets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_demo_widgets$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/widgets/lv_demo_widgets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_demo_widgets$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/widgets/lv_demo_widgets.c

$(IntermediateDirectory)/rt-thread_lv_rt_thread_port$(ObjectSuffix): ../../../../../../../components/lvgl/env_support/rt-thread/lv_rt_thread_port.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/env_support/rt-thread/lv_rt_thread_port.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rt-thread_lv_rt_thread_port$(ObjectSuffix) -MF$(IntermediateDirectory)/rt-thread_lv_rt_thread_port$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rt-thread_lv_rt_thread_port$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rt-thread_lv_rt_thread_port$(PreprocessSuffix): ../../../../../../../components/lvgl/env_support/rt-thread/lv_rt_thread_port.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rt-thread_lv_rt_thread_port$(PreprocessSuffix) ../../../../../../../components/lvgl/env_support/rt-thread/lv_rt_thread_port.c

$(IntermediateDirectory)/core_lv_disp$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_disp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_disp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_disp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_disp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_disp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_disp$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_disp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_disp$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_disp.c

$(IntermediateDirectory)/core_lv_event$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_event.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_event.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_event$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_event$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_event$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_event$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_event.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_event$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_event.c

$(IntermediateDirectory)/core_lv_group$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_group.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_group.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_group$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_group$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_group$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_group$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_group.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_group$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_group.c

$(IntermediateDirectory)/core_lv_indev$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_indev.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_indev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_indev$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_indev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_indev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_indev$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_indev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_indev$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_indev.c

$(IntermediateDirectory)/core_lv_indev_scroll$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_indev_scroll.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_indev_scroll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_indev_scroll$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_indev_scroll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_indev_scroll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_indev_scroll$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_indev_scroll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_indev_scroll$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_indev_scroll.c

$(IntermediateDirectory)/core_lv_obj$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj.c

$(IntermediateDirectory)/core_lv_obj_class$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_class.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_class.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_class$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_class$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_class$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_class$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_class.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_class$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_class.c

$(IntermediateDirectory)/core_lv_obj_draw$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_draw.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_draw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_draw$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_draw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_draw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_draw$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_draw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_draw$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_draw.c

$(IntermediateDirectory)/core_lv_obj_pos$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_pos.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_pos.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_pos$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_pos$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_pos$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_pos$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_pos.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_pos$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_pos.c

$(IntermediateDirectory)/core_lv_obj_scroll$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_scroll.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_scroll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_scroll$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_scroll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_scroll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_scroll$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_scroll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_scroll$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_scroll.c

$(IntermediateDirectory)/core_lv_obj_style$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_style.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_style.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_style$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_style$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_style$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_style$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_style.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_style$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_style.c

$(IntermediateDirectory)/core_lv_obj_style_gen$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_style_gen.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_style_gen.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_style_gen$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_style_gen$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_style_gen$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_style_gen$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_style_gen.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_style_gen$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_style_gen.c

$(IntermediateDirectory)/core_lv_obj_tree$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_tree.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_obj_tree.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_obj_tree$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_obj_tree$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_obj_tree$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_obj_tree$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_obj_tree.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_obj_tree$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_obj_tree.c

$(IntermediateDirectory)/core_lv_refr$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_refr.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_refr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_refr$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_refr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_refr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_refr$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_refr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_refr$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_refr.c

$(IntermediateDirectory)/core_lv_theme$(ObjectSuffix): ../../../../../../../components/lvgl/src/core/lv_theme.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/core/lv_theme.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_lv_theme$(ObjectSuffix) -MF$(IntermediateDirectory)/core_lv_theme$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_lv_theme$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_lv_theme$(PreprocessSuffix): ../../../../../../../components/lvgl/src/core/lv_theme.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_lv_theme$(PreprocessSuffix) ../../../../../../../components/lvgl/src/core/lv_theme.c

$(IntermediateDirectory)/draw_lv_draw$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw.c

$(IntermediateDirectory)/draw_lv_draw_arc$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_arc.c

$(IntermediateDirectory)/draw_lv_draw_img$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_img.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_img.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_img$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_img$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_img$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_img$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_img.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_img$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_img.c

$(IntermediateDirectory)/draw_lv_draw_label$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_label.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_label.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_label$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_label$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_label$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_label$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_label.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_label$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_label.c

$(IntermediateDirectory)/draw_lv_draw_layer$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_layer.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_layer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_layer$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_layer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_layer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_layer$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_layer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_layer$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_layer.c

$(IntermediateDirectory)/draw_lv_draw_line$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_line.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_line.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_line$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_line$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_line$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_line$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_line.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_line$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_line.c

$(IntermediateDirectory)/draw_lv_draw_mask$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_mask.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_mask.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_mask$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_mask$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_mask$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_mask$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_mask.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_mask$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_mask.c

$(IntermediateDirectory)/draw_lv_draw_rect$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_rect.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_rect.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_rect$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_rect$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_rect$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_rect$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_rect.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_rect$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_rect.c

$(IntermediateDirectory)/draw_lv_draw_transform$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_transform.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_transform.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_transform$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_transform$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_transform$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_transform$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_transform.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_transform$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_transform.c

$(IntermediateDirectory)/draw_lv_draw_triangle$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_triangle.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_draw_triangle.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_draw_triangle$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_draw_triangle$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_draw_triangle$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_draw_triangle$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_draw_triangle.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_draw_triangle$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_draw_triangle.c

$(IntermediateDirectory)/draw_lv_img_buf$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_buf.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_img_buf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_img_buf$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_img_buf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_img_buf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_img_buf$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_buf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_img_buf$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_img_buf.c

$(IntermediateDirectory)/draw_lv_img_cache$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_cache.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_img_cache.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_img_cache$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_img_cache$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_img_cache$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_img_cache$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_cache.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_img_cache$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_img_cache.c

$(IntermediateDirectory)/draw_lv_img_decoder$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_decoder.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/lv_img_decoder.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/draw_lv_img_decoder$(ObjectSuffix) -MF$(IntermediateDirectory)/draw_lv_img_decoder$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/draw_lv_img_decoder$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/draw_lv_img_decoder$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/lv_img_decoder.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/draw_lv_img_decoder$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/lv_img_decoder.c

$(IntermediateDirectory)/extra_lv_extra$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/lv_extra.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/lv_extra.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/extra_lv_extra$(ObjectSuffix) -MF$(IntermediateDirectory)/extra_lv_extra$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/extra_lv_extra$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/extra_lv_extra$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/lv_extra.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/extra_lv_extra$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/lv_extra.c

$(IntermediateDirectory)/font_lv_font$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font.c

$(IntermediateDirectory)/font_lv_font_dejavu_16_persian_hebrew$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_dejavu_16_persian_hebrew$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_dejavu_16_persian_hebrew$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_dejavu_16_persian_hebrew$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_dejavu_16_persian_hebrew$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_dejavu_16_persian_hebrew$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c

$(IntermediateDirectory)/font_lv_font_fmt_txt$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_fmt_txt.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_fmt_txt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_fmt_txt$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_fmt_txt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_fmt_txt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_fmt_txt$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_fmt_txt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_fmt_txt$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_fmt_txt.c

$(IntermediateDirectory)/font_lv_font_loader$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_loader.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_loader.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_loader$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_loader$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_loader$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_loader$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_loader.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_loader$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_loader.c

$(IntermediateDirectory)/font_lv_font_montserrat_10$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_10.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_10.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_10$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_10$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_10$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_10$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_10.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_10$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_10.c

$(IntermediateDirectory)/font_lv_font_montserrat_12$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_12$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_12$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_12$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_12$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_12$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12.c

$(IntermediateDirectory)/font_lv_font_montserrat_12_subpx$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12_subpx.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12_subpx.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_12_subpx$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_12_subpx$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_12_subpx$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_12_subpx$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12_subpx.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_12_subpx$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_12_subpx.c

$(IntermediateDirectory)/font_lv_font_montserrat_14$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_14.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_14.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_14$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_14$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_14$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_14$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_14.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_14$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_14.c

$(IntermediateDirectory)/font_lv_font_montserrat_16$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_16.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_16.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_16$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_16$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_16$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_16$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_16.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_16$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_16.c

$(IntermediateDirectory)/font_lv_font_montserrat_18$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_18.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_18.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_18$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_18$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_18$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_18$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_18.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_18$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_18.c

$(IntermediateDirectory)/font_lv_font_montserrat_20$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_20.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_20.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_20$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_20$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_20$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_20$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_20.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_20$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_20.c

$(IntermediateDirectory)/font_lv_font_montserrat_22$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_22.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_22.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_22$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_22$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_22$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_22$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_22.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_22$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_22.c

$(IntermediateDirectory)/font_lv_font_montserrat_24$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_24.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_24.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_24$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_24$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_24$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_24$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_24.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_24$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_24.c

$(IntermediateDirectory)/font_lv_font_montserrat_26$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_26.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_26.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_26$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_26$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_26$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_26$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_26.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_26$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_26.c

$(IntermediateDirectory)/font_lv_font_montserrat_28$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_28$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_28$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_28$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_28$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_28$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28.c

$(IntermediateDirectory)/font_lv_font_montserrat_28_compressed$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28_compressed.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28_compressed.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_28_compressed$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_28_compressed$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_28_compressed$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_28_compressed$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28_compressed.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_28_compressed$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_28_compressed.c

$(IntermediateDirectory)/font_lv_font_montserrat_30$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_30.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_30.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_30$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_30$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_30$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_30$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_30.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_30$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_30.c

$(IntermediateDirectory)/font_lv_font_montserrat_32$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_32.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_32.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_32$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_32$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_32$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_32$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_32.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_32$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_32.c

$(IntermediateDirectory)/font_lv_font_montserrat_34$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_34.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_34.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_34$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_34$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_34$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_34$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_34.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_34$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_34.c

$(IntermediateDirectory)/font_lv_font_montserrat_36$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_36.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_36.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_36$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_36$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_36$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_36$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_36.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_36$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_36.c

$(IntermediateDirectory)/font_lv_font_montserrat_38$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_38.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_38.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_38$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_38$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_38$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_38$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_38.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_38$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_38.c

$(IntermediateDirectory)/font_lv_font_montserrat_40$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_40.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_40.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_40$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_40$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_40$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_40$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_40.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_40$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_40.c

$(IntermediateDirectory)/font_lv_font_montserrat_42$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_42.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_42.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_42$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_42$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_42$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_42$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_42.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_42$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_42.c

$(IntermediateDirectory)/font_lv_font_montserrat_44$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_44.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_44.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_44$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_44$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_44$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_44$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_44.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_44$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_44.c

$(IntermediateDirectory)/font_lv_font_montserrat_46$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_46.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_46.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_46$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_46$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_46$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_46$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_46.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_46$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_46.c

$(IntermediateDirectory)/font_lv_font_montserrat_48$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_48.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_48.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_48$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_48$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_48$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_48$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_48.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_48$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_48.c

$(IntermediateDirectory)/font_lv_font_montserrat_8$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_8.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_8.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_montserrat_8$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_montserrat_8$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_montserrat_8$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_montserrat_8$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_montserrat_8.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_montserrat_8$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_montserrat_8.c

$(IntermediateDirectory)/font_lv_font_simsun_16_cjk$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_simsun_16_cjk.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_simsun_16_cjk.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_simsun_16_cjk$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_simsun_16_cjk$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_simsun_16_cjk$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_simsun_16_cjk$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_simsun_16_cjk.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_simsun_16_cjk$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_simsun_16_cjk.c

$(IntermediateDirectory)/font_lv_font_unscii_16$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_unscii_16.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_unscii_16.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_unscii_16$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_unscii_16$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_unscii_16$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_unscii_16$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_unscii_16.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_unscii_16$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_unscii_16.c

$(IntermediateDirectory)/font_lv_font_unscii_8$(ObjectSuffix): ../../../../../../../components/lvgl/src/font/lv_font_unscii_8.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/font/lv_font_unscii_8.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/font_lv_font_unscii_8$(ObjectSuffix) -MF$(IntermediateDirectory)/font_lv_font_unscii_8$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/font_lv_font_unscii_8$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/font_lv_font_unscii_8$(PreprocessSuffix): ../../../../../../../components/lvgl/src/font/lv_font_unscii_8.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/font_lv_font_unscii_8$(PreprocessSuffix) ../../../../../../../components/lvgl/src/font/lv_font_unscii_8.c

$(IntermediateDirectory)/hal_lv_hal_disp$(ObjectSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_disp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/hal/lv_hal_disp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/hal_lv_hal_disp$(ObjectSuffix) -MF$(IntermediateDirectory)/hal_lv_hal_disp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/hal_lv_hal_disp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/hal_lv_hal_disp$(PreprocessSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_disp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hal_lv_hal_disp$(PreprocessSuffix) ../../../../../../../components/lvgl/src/hal/lv_hal_disp.c

$(IntermediateDirectory)/hal_lv_hal_indev$(ObjectSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_indev.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/hal/lv_hal_indev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/hal_lv_hal_indev$(ObjectSuffix) -MF$(IntermediateDirectory)/hal_lv_hal_indev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/hal_lv_hal_indev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/hal_lv_hal_indev$(PreprocessSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_indev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hal_lv_hal_indev$(PreprocessSuffix) ../../../../../../../components/lvgl/src/hal/lv_hal_indev.c

$(IntermediateDirectory)/hal_lv_hal_tick$(ObjectSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_tick.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/hal/lv_hal_tick.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/hal_lv_hal_tick$(ObjectSuffix) -MF$(IntermediateDirectory)/hal_lv_hal_tick$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/hal_lv_hal_tick$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/hal_lv_hal_tick$(PreprocessSuffix): ../../../../../../../components/lvgl/src/hal/lv_hal_tick.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hal_lv_hal_tick$(PreprocessSuffix) ../../../../../../../components/lvgl/src/hal/lv_hal_tick.c

$(IntermediateDirectory)/misc_lv_anim$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_anim.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_anim.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_anim$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_anim$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_anim$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_anim$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_anim.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_anim$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_anim.c

$(IntermediateDirectory)/misc_lv_anim_timeline$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_anim_timeline.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_anim_timeline.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_anim_timeline$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_anim_timeline$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_anim_timeline$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_anim_timeline$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_anim_timeline.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_anim_timeline$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_anim_timeline.c

$(IntermediateDirectory)/misc_lv_area$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_area.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_area.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_area$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_area$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_area$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_area$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_area.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_area$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_area.c

$(IntermediateDirectory)/misc_lv_async$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_async.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_async.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_async$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_async$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_async$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_async$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_async.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_async$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_async.c

$(IntermediateDirectory)/misc_lv_bidi$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_bidi.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_bidi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_bidi$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_bidi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_bidi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_bidi$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_bidi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_bidi$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_bidi.c

$(IntermediateDirectory)/misc_lv_color$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_color.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_color.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_color$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_color$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_color$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_color$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_color.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_color$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_color.c

$(IntermediateDirectory)/misc_lv_fs$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_fs.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_fs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_fs$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_fs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_fs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_fs$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_fs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_fs$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_fs.c

$(IntermediateDirectory)/misc_lv_gc$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_gc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_gc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_gc$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_gc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_gc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_gc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_gc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_gc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_gc.c

$(IntermediateDirectory)/misc_lv_ll$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_ll.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_ll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_ll$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_ll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_ll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_ll$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_ll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_ll$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_ll.c

$(IntermediateDirectory)/misc_lv_log$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_log.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_log.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_log$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_log$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_log$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_log$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_log.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_log$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_log.c

$(IntermediateDirectory)/misc_lv_lru$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_lru.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_lru.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_lru$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_lru$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_lru$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_lru$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_lru.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_lru$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_lru.c

$(IntermediateDirectory)/misc_lv_math$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_math.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_math.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_math$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_math$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_math$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_math$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_math.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_math$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_math.c

$(IntermediateDirectory)/misc_lv_mem$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_mem.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_mem$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_mem$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_mem.c

$(IntermediateDirectory)/misc_lv_printf$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_printf.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_printf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_printf$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_printf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_printf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_printf$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_printf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_printf$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_printf.c

$(IntermediateDirectory)/misc_lv_style$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_style.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_style.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_style$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_style$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_style$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_style$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_style.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_style$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_style.c

$(IntermediateDirectory)/misc_lv_style_gen$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_style_gen.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_style_gen.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_style_gen$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_style_gen$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_style_gen$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_style_gen$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_style_gen.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_style_gen$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_style_gen.c

$(IntermediateDirectory)/misc_lv_templ$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_templ.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_templ.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_templ$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_templ$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_templ$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_templ$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_templ.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_templ$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_templ.c

$(IntermediateDirectory)/misc_lv_timer$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_timer.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_timer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_timer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_timer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_timer$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_timer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_timer$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_timer.c

$(IntermediateDirectory)/misc_lv_tlsf$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_tlsf.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_tlsf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_tlsf$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_tlsf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_tlsf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_tlsf$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_tlsf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_tlsf$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_tlsf.c

$(IntermediateDirectory)/misc_lv_txt$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_txt.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_txt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_txt$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_txt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_txt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_txt$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_txt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_txt$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_txt.c

$(IntermediateDirectory)/misc_lv_txt_ap$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_txt_ap.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_txt_ap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_txt_ap$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_txt_ap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_txt_ap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_txt_ap$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_txt_ap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_txt_ap$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_txt_ap.c

$(IntermediateDirectory)/misc_lv_utils$(ObjectSuffix): ../../../../../../../components/lvgl/src/misc/lv_utils.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/misc/lv_utils.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_lv_utils$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_lv_utils$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_lv_utils$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_lv_utils$(PreprocessSuffix): ../../../../../../../components/lvgl/src/misc/lv_utils.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_lv_utils$(PreprocessSuffix) ../../../../../../../components/lvgl/src/misc/lv_utils.c

$(IntermediateDirectory)/widgets_lv_arc$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_arc.c

$(IntermediateDirectory)/widgets_lv_bar$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_bar.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_bar.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_bar$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_bar$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_bar$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_bar$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_bar.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_bar$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_bar.c

$(IntermediateDirectory)/widgets_lv_btn$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_btn.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_btn.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_btn$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_btn$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_btn$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_btn$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_btn.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_btn$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_btn.c

$(IntermediateDirectory)/widgets_lv_btnmatrix$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_btnmatrix.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_btnmatrix.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_btnmatrix$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_btnmatrix$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_btnmatrix$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_btnmatrix$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_btnmatrix.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_btnmatrix$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_btnmatrix.c

$(IntermediateDirectory)/widgets_lv_canvas$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_canvas.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_canvas.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_canvas$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_canvas$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_canvas$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_canvas$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_canvas.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_canvas$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_canvas.c

$(IntermediateDirectory)/widgets_lv_checkbox$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_checkbox.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_checkbox.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_checkbox$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_checkbox$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_checkbox$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_checkbox$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_checkbox.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_checkbox$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_checkbox.c

$(IntermediateDirectory)/widgets_lv_dropdown$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_dropdown.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_dropdown.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_dropdown$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_dropdown$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_dropdown$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_dropdown$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_dropdown.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_dropdown$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_dropdown.c

$(IntermediateDirectory)/widgets_lv_img$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_img.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_img.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_img$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_img$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_img$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_img$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_img.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_img$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_img.c

$(IntermediateDirectory)/widgets_lv_label$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_label.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_label.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_label$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_label$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_label$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_label$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_label.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_label$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_label.c

$(IntermediateDirectory)/widgets_lv_line$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_line.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_line.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_line$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_line$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_line$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_line$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_line.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_line$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_line.c

$(IntermediateDirectory)/widgets_lv_objx_templ$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_objx_templ.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_objx_templ.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_objx_templ$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_objx_templ$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_objx_templ$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_objx_templ$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_objx_templ.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_objx_templ$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_objx_templ.c

$(IntermediateDirectory)/widgets_lv_roller$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_roller.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_roller.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_roller$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_roller$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_roller$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_roller$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_roller.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_roller$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_roller.c

$(IntermediateDirectory)/widgets_lv_slider$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_slider.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_slider.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_slider$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_slider$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_slider$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_slider$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_slider.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_slider$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_slider.c

$(IntermediateDirectory)/widgets_lv_switch$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_switch.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_switch.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_switch$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_switch$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_switch$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_switch$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_switch.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_switch$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_switch.c

$(IntermediateDirectory)/widgets_lv_table$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_table.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_table.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_table$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_table$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_table$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_table$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_table.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_table$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_table.c

$(IntermediateDirectory)/widgets_lv_textarea$(ObjectSuffix): ../../../../../../../components/lvgl/src/widgets/lv_textarea.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/widgets/lv_textarea.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/widgets_lv_textarea$(ObjectSuffix) -MF$(IntermediateDirectory)/widgets_lv_textarea$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/widgets_lv_textarea$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/widgets_lv_textarea$(PreprocessSuffix): ../../../../../../../components/lvgl/src/widgets/lv_textarea.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/widgets_lv_textarea$(PreprocessSuffix) ../../../../../../../components/lvgl/src/widgets/lv_textarea.c

$(IntermediateDirectory)/src_lv_test_indev$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/lv_test_indev.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/lv_test_indev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_lv_test_indev$(ObjectSuffix) -MF$(IntermediateDirectory)/src_lv_test_indev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_lv_test_indev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_lv_test_indev$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/lv_test_indev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_lv_test_indev$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/lv_test_indev.c

$(IntermediateDirectory)/src_lv_test_init$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/lv_test_init.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/lv_test_init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_lv_test_init$(ObjectSuffix) -MF$(IntermediateDirectory)/src_lv_test_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_lv_test_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_lv_test_init$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/lv_test_init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_lv_test_init$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/lv_test_init.c

$(IntermediateDirectory)/unity_unity$(ObjectSuffix): ../../../../../../../components/lvgl/tests/unity/unity.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/unity/unity.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/unity_unity$(ObjectSuffix) -MF$(IntermediateDirectory)/unity_unity$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/unity_unity$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/unity_unity$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/unity/unity.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/unity_unity$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/unity/unity.c

$(IntermediateDirectory)/unity_unity_support$(ObjectSuffix): ../../../../../../../components/lvgl/tests/unity/unity_support.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/unity/unity_support.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/unity_unity_support$(ObjectSuffix) -MF$(IntermediateDirectory)/unity_unity_support$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/unity_unity_support$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/unity_unity_support$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/unity/unity_support.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/unity_unity_support$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/unity/unity_support.c

$(IntermediateDirectory)/xt804_cpu_task_sw$(ObjectSuffix): ../../../../../../../src/os/rtos/ports/xt804/cpu_task_sw.S  
	$(AS) $(SourceSwitch) ../../../../../../../src/os/rtos/ports/xt804/cpu_task_sw.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/xt804_cpu_task_sw$(ObjectSuffix) -MF$(IntermediateDirectory)/xt804_cpu_task_sw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/xt804_cpu_task_sw$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/xt804_cpu_task_sw$(PreprocessSuffix): ../../../../../../../src/os/rtos/ports/xt804/cpu_task_sw.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/xt804_cpu_task_sw$(PreprocessSuffix) ../../../../../../../src/os/rtos/ports/xt804/cpu_task_sw.S

$(IntermediateDirectory)/xt804_port$(ObjectSuffix): ../../../../../../../src/os/rtos/ports/xt804/port.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/os/rtos/ports/xt804/port.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/xt804_port$(ObjectSuffix) -MF$(IntermediateDirectory)/xt804_port$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/xt804_port$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/xt804_port$(PreprocessSuffix): ../../../../../../../src/os/rtos/ports/xt804/port.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/xt804_port$(PreprocessSuffix) ../../../../../../../src/os/rtos/ports/xt804/port.c

$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/autoip.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/autoip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_autoip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_autoip$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/autoip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_autoip$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/autoip.c

$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/dhcp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/dhcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_dhcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_dhcp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/dhcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_dhcp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/dhcp.c

$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/etharp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/etharp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_etharp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_etharp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/etharp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_etharp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/etharp.c

$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/icmp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/icmp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_icmp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_icmp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/icmp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_icmp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/icmp.c

$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/igmp.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/igmp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_igmp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_igmp$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/igmp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_igmp$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/igmp.c

$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4.c

$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_addr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_addr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_addr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4_addr$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_addr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_addr$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_addr.c

$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_frag.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_frag.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_frag$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4_frag$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_frag.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_frag$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv4/ip4_frag.c

$(IntermediateDirectory)/ipv6_dhcp6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/dhcp6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/dhcp6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_dhcp6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_dhcp6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_dhcp6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_dhcp6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/dhcp6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_dhcp6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/dhcp6.c

$(IntermediateDirectory)/ipv6_ethip6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ethip6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ethip6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_ethip6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_ethip6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_ethip6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_ethip6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ethip6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_ethip6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ethip6.c

$(IntermediateDirectory)/ipv6_icmp6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/icmp6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/icmp6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_icmp6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_icmp6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_icmp6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_icmp6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/icmp6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_icmp6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/icmp6.c

$(IntermediateDirectory)/ipv6_inet6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/inet6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/inet6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_inet6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_inet6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_inet6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_inet6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/inet6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_inet6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/inet6.c

$(IntermediateDirectory)/ipv6_ip6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_ip6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_ip6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_ip6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_ip6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_ip6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6.c

$(IntermediateDirectory)/ipv6_ip6_addr$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_addr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_addr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_ip6_addr$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_ip6_addr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_ip6_addr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_ip6_addr$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_addr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_ip6_addr$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_addr.c

$(IntermediateDirectory)/ipv6_ip6_frag$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_frag.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_frag.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_ip6_frag$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_ip6_frag$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_ip6_frag$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_ip6_frag$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_frag.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_ip6_frag$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/ip6_frag.c

$(IntermediateDirectory)/ipv6_mld6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/mld6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/mld6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_mld6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_mld6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_mld6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_mld6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/mld6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_mld6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/mld6.c

$(IntermediateDirectory)/ipv6_nd6$(ObjectSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/nd6.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/network/lwip2.1.3/core/ipv6/nd6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv6_nd6$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv6_nd6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv6_nd6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv6_nd6$(PreprocessSuffix): ../../../../../../../src/network/lwip2.1.3/core/ipv6/nd6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv6_nd6$(PreprocessSuffix) ../../../../../../../src/network/lwip2.1.3/core/ipv6/nd6.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_alpha16$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_alpha16$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_alpha16$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_alpha16$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_alpha16$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_alpha16$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_argb$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_argb$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_argb$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_argb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_argb$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_argb$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_chroma_keyed$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_chroma_keyed$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_chroma_keyed$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_chroma_keyed$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_chroma_keyed$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_chroma_keyed$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_indexed16$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_indexed16$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_indexed16$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_indexed16$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_indexed16$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_indexed16$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_rgb$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_rgb$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c

$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb565a8$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb565a8$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb565a8$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_benchmark_cogwheel_rgb565a8$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_benchmark_cogwheel_rgb565a8$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_benchmark_cogwheel_rgb565a8$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c

$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_12_compr_az.c$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_12_compr_az.c$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_12_compr_az.c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_12_compr_az.c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_lv_font_bechmark_montserrat_12_compr_az.c$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_lv_font_bechmark_montserrat_12_compr_az.c$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c

$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_16_compr_az.c$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_16_compr_az.c$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_16_compr_az.c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_16_compr_az.c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_lv_font_bechmark_montserrat_16_compr_az.c$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_lv_font_bechmark_montserrat_16_compr_az.c$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c

$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_28_compr_az.c$(ObjectSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_28_compr_az.c$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_28_compr_az.c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_lv_font_bechmark_montserrat_28_compr_az.c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_lv_font_bechmark_montserrat_28_compr_az.c$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_lv_font_bechmark_montserrat_28_compr_az.c$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_corner_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_corner_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_corner_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_corner_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_corner_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_corner_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_corner_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_corner_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_corner_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_corner_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_list_pause$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_list_pause$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_pause_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_list_pause_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_list_pause_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_pause_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_list_play$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_list_play$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_list_play_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_list_play_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_list_play_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_list_play_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_loop$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_loop$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_loop_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_loop_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_loop_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_loop_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_next$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_next$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_next_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_next_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_next_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_next_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_pause$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_pause$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_pause_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_pause_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_pause_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_pause_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_play$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_play$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_play_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_play_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_play_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_play_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_prev$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_prev$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_prev_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_prev_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_prev_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_prev_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_rnd$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_rnd$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd.c

$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_btn_rnd_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_btn_rnd_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_btn_rnd_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_btn_rnd_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_corner_left$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_corner_left$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left.c

$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_corner_left_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_corner_left_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_corner_left_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_left_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_corner_right$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_corner_right$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right.c

$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_corner_right_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_corner_right_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_corner_right_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_corner_right_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_1$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_1$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_1_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_1_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_1_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_1_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_2$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_2$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_2_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_2_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_2_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_2_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_3$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_3$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3.c

$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_cover_3_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_cover_3_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_cover_3_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_cover_3_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_1$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_1$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_1_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_1_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_1_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_1_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_2$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_2$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_2_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_2_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_2_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_2_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_3$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_3$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_3_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_3_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_3_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_3_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_4$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_4$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4.c

$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_icon_4_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_icon_4_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_icon_4_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_icon_4_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_list_border$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_list_border$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_list_border$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_list_border$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_list_border$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_list_border$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border.c

$(IntermediateDirectory)/assets_img_lv_demo_music_list_border_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_list_border_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_list_border_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_list_border_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_list_border_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_list_border_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_list_border_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_logo$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_logo.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_logo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_logo$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_logo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_logo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_logo$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_logo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_logo$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_logo.c

$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_slider_knob$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_slider_knob$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob.c

$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_slider_knob_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_slider_knob_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_slider_knob_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_slider_knob_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_wave_bottom$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_wave_bottom$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom.c

$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_wave_bottom_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_wave_bottom_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_wave_bottom_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_bottom_large.c

$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_wave_top$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_wave_top$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top.c

$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top_large$(ObjectSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top_large.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top_large.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top_large$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top_large$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lv_demo_music_wave_top_large$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lv_demo_music_wave_top_large$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top_large.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lv_demo_music_wave_top_large$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/music/assets/img_lv_demo_music_wave_top_large.c

$(IntermediateDirectory)/assets_img_clothes$(ObjectSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_clothes.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/widgets/assets/img_clothes.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_clothes$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_clothes$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_clothes$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_clothes$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_clothes.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_clothes$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/widgets/assets/img_clothes.c

$(IntermediateDirectory)/assets_img_demo_widgets_avatar$(ObjectSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_demo_widgets_avatar.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/widgets/assets/img_demo_widgets_avatar.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_demo_widgets_avatar$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_demo_widgets_avatar$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_demo_widgets_avatar$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_demo_widgets_avatar$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_demo_widgets_avatar.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_demo_widgets_avatar$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/widgets/assets/img_demo_widgets_avatar.c

$(IntermediateDirectory)/assets_img_lvgl_logo$(ObjectSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_lvgl_logo.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/demos/widgets/assets/img_lvgl_logo.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/assets_img_lvgl_logo$(ObjectSuffix) -MF$(IntermediateDirectory)/assets_img_lvgl_logo$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/assets_img_lvgl_logo$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/assets_img_lvgl_logo$(PreprocessSuffix): ../../../../../../../components/lvgl/demos/widgets/assets/img_lvgl_logo.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/assets_img_lvgl_logo$(PreprocessSuffix) ../../../../../../../components/lvgl/demos/widgets/assets/img_lvgl_logo.c

$(IntermediateDirectory)/squareline_lv_ui_entry$(ObjectSuffix): ../../../../../../../components/lvgl/env_support/rt-thread/squareline/lv_ui_entry.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/env_support/rt-thread/squareline/lv_ui_entry.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/squareline_lv_ui_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/squareline_lv_ui_entry$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/squareline_lv_ui_entry$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/squareline_lv_ui_entry$(PreprocessSuffix): ../../../../../../../components/lvgl/env_support/rt-thread/squareline/lv_ui_entry.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/squareline_lv_ui_entry$(PreprocessSuffix) ../../../../../../../components/lvgl/env_support/rt-thread/squareline/lv_ui_entry.c

$(IntermediateDirectory)/arm2d_lv_gpu_arm2d$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/arm2d/lv_gpu_arm2d.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/arm2d/lv_gpu_arm2d.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arm2d_lv_gpu_arm2d$(ObjectSuffix) -MF$(IntermediateDirectory)/arm2d_lv_gpu_arm2d$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arm2d_lv_gpu_arm2d$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/arm2d_lv_gpu_arm2d$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/arm2d/lv_gpu_arm2d.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arm2d_lv_gpu_arm2d$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/arm2d/lv_gpu_arm2d.c

$(IntermediateDirectory)/nxp_lv_gpu_nxp$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/lv_gpu_nxp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/lv_gpu_nxp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/nxp_lv_gpu_nxp$(ObjectSuffix) -MF$(IntermediateDirectory)/nxp_lv_gpu_nxp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/nxp_lv_gpu_nxp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/nxp_lv_gpu_nxp$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/lv_gpu_nxp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/nxp_lv_gpu_nxp$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/lv_gpu_nxp.c

$(IntermediateDirectory)/sdl_lv_draw_sdl$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_arc$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_arc.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_bg$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_bg.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_bg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_bg$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_bg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_bg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_bg$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_bg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_bg$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_bg.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_composite$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_composite.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_composite.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_composite$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_composite$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_composite$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_composite$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_composite.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_composite$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_composite.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_img$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_img.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_img.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_img$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_img$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_img$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_img$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_img.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_img$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_img.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_label$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_label.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_label.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_label$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_label$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_label$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_label$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_label.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_label$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_label.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_layer$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_layer.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_layer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_layer$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_layer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_layer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_layer$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_layer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_layer$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_layer.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_line$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_line.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_line.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_line$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_line$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_line$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_line$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_line.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_line$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_line.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_mask$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_mask.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_mask.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_mask$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_mask$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_mask$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_mask$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_mask.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_mask$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_mask.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_polygon$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_polygon$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_polygon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_polygon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_polygon$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_polygon$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_rect$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_rect.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_rect.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_rect$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_rect$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_rect$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_rect$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_rect.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_rect$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_rect.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_stack_blur$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_stack_blur$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_stack_blur$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_stack_blur$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_stack_blur$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_stack_blur$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_texture_cache$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_texture_cache$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_texture_cache$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_texture_cache$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_texture_cache$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_texture_cache$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c

$(IntermediateDirectory)/sdl_lv_draw_sdl_utils$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_utils.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_utils.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sdl_lv_draw_sdl_utils$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_lv_draw_sdl_utils$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sdl_lv_draw_sdl_utils$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sdl_lv_draw_sdl_utils$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_utils.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sdl_lv_draw_sdl_utils$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sdl/lv_draw_sdl_utils.c

$(IntermediateDirectory)/stm32_dma2d_lv_gpu_stm32_dma2d$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/stm32_dma2d_lv_gpu_stm32_dma2d$(ObjectSuffix) -MF$(IntermediateDirectory)/stm32_dma2d_lv_gpu_stm32_dma2d$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/stm32_dma2d_lv_gpu_stm32_dma2d$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/stm32_dma2d_lv_gpu_stm32_dma2d$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/stm32_dma2d_lv_gpu_stm32_dma2d$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c

$(IntermediateDirectory)/sw_lv_draw_sw$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw.c

$(IntermediateDirectory)/sw_lv_draw_sw_arc$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_arc.c

$(IntermediateDirectory)/sw_lv_draw_sw_blend$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_blend.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_blend.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_blend$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_blend$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_blend$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_blend$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_blend.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_blend$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_blend.c

$(IntermediateDirectory)/sw_lv_draw_sw_dither$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_dither.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_dither.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_dither$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_dither$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_dither$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_dither$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_dither.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_dither$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_dither.c

$(IntermediateDirectory)/sw_lv_draw_sw_gradient$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_gradient.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_gradient.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_gradient$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_gradient$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_gradient$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_gradient$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_gradient.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_gradient$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_gradient.c

$(IntermediateDirectory)/sw_lv_draw_sw_img$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_img.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_img.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_img$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_img$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_img$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_img$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_img.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_img$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_img.c

$(IntermediateDirectory)/sw_lv_draw_sw_layer$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_layer.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_layer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_layer$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_layer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_layer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_layer$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_layer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_layer$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_layer.c

$(IntermediateDirectory)/sw_lv_draw_sw_letter$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_letter.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_letter.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_letter$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_letter$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_letter$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_letter$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_letter.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_letter$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_letter.c

$(IntermediateDirectory)/sw_lv_draw_sw_line$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_line.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_line.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_line$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_line$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_line$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_line$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_line.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_line$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_line.c

$(IntermediateDirectory)/sw_lv_draw_sw_polygon$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_polygon.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_polygon.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_polygon$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_polygon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_polygon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_polygon$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_polygon.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_polygon$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_polygon.c

$(IntermediateDirectory)/sw_lv_draw_sw_rect$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_rect.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_rect.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_rect$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_rect$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_rect$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_rect$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_rect.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_rect$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_rect.c

$(IntermediateDirectory)/sw_lv_draw_sw_transform$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_transform.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_transform.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sw_lv_draw_sw_transform$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_lv_draw_sw_transform$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sw_lv_draw_sw_transform$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sw_lv_draw_sw_transform$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_transform.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sw_lv_draw_sw_transform$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/sw/lv_draw_sw_transform.c

$(IntermediateDirectory)/swm341_dma2d_lv_gpu_swm341_dma2d$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/swm341_dma2d/lv_gpu_swm341_dma2d.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/swm341_dma2d/lv_gpu_swm341_dma2d.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/swm341_dma2d_lv_gpu_swm341_dma2d$(ObjectSuffix) -MF$(IntermediateDirectory)/swm341_dma2d_lv_gpu_swm341_dma2d$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/swm341_dma2d_lv_gpu_swm341_dma2d$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/swm341_dma2d_lv_gpu_swm341_dma2d$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/swm341_dma2d/lv_gpu_swm341_dma2d.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/swm341_dma2d_lv_gpu_swm341_dma2d$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/swm341_dma2d/lv_gpu_swm341_dma2d.c

$(IntermediateDirectory)/test_cases_test_arc$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_arc.c

$(IntermediateDirectory)/test_cases_test_bar$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_bar.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_bar.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_bar$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_bar$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_bar$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_bar$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_bar.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_bar$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_bar.c

$(IntermediateDirectory)/test_cases_test_checkbox$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_checkbox.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_checkbox.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_checkbox$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_checkbox$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_checkbox$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_checkbox$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_checkbox.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_checkbox$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_checkbox.c

$(IntermediateDirectory)/test_cases_test_config$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_config.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_config.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_config$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_config$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_config$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_config$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_config.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_config$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_config.c

$(IntermediateDirectory)/test_cases_test_demo_stress$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_stress.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_stress.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_demo_stress$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_demo_stress$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_demo_stress$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_demo_stress$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_stress.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_demo_stress$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_stress.c

$(IntermediateDirectory)/test_cases_test_demo_widgets$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_widgets.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_widgets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_demo_widgets$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_demo_widgets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_demo_widgets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_demo_widgets$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_widgets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_demo_widgets$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_demo_widgets.c

$(IntermediateDirectory)/test_cases_test_dropdown$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_dropdown.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_dropdown.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_dropdown$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_dropdown$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_dropdown$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_dropdown$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_dropdown.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_dropdown$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_dropdown.c

$(IntermediateDirectory)/test_cases_test_event$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_event.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_event.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_event$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_event$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_event$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_event$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_event.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_event$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_event.c

$(IntermediateDirectory)/test_cases_test_font_loader$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_font_loader.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_font_loader.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_font_loader$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_font_loader$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_font_loader$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_font_loader$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_font_loader.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_font_loader$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_font_loader.c

$(IntermediateDirectory)/test_cases_test_fs$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_fs.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_fs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_fs$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_fs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_fs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_fs$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_fs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_fs$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_fs.c

$(IntermediateDirectory)/test_cases_test_line$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_line.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_line.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_line$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_line$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_line$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_line$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_line.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_line$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_line.c

$(IntermediateDirectory)/test_cases_test_mem$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_mem.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_mem$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_mem$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_mem.c

$(IntermediateDirectory)/test_cases_test_obj_tree$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_obj_tree.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_obj_tree.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_obj_tree$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_obj_tree$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_obj_tree$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_obj_tree$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_obj_tree.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_obj_tree$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_obj_tree.c

$(IntermediateDirectory)/test_cases_test_slider$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_slider.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_slider.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_slider$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_slider$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_slider$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_slider$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_slider.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_slider$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_slider.c

$(IntermediateDirectory)/test_cases_test_snapshot$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_snapshot.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_snapshot.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_snapshot$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_snapshot$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_snapshot$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_snapshot$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_snapshot.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_snapshot$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_snapshot.c

$(IntermediateDirectory)/test_cases_test_style$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_style.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_style.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_style$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_style$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_style$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_style$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_style.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_style$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_style.c

$(IntermediateDirectory)/test_cases_test_switch$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_switch.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_switch.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_switch$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_switch$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_switch$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_switch$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_switch.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_switch$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_switch.c

$(IntermediateDirectory)/test_cases_test_table$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_table.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_table.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_table$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_table$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_table$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_table$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_table.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_table$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_table.c

$(IntermediateDirectory)/test_cases_test_textarea$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_textarea.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_textarea.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_textarea$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_textarea$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_textarea$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_textarea$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_textarea.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_textarea$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_textarea.c

$(IntermediateDirectory)/test_cases_test_txt$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_txt.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/test_txt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases_test_txt$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases_test_txt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases_test_txt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases_test_txt$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/test_txt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases_test_txt$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/test_txt.c

$(IntermediateDirectory)/test_cases__test_template$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/_test_template.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_cases/_test_template.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_cases__test_template$(ObjectSuffix) -MF$(IntermediateDirectory)/test_cases__test_template$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_cases__test_template$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_cases__test_template$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_cases/_test_template.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_cases__test_template$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_cases/_test_template.c

$(IntermediateDirectory)/test_fonts_font_1$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_1.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_fonts/font_1.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_fonts_font_1$(ObjectSuffix) -MF$(IntermediateDirectory)/test_fonts_font_1$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_fonts_font_1$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_fonts_font_1$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_1.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_fonts_font_1$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_fonts/font_1.c

$(IntermediateDirectory)/test_fonts_font_2$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_2.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_fonts/font_2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_fonts_font_2$(ObjectSuffix) -MF$(IntermediateDirectory)/test_fonts_font_2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_fonts_font_2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_fonts_font_2$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_fonts_font_2$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_fonts/font_2.c

$(IntermediateDirectory)/test_fonts_font_3$(ObjectSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_3.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/tests/src/test_fonts/font_3.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/test_fonts_font_3$(ObjectSuffix) -MF$(IntermediateDirectory)/test_fonts_font_3$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/test_fonts_font_3$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/test_fonts_font_3$(PreprocessSuffix): ../../../../../../../components/lvgl/tests/src/test_fonts/font_3.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/test_fonts_font_3$(PreprocessSuffix) ../../../../../../../components/lvgl/tests/src/test_fonts/font_3.c

$(IntermediateDirectory)/src_aes_decrypt$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_decrypt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_decrypt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_aes_decrypt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_aes_decrypt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_aes_decrypt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_aes_decrypt$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_decrypt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_aes_decrypt$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_decrypt.c

$(IntermediateDirectory)/src_aes_encrypt$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_encrypt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_encrypt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_aes_encrypt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_aes_encrypt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_aes_encrypt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_aes_encrypt$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_encrypt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_aes_encrypt$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/aes_encrypt.c

$(IntermediateDirectory)/src_bleutils$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/bleutils.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/bleutils.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_bleutils$(ObjectSuffix) -MF$(IntermediateDirectory)/src_bleutils$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_bleutils$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_bleutils$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/bleutils.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_bleutils$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/bleutils.c

$(IntermediateDirectory)/src_cbc_mode$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cbc_mode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cbc_mode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_cbc_mode$(ObjectSuffix) -MF$(IntermediateDirectory)/src_cbc_mode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_cbc_mode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_cbc_mode$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cbc_mode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_cbc_mode$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cbc_mode.c

$(IntermediateDirectory)/src_ccm_mode$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ccm_mode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ccm_mode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ccm_mode$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ccm_mode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ccm_mode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ccm_mode$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ccm_mode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ccm_mode$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ccm_mode.c

$(IntermediateDirectory)/src_cmac_mode$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cmac_mode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cmac_mode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_cmac_mode$(ObjectSuffix) -MF$(IntermediateDirectory)/src_cmac_mode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_cmac_mode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_cmac_mode$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cmac_mode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_cmac_mode$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/cmac_mode.c

$(IntermediateDirectory)/src_ctr_mode$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_mode.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_mode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ctr_mode$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ctr_mode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ctr_mode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ctr_mode$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_mode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ctr_mode$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_mode.c

$(IntermediateDirectory)/src_ctr_prng$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_prng.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_prng.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ctr_prng$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ctr_prng$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ctr_prng$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ctr_prng$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_prng.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ctr_prng$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ctr_prng.c

$(IntermediateDirectory)/src_ecc$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ecc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ecc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ecc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ecc$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ecc$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc.c

$(IntermediateDirectory)/src_ecc_dh$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dh.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ecc_dh$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ecc_dh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ecc_dh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ecc_dh$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ecc_dh$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dh.c

$(IntermediateDirectory)/src_ecc_dsa$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dsa.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dsa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ecc_dsa$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ecc_dsa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ecc_dsa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ecc_dsa$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dsa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ecc_dsa$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_dsa.c

$(IntermediateDirectory)/src_ecc_platform_specific$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_platform_specific.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_platform_specific.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ecc_platform_specific$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ecc_platform_specific$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ecc_platform_specific$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ecc_platform_specific$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_platform_specific.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ecc_platform_specific$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/ecc_platform_specific.c

$(IntermediateDirectory)/src_hmac$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_hmac$(ObjectSuffix) -MF$(IntermediateDirectory)/src_hmac$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_hmac$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_hmac$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_hmac$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac.c

$(IntermediateDirectory)/src_hmac_prng$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac_prng.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac_prng.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_hmac_prng$(ObjectSuffix) -MF$(IntermediateDirectory)/src_hmac_prng$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_hmac_prng$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_hmac_prng$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac_prng.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_hmac_prng$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/hmac_prng.c

$(IntermediateDirectory)/src_sha256$(ObjectSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/sha256.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/sha256.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_sha256$(ObjectSuffix) -MF$(IntermediateDirectory)/src_sha256$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_sha256$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_sha256$(PreprocessSuffix): ../../../../../../../src/bt/blehost/ext/tinycrypt/src/sha256.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_sha256$(PreprocessSuffix) ../../../../../../../src/bt/blehost/ext/tinycrypt/src/sha256.c

$(IntermediateDirectory)/src_ble_att$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_att$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_att$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_att$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_att$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_att$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att.c

$(IntermediateDirectory)/src_ble_att_clt$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_clt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_clt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_att_clt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_att_clt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_att_clt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_att_clt$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_clt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_att_clt$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_clt.c

$(IntermediateDirectory)/src_ble_att_cmd$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_cmd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_att_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_att_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_att_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_att_cmd$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_att_cmd$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_cmd.c

$(IntermediateDirectory)/src_ble_att_svr$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_svr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_svr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_att_svr$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_att_svr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_att_svr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_att_svr$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_svr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_att_svr$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_att_svr.c

$(IntermediateDirectory)/src_ble_eddystone$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_eddystone.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_eddystone.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_eddystone$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_eddystone$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_eddystone$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_eddystone$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_eddystone.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_eddystone$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_eddystone.c

$(IntermediateDirectory)/src_ble_gap$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_gap$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_gap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_gap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_gap$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_gap$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gap.c

$(IntermediateDirectory)/src_ble_gattc$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gattc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gattc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_gattc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_gattc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_gattc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_gattc$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gattc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_gattc$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gattc.c

$(IntermediateDirectory)/src_ble_gatts$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_gatts$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_gatts$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_gatts$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_gatts$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_gatts$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts.c

$(IntermediateDirectory)/src_ble_gatts_lcl$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts_lcl.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts_lcl.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_gatts_lcl$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_gatts_lcl$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_gatts_lcl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_gatts_lcl$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts_lcl.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_gatts_lcl$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_gatts_lcl.c

$(IntermediateDirectory)/src_ble_hs$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs.c

$(IntermediateDirectory)/src_ble_hs_adv$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_adv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_adv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_adv$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_adv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_adv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_adv$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_adv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_adv$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_adv.c

$(IntermediateDirectory)/src_ble_hs_atomic$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_atomic.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_atomic.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_atomic$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_atomic$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_atomic$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_atomic$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_atomic.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_atomic$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_atomic.c

$(IntermediateDirectory)/src_ble_hs_cfg$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_cfg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_cfg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_cfg$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_cfg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_cfg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_cfg$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_cfg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_cfg$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_cfg.c

$(IntermediateDirectory)/src_ble_hs_conn$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_conn.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_conn.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_conn$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_conn$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_conn$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_conn$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_conn.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_conn$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_conn.c

$(IntermediateDirectory)/src_ble_hs_flow$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_flow.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_flow.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_flow$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_flow$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_flow$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_flow$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_flow.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_flow$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_flow.c

$(IntermediateDirectory)/src_ble_hs_hci$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_hci$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_hci$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_hci$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_hci$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_hci$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci.c

$(IntermediateDirectory)/src_ble_hs_hci_cmd$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_cmd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_hci_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_hci_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_hci_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_hci_cmd$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_hci_cmd$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_cmd.c

$(IntermediateDirectory)/src_ble_hs_hci_evt$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_evt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_evt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_hci_evt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_hci_evt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_hci_evt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_hci_evt$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_evt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_hci_evt$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_evt.c

$(IntermediateDirectory)/src_ble_hs_hci_util$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_util.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_util.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_hci_util$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_hci_util$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_hci_util$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_hci_util$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_util.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_hci_util$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_hci_util.c

$(IntermediateDirectory)/src_ble_hs_id$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_id.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_id.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_id$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_id$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_id$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_id$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_id.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_id$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_id.c

$(IntermediateDirectory)/src_ble_hs_log$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_log.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_log.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_log$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_log$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_log$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_log$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_log.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_log$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_log.c

$(IntermediateDirectory)/src_ble_hs_mbuf$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mbuf.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_mbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_mbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_mbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_mbuf$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_mbuf$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mbuf.c

$(IntermediateDirectory)/src_ble_hs_misc$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_misc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_misc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_misc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_misc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_misc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_misc$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_misc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_misc$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_misc.c

$(IntermediateDirectory)/src_ble_hs_mqueue$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mqueue.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mqueue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_mqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_mqueue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_mqueue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_mqueue$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mqueue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_mqueue$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_mqueue.c

$(IntermediateDirectory)/src_ble_hs_periodic_sync$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_periodic_sync.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_periodic_sync.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_periodic_sync$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_periodic_sync$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_periodic_sync$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_periodic_sync$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_periodic_sync.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_periodic_sync$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_periodic_sync.c

$(IntermediateDirectory)/src_ble_hs_pvcy$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_pvcy.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_pvcy.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_pvcy$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_pvcy$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_pvcy$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_pvcy$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_pvcy.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_pvcy$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_pvcy.c

$(IntermediateDirectory)/src_ble_hs_shutdown$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_shutdown.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_shutdown.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_shutdown$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_shutdown$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_shutdown$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_shutdown$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_shutdown.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_shutdown$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_shutdown.c

$(IntermediateDirectory)/src_ble_hs_startup$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_startup.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_startup.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_startup$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_startup$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_startup$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_startup$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_startup.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_startup$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_startup.c

$(IntermediateDirectory)/src_ble_hs_stop$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_stop.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_stop.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hs_stop$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hs_stop$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hs_stop$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hs_stop$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_stop.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hs_stop$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_hs_stop.c

$(IntermediateDirectory)/src_ble_ibeacon$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_ibeacon.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_ibeacon.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_ibeacon$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_ibeacon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_ibeacon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_ibeacon$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_ibeacon.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_ibeacon$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_ibeacon.c

$(IntermediateDirectory)/src_ble_l2cap$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_l2cap$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_l2cap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_l2cap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_l2cap$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_l2cap$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap.c

$(IntermediateDirectory)/src_ble_l2cap_coc$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_coc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_coc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_l2cap_coc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_l2cap_coc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_l2cap_coc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_l2cap_coc$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_coc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_l2cap_coc$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_coc.c

$(IntermediateDirectory)/src_ble_l2cap_sig$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_l2cap_sig$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_l2cap_sig$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_l2cap_sig$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_l2cap_sig$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_l2cap_sig$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig.c

$(IntermediateDirectory)/src_ble_l2cap_sig_cmd$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig_cmd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig_cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_l2cap_sig_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_l2cap_sig_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_l2cap_sig_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_l2cap_sig_cmd$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig_cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_l2cap_sig_cmd$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_l2cap_sig_cmd.c

$(IntermediateDirectory)/src_ble_monitor$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_monitor.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_monitor.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_monitor$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_monitor$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_monitor$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_monitor$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_monitor.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_monitor$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_monitor.c

$(IntermediateDirectory)/src_ble_sm$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_sm$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_sm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_sm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_sm$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_sm$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm.c

$(IntermediateDirectory)/src_ble_sm_alg$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_alg.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_alg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_sm_alg$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_sm_alg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_sm_alg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_sm_alg$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_alg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_sm_alg$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_alg.c

$(IntermediateDirectory)/src_ble_sm_cmd$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_cmd.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_sm_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_sm_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_sm_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_sm_cmd$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_sm_cmd$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_cmd.c

$(IntermediateDirectory)/src_ble_sm_lgcy$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_lgcy.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_lgcy.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_sm_lgcy$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_sm_lgcy$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_sm_lgcy$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_sm_lgcy$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_lgcy.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_sm_lgcy$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_lgcy.c

$(IntermediateDirectory)/src_ble_sm_sc$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_sc.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_sc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_sm_sc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_sm_sc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_sm_sc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_sm_sc$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_sc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_sm_sc$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_sm_sc.c

$(IntermediateDirectory)/src_ble_store$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_store.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_store.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_store$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_store$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_store$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_store$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_store.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_store$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_store.c

$(IntermediateDirectory)/src_ble_store_util$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_store_util.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_store_util.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_store_util$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_store_util$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_store_util$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_store_util$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_store_util.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_store_util$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_store_util.c

$(IntermediateDirectory)/src_ble_uuid$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_uuid.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/src/ble_uuid.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_uuid$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_uuid$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_uuid$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_uuid$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/src/ble_uuid.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_uuid$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/src/ble_uuid.c

$(IntermediateDirectory)/src_endian$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/endian.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/endian.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_endian$(ObjectSuffix) -MF$(IntermediateDirectory)/src_endian$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_endian$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_endian$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/endian.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_endian$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/endian.c

$(IntermediateDirectory)/src_mem$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/mem.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_mem$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_mem$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/mem.c

$(IntermediateDirectory)/src_nimble_port$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/nimble_port.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/nimble_port.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_nimble_port$(ObjectSuffix) -MF$(IntermediateDirectory)/src_nimble_port$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_nimble_port$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_nimble_port$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/nimble_port.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_nimble_port$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/nimble_port.c

$(IntermediateDirectory)/src_npl_os_freertos$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/npl_os_freertos.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/npl_os_freertos.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_npl_os_freertos$(ObjectSuffix) -MF$(IntermediateDirectory)/src_npl_os_freertos$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_npl_os_freertos$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_npl_os_freertos$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/npl_os_freertos.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_npl_os_freertos$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/npl_os_freertos.c

$(IntermediateDirectory)/src_os_mbuf$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_mbuf.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/os_mbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_os_mbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/src_os_mbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_os_mbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_os_mbuf$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_mbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_os_mbuf$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/os_mbuf.c

$(IntermediateDirectory)/src_os_mempool$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_mempool.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/os_mempool.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_os_mempool$(ObjectSuffix) -MF$(IntermediateDirectory)/src_os_mempool$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_os_mempool$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_os_mempool$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_mempool.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_os_mempool$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/os_mempool.c

$(IntermediateDirectory)/src_os_msys_init$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_msys_init.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/os_msys_init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_os_msys_init$(ObjectSuffix) -MF$(IntermediateDirectory)/src_os_msys_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_os_msys_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_os_msys_init$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/os_msys_init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_os_msys_init$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/os_msys_init.c

$(IntermediateDirectory)/src_tls_nimble$(ObjectSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/tls_nimble.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/porting/w800/src/tls_nimble.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_nimble$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_nimble$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_nimble$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_nimble$(PreprocessSuffix): ../../../../../../../src/bt/blehost/porting/w800/src/tls_nimble.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_nimble$(PreprocessSuffix) ../../../../../../../src/bt/blehost/porting/w800/src/tls_nimble.c

$(IntermediateDirectory)/pxp_lv_draw_pxp_blend$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/pxp_lv_draw_pxp_blend$(ObjectSuffix) -MF$(IntermediateDirectory)/pxp_lv_draw_pxp_blend$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/pxp_lv_draw_pxp_blend$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/pxp_lv_draw_pxp_blend$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/pxp_lv_draw_pxp_blend$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c

$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp$(ObjectSuffix) -MF$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/pxp_lv_gpu_nxp_pxp$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/pxp_lv_gpu_nxp_pxp$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c

$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp_osa$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp_osa$(ObjectSuffix) -MF$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp_osa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/pxp_lv_gpu_nxp_pxp_osa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/pxp_lv_gpu_nxp_pxp_osa$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/pxp_lv_gpu_nxp_pxp_osa$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c

$(IntermediateDirectory)/vglite_lv_draw_vglite_arc$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/vglite_lv_draw_vglite_arc$(ObjectSuffix) -MF$(IntermediateDirectory)/vglite_lv_draw_vglite_arc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/vglite_lv_draw_vglite_arc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/vglite_lv_draw_vglite_arc$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/vglite_lv_draw_vglite_arc$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c

$(IntermediateDirectory)/vglite_lv_draw_vglite_blend$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/vglite_lv_draw_vglite_blend$(ObjectSuffix) -MF$(IntermediateDirectory)/vglite_lv_draw_vglite_blend$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/vglite_lv_draw_vglite_blend$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/vglite_lv_draw_vglite_blend$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/vglite_lv_draw_vglite_blend$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c

$(IntermediateDirectory)/vglite_lv_draw_vglite_rect$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/vglite_lv_draw_vglite_rect$(ObjectSuffix) -MF$(IntermediateDirectory)/vglite_lv_draw_vglite_rect$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/vglite_lv_draw_vglite_rect$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/vglite_lv_draw_vglite_rect$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/vglite_lv_draw_vglite_rect$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c

$(IntermediateDirectory)/vglite_lv_gpu_nxp_vglite$(ObjectSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/vglite_lv_gpu_nxp_vglite$(ObjectSuffix) -MF$(IntermediateDirectory)/vglite_lv_gpu_nxp_vglite$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/vglite_lv_gpu_nxp_vglite$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/vglite_lv_gpu_nxp_vglite$(PreprocessSuffix): ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/vglite_lv_gpu_nxp_vglite$(PreprocessSuffix) ../../../../../../../components/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.c

$(IntermediateDirectory)/flex_lv_flex$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/layouts/flex/lv_flex.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/layouts/flex/lv_flex.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/flex_lv_flex$(ObjectSuffix) -MF$(IntermediateDirectory)/flex_lv_flex$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/flex_lv_flex$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/flex_lv_flex$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/layouts/flex/lv_flex.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/flex_lv_flex$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/layouts/flex/lv_flex.c

$(IntermediateDirectory)/grid_lv_grid$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/layouts/grid/lv_grid.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/layouts/grid/lv_grid.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/grid_lv_grid$(ObjectSuffix) -MF$(IntermediateDirectory)/grid_lv_grid$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/grid_lv_grid$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/grid_lv_grid$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/layouts/grid/lv_grid.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/grid_lv_grid$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/layouts/grid/lv_grid.c

$(IntermediateDirectory)/bmp_lv_bmp$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/bmp/lv_bmp.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/bmp/lv_bmp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bmp_lv_bmp$(ObjectSuffix) -MF$(IntermediateDirectory)/bmp_lv_bmp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bmp_lv_bmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bmp_lv_bmp$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/bmp/lv_bmp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bmp_lv_bmp$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/bmp/lv_bmp.c

$(IntermediateDirectory)/ffmpeg_lv_ffmpeg$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/ffmpeg/lv_ffmpeg.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/ffmpeg/lv_ffmpeg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ffmpeg_lv_ffmpeg$(ObjectSuffix) -MF$(IntermediateDirectory)/ffmpeg_lv_ffmpeg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ffmpeg_lv_ffmpeg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ffmpeg_lv_ffmpeg$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/ffmpeg/lv_ffmpeg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ffmpeg_lv_ffmpeg$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/ffmpeg/lv_ffmpeg.c

$(IntermediateDirectory)/freetype_lv_freetype$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/freetype/lv_freetype.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/freetype/lv_freetype.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/freetype_lv_freetype$(ObjectSuffix) -MF$(IntermediateDirectory)/freetype_lv_freetype$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/freetype_lv_freetype$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/freetype_lv_freetype$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/freetype/lv_freetype.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/freetype_lv_freetype$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/freetype/lv_freetype.c

$(IntermediateDirectory)/fsdrv_lv_fs_fatfs$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fsdrv_lv_fs_fatfs$(ObjectSuffix) -MF$(IntermediateDirectory)/fsdrv_lv_fs_fatfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fsdrv_lv_fs_fatfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fsdrv_lv_fs_fatfs$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fsdrv_lv_fs_fatfs$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c

$(IntermediateDirectory)/fsdrv_lv_fs_posix$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fsdrv_lv_fs_posix$(ObjectSuffix) -MF$(IntermediateDirectory)/fsdrv_lv_fs_posix$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fsdrv_lv_fs_posix$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fsdrv_lv_fs_posix$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fsdrv_lv_fs_posix$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c

$(IntermediateDirectory)/fsdrv_lv_fs_stdio$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fsdrv_lv_fs_stdio$(ObjectSuffix) -MF$(IntermediateDirectory)/fsdrv_lv_fs_stdio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fsdrv_lv_fs_stdio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fsdrv_lv_fs_stdio$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fsdrv_lv_fs_stdio$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c

$(IntermediateDirectory)/fsdrv_lv_fs_win32$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fsdrv_lv_fs_win32$(ObjectSuffix) -MF$(IntermediateDirectory)/fsdrv_lv_fs_win32$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fsdrv_lv_fs_win32$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fsdrv_lv_fs_win32$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fsdrv_lv_fs_win32$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c

$(IntermediateDirectory)/gif_gifdec$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/gif/gifdec.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/gif/gifdec.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/gif_gifdec$(ObjectSuffix) -MF$(IntermediateDirectory)/gif_gifdec$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/gif_gifdec$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/gif_gifdec$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/gif/gifdec.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/gif_gifdec$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/gif/gifdec.c

$(IntermediateDirectory)/gif_lv_gif$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/gif/lv_gif.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/gif/lv_gif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/gif_lv_gif$(ObjectSuffix) -MF$(IntermediateDirectory)/gif_lv_gif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/gif_lv_gif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/gif_lv_gif$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/gif/lv_gif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/gif_lv_gif$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/gif/lv_gif.c

$(IntermediateDirectory)/png_lodepng$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/png/lodepng.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/png/lodepng.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/png_lodepng$(ObjectSuffix) -MF$(IntermediateDirectory)/png_lodepng$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/png_lodepng$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/png_lodepng$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/png/lodepng.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/png_lodepng$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/png/lodepng.c

$(IntermediateDirectory)/png_lv_png$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/png/lv_png.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/png/lv_png.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/png_lv_png$(ObjectSuffix) -MF$(IntermediateDirectory)/png_lv_png$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/png_lv_png$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/png_lv_png$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/png/lv_png.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/png_lv_png$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/png/lv_png.c

$(IntermediateDirectory)/qrcode_lv_qrcode$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/qrcode/lv_qrcode.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/qrcode/lv_qrcode.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/qrcode_lv_qrcode$(ObjectSuffix) -MF$(IntermediateDirectory)/qrcode_lv_qrcode$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/qrcode_lv_qrcode$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/qrcode_lv_qrcode$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/qrcode/lv_qrcode.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/qrcode_lv_qrcode$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/qrcode/lv_qrcode.c

$(IntermediateDirectory)/qrcode_qrcodegen$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/qrcode/qrcodegen.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/qrcode/qrcodegen.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/qrcode_qrcodegen$(ObjectSuffix) -MF$(IntermediateDirectory)/qrcode_qrcodegen$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/qrcode_qrcodegen$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/qrcode_qrcodegen$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/qrcode/qrcodegen.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/qrcode_qrcodegen$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/qrcode/qrcodegen.c

$(IntermediateDirectory)/rlottie_lv_rlottie$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/rlottie/lv_rlottie.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/rlottie/lv_rlottie.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rlottie_lv_rlottie$(ObjectSuffix) -MF$(IntermediateDirectory)/rlottie_lv_rlottie$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rlottie_lv_rlottie$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rlottie_lv_rlottie$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/rlottie/lv_rlottie.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rlottie_lv_rlottie$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/rlottie/lv_rlottie.c

$(IntermediateDirectory)/sjpg_lv_sjpg$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/sjpg/lv_sjpg.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/sjpg/lv_sjpg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sjpg_lv_sjpg$(ObjectSuffix) -MF$(IntermediateDirectory)/sjpg_lv_sjpg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sjpg_lv_sjpg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sjpg_lv_sjpg$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/sjpg/lv_sjpg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sjpg_lv_sjpg$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/sjpg/lv_sjpg.c

$(IntermediateDirectory)/sjpg_tjpgd$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/libs/sjpg/tjpgd.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/libs/sjpg/tjpgd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sjpg_tjpgd$(ObjectSuffix) -MF$(IntermediateDirectory)/sjpg_tjpgd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sjpg_tjpgd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sjpg_tjpgd$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/libs/sjpg/tjpgd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sjpg_tjpgd$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/libs/sjpg/tjpgd.c

$(IntermediateDirectory)/fragment_lv_fragment$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fragment_lv_fragment$(ObjectSuffix) -MF$(IntermediateDirectory)/fragment_lv_fragment$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fragment_lv_fragment$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fragment_lv_fragment$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fragment_lv_fragment$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment.c

$(IntermediateDirectory)/fragment_lv_fragment_manager$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment_manager.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment_manager.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/fragment_lv_fragment_manager$(ObjectSuffix) -MF$(IntermediateDirectory)/fragment_lv_fragment_manager$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/fragment_lv_fragment_manager$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/fragment_lv_fragment_manager$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment_manager.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/fragment_lv_fragment_manager$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/fragment/lv_fragment_manager.c

$(IntermediateDirectory)/gridnav_lv_gridnav$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/gridnav/lv_gridnav.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/gridnav/lv_gridnav.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/gridnav_lv_gridnav$(ObjectSuffix) -MF$(IntermediateDirectory)/gridnav_lv_gridnav$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/gridnav_lv_gridnav$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/gridnav_lv_gridnav$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/gridnav/lv_gridnav.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/gridnav_lv_gridnav$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/gridnav/lv_gridnav.c

$(IntermediateDirectory)/ime_lv_ime_pinyin$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/ime/lv_ime_pinyin.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/ime/lv_ime_pinyin.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ime_lv_ime_pinyin$(ObjectSuffix) -MF$(IntermediateDirectory)/ime_lv_ime_pinyin$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ime_lv_ime_pinyin$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ime_lv_ime_pinyin$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/ime/lv_ime_pinyin.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ime_lv_ime_pinyin$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/ime/lv_ime_pinyin.c

$(IntermediateDirectory)/imgfont_lv_imgfont$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/imgfont/lv_imgfont.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/imgfont/lv_imgfont.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/imgfont_lv_imgfont$(ObjectSuffix) -MF$(IntermediateDirectory)/imgfont_lv_imgfont$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/imgfont_lv_imgfont$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/imgfont_lv_imgfont$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/imgfont/lv_imgfont.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/imgfont_lv_imgfont$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/imgfont/lv_imgfont.c

$(IntermediateDirectory)/monkey_lv_monkey$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/monkey/lv_monkey.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/monkey/lv_monkey.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/monkey_lv_monkey$(ObjectSuffix) -MF$(IntermediateDirectory)/monkey_lv_monkey$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/monkey_lv_monkey$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/monkey_lv_monkey$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/monkey/lv_monkey.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/monkey_lv_monkey$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/monkey/lv_monkey.c

$(IntermediateDirectory)/msg_lv_msg$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/msg/lv_msg.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/msg/lv_msg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/msg_lv_msg$(ObjectSuffix) -MF$(IntermediateDirectory)/msg_lv_msg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/msg_lv_msg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/msg_lv_msg$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/msg/lv_msg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/msg_lv_msg$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/msg/lv_msg.c

$(IntermediateDirectory)/snapshot_lv_snapshot$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/others/snapshot/lv_snapshot.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/others/snapshot/lv_snapshot.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/snapshot_lv_snapshot$(ObjectSuffix) -MF$(IntermediateDirectory)/snapshot_lv_snapshot$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/snapshot_lv_snapshot$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/snapshot_lv_snapshot$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/others/snapshot/lv_snapshot.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/snapshot_lv_snapshot$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/others/snapshot/lv_snapshot.c

$(IntermediateDirectory)/basic_lv_theme_basic$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/themes/basic/lv_theme_basic.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/themes/basic/lv_theme_basic.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/basic_lv_theme_basic$(ObjectSuffix) -MF$(IntermediateDirectory)/basic_lv_theme_basic$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/basic_lv_theme_basic$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/basic_lv_theme_basic$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/themes/basic/lv_theme_basic.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/basic_lv_theme_basic$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/themes/basic/lv_theme_basic.c

$(IntermediateDirectory)/default_lv_theme_default$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/themes/default/lv_theme_default.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/themes/default/lv_theme_default.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/default_lv_theme_default$(ObjectSuffix) -MF$(IntermediateDirectory)/default_lv_theme_default$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/default_lv_theme_default$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/default_lv_theme_default$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/themes/default/lv_theme_default.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/default_lv_theme_default$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/themes/default/lv_theme_default.c

$(IntermediateDirectory)/mono_lv_theme_mono$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/themes/mono/lv_theme_mono.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/themes/mono/lv_theme_mono.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/mono_lv_theme_mono$(ObjectSuffix) -MF$(IntermediateDirectory)/mono_lv_theme_mono$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/mono_lv_theme_mono$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/mono_lv_theme_mono$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/themes/mono/lv_theme_mono.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mono_lv_theme_mono$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/themes/mono/lv_theme_mono.c

$(IntermediateDirectory)/animimg_lv_animimg$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/animimg/lv_animimg.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/animimg/lv_animimg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/animimg_lv_animimg$(ObjectSuffix) -MF$(IntermediateDirectory)/animimg_lv_animimg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/animimg_lv_animimg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/animimg_lv_animimg$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/animimg/lv_animimg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/animimg_lv_animimg$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/animimg/lv_animimg.c

$(IntermediateDirectory)/calendar_lv_calendar$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/calendar_lv_calendar$(ObjectSuffix) -MF$(IntermediateDirectory)/calendar_lv_calendar$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/calendar_lv_calendar$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/calendar_lv_calendar$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/calendar_lv_calendar$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar.c

$(IntermediateDirectory)/calendar_lv_calendar_header_arrow$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/calendar_lv_calendar_header_arrow$(ObjectSuffix) -MF$(IntermediateDirectory)/calendar_lv_calendar_header_arrow$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/calendar_lv_calendar_header_arrow$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/calendar_lv_calendar_header_arrow$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/calendar_lv_calendar_header_arrow$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c

$(IntermediateDirectory)/calendar_lv_calendar_header_dropdown$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/calendar_lv_calendar_header_dropdown$(ObjectSuffix) -MF$(IntermediateDirectory)/calendar_lv_calendar_header_dropdown$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/calendar_lv_calendar_header_dropdown$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/calendar_lv_calendar_header_dropdown$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/calendar_lv_calendar_header_dropdown$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c

$(IntermediateDirectory)/chart_lv_chart$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/chart/lv_chart.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/chart/lv_chart.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/chart_lv_chart$(ObjectSuffix) -MF$(IntermediateDirectory)/chart_lv_chart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/chart_lv_chart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/chart_lv_chart$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/chart/lv_chart.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/chart_lv_chart$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/chart/lv_chart.c

$(IntermediateDirectory)/colorwheel_lv_colorwheel$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/colorwheel_lv_colorwheel$(ObjectSuffix) -MF$(IntermediateDirectory)/colorwheel_lv_colorwheel$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/colorwheel_lv_colorwheel$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/colorwheel_lv_colorwheel$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/colorwheel_lv_colorwheel$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c

$(IntermediateDirectory)/imgbtn_lv_imgbtn$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/imgbtn_lv_imgbtn$(ObjectSuffix) -MF$(IntermediateDirectory)/imgbtn_lv_imgbtn$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/imgbtn_lv_imgbtn$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/imgbtn_lv_imgbtn$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/imgbtn_lv_imgbtn$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c

$(IntermediateDirectory)/keyboard_lv_keyboard$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/keyboard/lv_keyboard.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/keyboard/lv_keyboard.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/keyboard_lv_keyboard$(ObjectSuffix) -MF$(IntermediateDirectory)/keyboard_lv_keyboard$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/keyboard_lv_keyboard$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/keyboard_lv_keyboard$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/keyboard/lv_keyboard.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/keyboard_lv_keyboard$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/keyboard/lv_keyboard.c

$(IntermediateDirectory)/led_lv_led$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/led/lv_led.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/led/lv_led.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/led_lv_led$(ObjectSuffix) -MF$(IntermediateDirectory)/led_lv_led$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/led_lv_led$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/led_lv_led$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/led/lv_led.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/led_lv_led$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/led/lv_led.c

$(IntermediateDirectory)/list_lv_list$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/list/lv_list.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/list/lv_list.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/list_lv_list$(ObjectSuffix) -MF$(IntermediateDirectory)/list_lv_list$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/list_lv_list$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/list_lv_list$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/list/lv_list.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/list_lv_list$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/list/lv_list.c

$(IntermediateDirectory)/menu_lv_menu$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/menu/lv_menu.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/menu/lv_menu.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/menu_lv_menu$(ObjectSuffix) -MF$(IntermediateDirectory)/menu_lv_menu$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/menu_lv_menu$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/menu_lv_menu$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/menu/lv_menu.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/menu_lv_menu$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/menu/lv_menu.c

$(IntermediateDirectory)/meter_lv_meter$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/meter/lv_meter.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/meter/lv_meter.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/meter_lv_meter$(ObjectSuffix) -MF$(IntermediateDirectory)/meter_lv_meter$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/meter_lv_meter$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/meter_lv_meter$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/meter/lv_meter.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/meter_lv_meter$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/meter/lv_meter.c

$(IntermediateDirectory)/msgbox_lv_msgbox$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/msgbox/lv_msgbox.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/msgbox/lv_msgbox.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/msgbox_lv_msgbox$(ObjectSuffix) -MF$(IntermediateDirectory)/msgbox_lv_msgbox$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/msgbox_lv_msgbox$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/msgbox_lv_msgbox$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/msgbox/lv_msgbox.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/msgbox_lv_msgbox$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/msgbox/lv_msgbox.c

$(IntermediateDirectory)/span_lv_span$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/span/lv_span.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/span/lv_span.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/span_lv_span$(ObjectSuffix) -MF$(IntermediateDirectory)/span_lv_span$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/span_lv_span$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/span_lv_span$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/span/lv_span.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/span_lv_span$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/span/lv_span.c

$(IntermediateDirectory)/spinbox_lv_spinbox$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/spinbox/lv_spinbox.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/spinbox/lv_spinbox.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spinbox_lv_spinbox$(ObjectSuffix) -MF$(IntermediateDirectory)/spinbox_lv_spinbox$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spinbox_lv_spinbox$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spinbox_lv_spinbox$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/spinbox/lv_spinbox.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spinbox_lv_spinbox$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/spinbox/lv_spinbox.c

$(IntermediateDirectory)/spinner_lv_spinner$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/spinner/lv_spinner.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/spinner/lv_spinner.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spinner_lv_spinner$(ObjectSuffix) -MF$(IntermediateDirectory)/spinner_lv_spinner$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spinner_lv_spinner$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spinner_lv_spinner$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/spinner/lv_spinner.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spinner_lv_spinner$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/spinner/lv_spinner.c

$(IntermediateDirectory)/tabview_lv_tabview$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/tabview/lv_tabview.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/tabview/lv_tabview.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/tabview_lv_tabview$(ObjectSuffix) -MF$(IntermediateDirectory)/tabview_lv_tabview$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/tabview_lv_tabview$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/tabview_lv_tabview$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/tabview/lv_tabview.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/tabview_lv_tabview$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/tabview/lv_tabview.c

$(IntermediateDirectory)/tileview_lv_tileview$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/tileview/lv_tileview.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/tileview/lv_tileview.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/tileview_lv_tileview$(ObjectSuffix) -MF$(IntermediateDirectory)/tileview_lv_tileview$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/tileview_lv_tileview$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/tileview_lv_tileview$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/tileview/lv_tileview.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/tileview_lv_tileview$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/tileview/lv_tileview.c

$(IntermediateDirectory)/win_lv_win$(ObjectSuffix): ../../../../../../../components/lvgl/src/extra/widgets/win/lv_win.c  
	$(CC) $(SourceSwitch) ../../../../../../../components/lvgl/src/extra/widgets/win/lv_win.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/win_lv_win$(ObjectSuffix) -MF$(IntermediateDirectory)/win_lv_win$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/win_lv_win$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/win_lv_win$(PreprocessSuffix): ../../../../../../../components/lvgl/src/extra/widgets/win/lv_win.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/win_lv_win$(PreprocessSuffix) ../../../../../../../components/lvgl/src/extra/widgets/win/lv_win.c

$(IntermediateDirectory)/src_access$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/access.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/access.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_access$(ObjectSuffix) -MF$(IntermediateDirectory)/src_access$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_access$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_access$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/access.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_access$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/access.c

$(IntermediateDirectory)/src_adv$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/adv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/adv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_adv$(ObjectSuffix) -MF$(IntermediateDirectory)/src_adv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_adv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_adv$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/adv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_adv$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/adv.c

$(IntermediateDirectory)/src_beacon$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/beacon.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/beacon.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_beacon$(ObjectSuffix) -MF$(IntermediateDirectory)/src_beacon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_beacon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_beacon$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/beacon.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_beacon$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/beacon.c

$(IntermediateDirectory)/src_cfg_cli$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_cli.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_cli.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_cfg_cli$(ObjectSuffix) -MF$(IntermediateDirectory)/src_cfg_cli$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_cfg_cli$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_cfg_cli$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_cli.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_cfg_cli$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_cli.c

$(IntermediateDirectory)/src_cfg_srv$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_srv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_srv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_cfg_srv$(ObjectSuffix) -MF$(IntermediateDirectory)/src_cfg_srv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_cfg_srv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_cfg_srv$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_srv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_cfg_srv$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/cfg_srv.c

$(IntermediateDirectory)/src_crypto$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/crypto.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/crypto.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_crypto$(ObjectSuffix) -MF$(IntermediateDirectory)/src_crypto$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_crypto$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_crypto$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/crypto.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_crypto$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/crypto.c

$(IntermediateDirectory)/src_friend$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/friend.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/friend.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_friend$(ObjectSuffix) -MF$(IntermediateDirectory)/src_friend$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_friend$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_friend$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/friend.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_friend$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/friend.c

$(IntermediateDirectory)/src_glue$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/glue.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/glue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_glue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_glue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_glue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_glue$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/glue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_glue$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/glue.c

$(IntermediateDirectory)/src_health_cli$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_cli.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_cli.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_health_cli$(ObjectSuffix) -MF$(IntermediateDirectory)/src_health_cli$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_health_cli$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_health_cli$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_cli.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_health_cli$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_cli.c

$(IntermediateDirectory)/src_health_srv$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_srv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_srv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_health_srv$(ObjectSuffix) -MF$(IntermediateDirectory)/src_health_srv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_health_srv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_health_srv$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_srv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_health_srv$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/health_srv.c

$(IntermediateDirectory)/src_light_model$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/light_model.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/light_model.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_light_model$(ObjectSuffix) -MF$(IntermediateDirectory)/src_light_model$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_light_model$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_light_model$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/light_model.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_light_model$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/light_model.c

$(IntermediateDirectory)/src_lpn$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/lpn.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/lpn.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_lpn$(ObjectSuffix) -MF$(IntermediateDirectory)/src_lpn$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_lpn$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_lpn$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/lpn.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_lpn$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/lpn.c

$(IntermediateDirectory)/src_mesh$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/mesh.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/mesh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_mesh$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mesh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_mesh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_mesh$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/mesh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_mesh$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/mesh.c

$(IntermediateDirectory)/src_model_cli$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_cli.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_cli.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_model_cli$(ObjectSuffix) -MF$(IntermediateDirectory)/src_model_cli$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_model_cli$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_model_cli$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_cli.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_model_cli$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_cli.c

$(IntermediateDirectory)/src_model_srv$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_srv.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_srv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_model_srv$(ObjectSuffix) -MF$(IntermediateDirectory)/src_model_srv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_model_srv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_model_srv$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_srv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_model_srv$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/model_srv.c

$(IntermediateDirectory)/src_net$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/net.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/net.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_net$(ObjectSuffix) -MF$(IntermediateDirectory)/src_net$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_net$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_net$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/net.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_net$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/net.c

$(IntermediateDirectory)/src_nodes$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/nodes.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/nodes.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_nodes$(ObjectSuffix) -MF$(IntermediateDirectory)/src_nodes$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_nodes$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_nodes$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/nodes.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_nodes$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/nodes.c

$(IntermediateDirectory)/src_prov$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/prov.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/prov.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_prov$(ObjectSuffix) -MF$(IntermediateDirectory)/src_prov$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_prov$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_prov$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/prov.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_prov$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/prov.c

$(IntermediateDirectory)/src_proxy$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/proxy.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/proxy.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_proxy$(ObjectSuffix) -MF$(IntermediateDirectory)/src_proxy$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_proxy$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_proxy$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/proxy.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_proxy$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/proxy.c

$(IntermediateDirectory)/src_settings$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/settings.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/settings.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_settings$(ObjectSuffix) -MF$(IntermediateDirectory)/src_settings$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_settings$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_settings$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/settings.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_settings$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/settings.c

$(IntermediateDirectory)/src_shell$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/shell.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/shell.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_shell$(ObjectSuffix) -MF$(IntermediateDirectory)/src_shell$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_shell$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_shell$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/shell.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_shell$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/shell.c

$(IntermediateDirectory)/src_testing$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/testing.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/testing.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_testing$(ObjectSuffix) -MF$(IntermediateDirectory)/src_testing$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_testing$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_testing$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/testing.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_testing$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/testing.c

$(IntermediateDirectory)/src_transport$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/transport.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/transport.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_transport$(ObjectSuffix) -MF$(IntermediateDirectory)/src_transport$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_transport$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_transport$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/transport.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_transport$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/transport.c

$(IntermediateDirectory)/src_wm_ble_mesh_store$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/wm_ble_mesh_store.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/wm_ble_mesh_store.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wm_ble_mesh_store$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wm_ble_mesh_store$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wm_ble_mesh_store$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wm_ble_mesh_store$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/mesh/src/wm_ble_mesh_store.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wm_ble_mesh_store$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/mesh/src/wm_ble_mesh_store.c

$(IntermediateDirectory)/src_addr$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/util/src/addr.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/util/src/addr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_addr$(ObjectSuffix) -MF$(IntermediateDirectory)/src_addr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_addr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_addr$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/util/src/addr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_addr$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/util/src/addr.c

$(IntermediateDirectory)/src_ble_hci_uart$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/transport/uart/src/ble_hci_uart.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/transport/uart/src/ble_hci_uart.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_hci_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_hci_uart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_hci_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_hci_uart$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/transport/uart/src/ble_hci_uart.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_hci_uart$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/transport/uart/src/ble_hci_uart.c

$(IntermediateDirectory)/src_ble_svc_gap$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/services/gap/src/ble_svc_gap.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/services/gap/src/ble_svc_gap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_svc_gap$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_svc_gap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_svc_gap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_svc_gap$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/services/gap/src/ble_svc_gap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_svc_gap$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/services/gap/src/ble_svc_gap.c

$(IntermediateDirectory)/src_ble_svc_gatt$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/services/gatt/src/ble_svc_gatt.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/services/gatt/src/ble_svc_gatt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_svc_gatt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_svc_gatt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_svc_gatt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_svc_gatt$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/services/gatt/src/ble_svc_gatt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_svc_gatt$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/services/gatt/src/ble_svc_gatt.c

$(IntermediateDirectory)/src_ble_store_config$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_config.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_config.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_store_config$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_store_config$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_store_config$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_store_config$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_config.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_store_config$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_config.c

$(IntermediateDirectory)/src_ble_store_nvram$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_nvram.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_nvram.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_store_nvram$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_store_nvram$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_store_nvram$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_store_nvram$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_nvram.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_store_nvram$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/ble_store_nvram.c

$(IntermediateDirectory)/src_wm_bt_storage$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/wm_bt_storage.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/wm_bt_storage.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wm_bt_storage$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wm_bt_storage$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wm_bt_storage$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wm_bt_storage$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/config/src/wm_bt_storage.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wm_bt_storage$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/store/config/src/wm_bt_storage.c

$(IntermediateDirectory)/src_ble_store_ram$(ObjectSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/ram/src/ble_store_ram.c  
	$(CC) $(SourceSwitch) ../../../../../../../src/bt/blehost/nimble/host/store/ram/src/ble_store_ram.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ble_store_ram$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ble_store_ram$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ble_store_ram$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ble_store_ram$(PreprocessSuffix): ../../../../../../../src/bt/blehost/nimble/host/store/ram/src/ble_store_ram.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ble_store_ram$(PreprocessSuffix) ../../../../../../../src/bt/blehost/nimble/host/store/ram/src/ble_store_ram.c


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S

-include $(IntermediateDirectory)/*$(DependSuffix)
