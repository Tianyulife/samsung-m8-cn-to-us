# M80B 国行与香港固件比较

核对日期：2026-10-21。设备型号：LS32BM80BUCXXF。

| 项目 | 中国大陆官网包 | 香港官网包 |
| --- | --- | --- |
| 版本 | 1651.1 | 1720.7 |
| ZIP 文件 | T-PTMWWC_c.zip | T-PTMWWC.zip |
| 官网发布日期 | 2025-09-26 | 2026-05-08 |
| 包内 build date | 2024-08-06 | 2026-02-24 |
| 包内 model string | T-PTMWWC | T-PTMWWC |
| 包内升级目录 | T-PTMWWC/image/ | T-PTMWWC/image/ |
| 包内 partitions 字符串 | 123456789101213141518192223 | 123456789101213141518192223 |

来源：

- 中国大陆：https://www.samsung.com/cn/support/model/LS32BM80BUCXXF/
- 香港：https://www.samsung.com/hk/support/model/LS32BM80BUCXXK/
- 国行包：https://downloadcenter.samsung.com/content/FM/202509/20250926140925796/T-PTMWWC_c.zip
- 香港包：https://downloadcenter.samsung.com/content/FM/202605/20260508161326571/T-PTMWWC.zip

方法：读取官网页面的软件元数据，并通过 HTTP Range 读取 ZIP 头、尾，检查中央目录及解压 info.txt。未下载完整固件，未验证完整包哈希，未将固件传入显示器。

结论：两个包具有相同的公开型号字符串、目录和 partitions 字符串，值得继续核对兼容性；这些字段不足以证明国行能安装香港包。香港官网该固件条目的适用地区为 HK、TW。未找到三星明确授权 LS32BM80BUCXXF 使用该香港包的资料，也未确认跨区后的服务地区行为、降级能力或恢复办法。

两个 ZIP 均包含 SWU_AUTO_FLAG。后续准备 U 盘时须先核实该标志的行为，避免将未经确认的完整包直接放入已连接显示器的介质。

Smart Hub 地区变更与固件升级需要分别验证；当前没有证据表明必须先改 Smart Hub 地区或工程菜单地区才能升级。
