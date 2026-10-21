# M80B Local Set 强写 US：执行结果

> 当前状态（2026-10-22）：本机已完成官方 OTA 至 1720.7；升级后重新读取确认 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 及海外端点均保留。本文包含历史阶段状态，最终结论见 [项目 README](../../README.md)。

日期：2026-10-22。设备 LS32BM80BUCXXF。用户明确授权开始操作并继续；目标为工厂 Local Set 通用枚举 US=1。未升级固件。

## 最终结果

| 项目 | 修改前 | 修改后 |
| --- | --- | --- |
| 工厂 Local Set 全局枚举 | 65 / CHI_DTV | 1 / US |
| 工厂参数 UID 194 的存储字节 | 63 | 1 |
| Preventing Import（UID 761） | 13 | 13 |
| Smart Hub 服务国家 | US | US |
| WAS 国内服务器开关 | 此前已关闭 | 本次未改 |
| 认证与安全服务地址 | samsungqbe.com | samsungqbe.com |

用户随后退出并重开 Apps，确认“海外应用正常，没有新增报错”。设备端 keep-localset 标记用于取消 600 秒实验自动恢复。最终状态及取消标记核对见 final-state.txt。

## 实际存储验证

读取 /dev/eeprom 普通文件接口曾得到 65536 字节全 FF。这份数据不是有效恢复来源；不能因为长度和哈希匹配就认为是有效 EEPROM 转储。

改为调用三星 FCNvramMap::Read 原生接口后，取得有效原始数据，并验证两个已知工厂字段：

- Local Set 的原生读取地址 0x3E23：原值 63。
- Preventing Import 的原生读取地址 0x3E65：原值 13。

有效备份 native-eeprom-before.bin，65536 字节，SHA256：

```text
4bc4bb24f4fa6281a9c6f8131580bc9cf659c48b7bc55964da75082ae3678a45
```

写入后由独立 SDK 会话再次调用原生读取接口，取得 native-eeprom-after.bin，SHA256：

```text
6145178ccf41f72c22d7106fc63bdc923b00192190309beeeb67073b04357127
```

全 65536 字节比较仅发现 **一个字节变化**：0x3E23 从 63 改为 1。见 storage-diff.json。其余字节，包括 Preventing Import=13、型号、序列号等所在原始存储字节保持不变。没有把此对比扩大为整台机器所有分区均未变化的声明。

这些原始备份含本机工厂数据，仅保存在本机，文件权限为 0600，不对外发布。

## 实际执行入口

调用 libfactory-interface-WW.so 的 factory_set_data(194, 1)，绕过菜单级过滤，原生返回成功。随后 factory_get_data(194) 和 factory_get_localset_enum 均读回 1。

之前先执行原存储值 63 的写回测试，返回成功且读回全局枚举 65；再启动自动恢复保护并写 US。此测试证明原值写入口在当时可用，但本次成功后没有实际从 US 再切回 CHI_DTV，也不将其称为已完成完整回退演练。

重要的读写表示差异：factory_get_data(194) 经过存储到全局枚举转换；factory_set_data(194, ...) 写入存储表示。因此恢复 CHI_DTV 的写入值为 **63**，不是 65。此前未验证候选中的 65 已在任何工厂写入前更正，未实际写入错误恢复值。

执行前还核对了辅助程序及设备 libfactory-interface-WW.so 的 SHA256。最初一次校验命令含转义问题，在任何写入前中止；修正后的第二次执行成功。

## 回退资料

原生恢复程序已保存在设备：

```text
/home/owner/share/tmp/sdk_tools/m8-localset-trial/LocalSetTrial.dll
```

程序的 restore 模式写回 UID 194 的存储值 63，并核对全局枚举为 65；它要求 Preventing Import 仍是 13，避免在基线变动后继续覆盖。此目录没有注册开机启动。

恢复入口需要具备相应设备访问权限的会话：

```sh
/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-localset-trial/LocalSetTrial.dll restore
```

这会恢复工厂 Local Set；不自动改变之前单独配置的 Smart Hub 服务国家 US 或 WAS 开关。完整恢复到此前国行服务状态还需按已有报告恢复后两项。不要直接把整份 EEPROM 备份覆盖回设备，以免覆盖其他时刻更新的工厂数据。

同时保存了本次写入前的 fconfig-before.db；它与先前换区实验的同名文件位于不同目录。

## 边界与未验证项

- 本次没有把 Preventing Import 改成所谓“全球值”。两版公共固件有同样定义，尚无美国 M8 实机读数用于确定它的出厂值。
- 工厂 Local Set=US 不等同于型号、设备证书、主板、面板和服务端登记全部成为美版。
- 未重启、断电或 OTA，重启后保持情况及升级后的行为尚未实测。
- Apps 已通过用户验证；未验证全部应用的账号、DRM 或服务区域授权。
- 临时 root 会话的原身份文件校验和上游 staging 清理通过。实验恢复辅助文件有意保留，便于回退。


## 后续实测：Preventing Import = 0

2026-10-22 用户授权测试后，Preventing Import 从 13 改为 0，Local Set 保持 US。地区列表从 2 项增至 31 项，用户确认 Apps 正常；原生 NVRAM 只改变 0x3E65 一个字节。测试值已保留并取消自动恢复。0 的解锁效果已实测，不代表已经取得美国 M8 原厂值。详见 ../import-trial/result.md。
