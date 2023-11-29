#### 介绍
```
SDK：W800 SDK v1.00.10
LVGL：8.3.5
```
#### 目前支持屏幕驱动
- [x] ST7789
- [x] ST7796S
- [x] ILI9341
- [x] ILI9488
- [x] NV3401
- [x] ST7796
- [x] GC9A01
- [x] GC9307
#### SDK目录结构
```
.
├── app                     用户应用代码
│   ├── button              按键驱动库
│   ├── solutions           LVGL Solution UI
│   │   └── switch_panel    
│   └── xmodem              Xmodem串口传输驱动
├── bin                     编译生成文件
│   ├── build
│   │   └── w800            
│   ├── w800
│   │    ├── w800.bin
│   │    ├── w800.bin.gz
│   │    ├── w800.fls       生成固件用于串口烧录 (包含Secboot.img + user.img) 首次烧录必须烧录该文件
│   │    ├── w800.img       生成固件user.img 二次烧录可以烧录该固件，但是如果擦除Flash后，必须重新烧录.fls格式固件
│   │    ├── w800.map
│   │    └── w800_ota.img   生成固件用于OTA升级程序
├── components
│   ├── lvgl                lvgl源码
│   │   ├── demos
│   │   ├── docs
│   │   ├── env_support
│   │   ├── examples
│   │   ├── scripts
│   │   ├── src
│   │   └── tests
│   ├── lvgl_drivers        lvgl相关外设驱动
│   │   ├── encoder         编码器驱动
│   │   ├── lcd             lcd屏幕驱动
│   │   ├── psram           psram驱动
│   │   ├── spiflash        spiflash驱动
│   │   └── touchpad        触摸屏驱动
│   ├── lvgl_port           lvgl平台适配相关
│   └── user_config.h       用户驱动IO配置文件
├── demo                    原生SDK基本DEMO功能
├── doc                     原生SDK Release Note/API文档
├── include                 API 头文件
├── ld                      链接脚本文件
├── lib                     Wi-Fi，BT，application库
├── platform                芯片及平台相关的公共源代码
├── src                     应用程序，网络协议栈、OS及第三方开源代码集
└── tools                   编译脚本、CDS IDE工程、CDK工程以及IMAGE生成工具
```
#### 使用说明
```
http://ask.winnermicro.com/article/76.html
```
#### 参与贡献
```
https://blog.csdn.net/BoRuiYiQi/article/details/122594862
https://www.winnermicro.com/html/1/156/158/558.html
https://lvgl.io/
```


