
# 🔦 ColorOS Torch Boost (手电筒亮度突破模块)

![Magisk](https://img.shields.io/badge/Magisk-Supported-00af9c?style=for-the-badge&logo=magisk)
![KernelSU](https://img.shields.io/badge/KernelSU-Supported-202324?style=for-the-badge)
![ColorOS](https://img.shields.io/badge/ColorOS-16-10B981?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)

专为 ColorOS 16 系统定制的 Magisk / KernelSU 模块。突破系统默认手电筒亮度限制，在每次打开手电筒时，自动、无感地将亮度强制提升至 100（默认四档亮度仅为 50），满血释放 LED 硬件潜能！

## ⚙️ 兼容性 (Compatibility)

- **系统**：理论支持基于 ColorOS 16  的一加 (OnePlus) 与 OPPO 设备。
- **ROOT 环境**：需要 Magisk 20.0+ 或 KernelSU。
- **硬件**：模块会自动检测 `/sys/class/leds/led:torch_0/brightness` 节点，如设备不支持将自动静默退出，不占用后台。

## 🛠️ 安装说明 (Installation)

1. 下载最新的 `ColorOS_Torch_Boost_vX.X.zip` 文件。
2. 打开 Magisk 或 KernelSU 应用程序。
3. 进入 **模块 (Modules)** 界面。
4. 点击 **从本地安装 (Install from storage)**，选择下载好的 ZIP 文件。
5. 等待刷入完成并 **重启设备 (Reboot)**。
6. 重启后，下拉状态栏打开手电筒，享受刺眼的光芒吧！



## ⚠️ 免责声明

**请勿擅自修改脚本将亮度调整至极限值（如 500）！**
手电筒模式缺乏闪光灯模式的瞬时保护机制，长时间超高亮度运行会导致极高的发热，极易烧毁 LED 灯珠排线或融化摄像头模组塑料件。
- 默认设置的 `100` 是经过测试的安全均衡值。
- 作者不对因修改代码导致任何硬件损坏、主板烧毁承担任何责任。使用本模块即代表您同意自行承担所有风险。

## 📝 更新日志 

**v1.0-Stable**
- 初始版本发布。
- 实现四颗 LED 灯珠同步提亮。
- 引入超低功耗动态轮询脚本。
