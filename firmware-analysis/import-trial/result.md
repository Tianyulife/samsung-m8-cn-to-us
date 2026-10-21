# Preventing Import = 0 控制实验

日期：2026-10-22。设备 LS32BM80BUCXXF，当前仍使用原国行 1651.1。用户明确要求测试 0。

## 已验证结果

| 项目 | 修改前 | 修改后 |
| --- | --- | --- |
| Preventing Import（工厂 UID 761） | 13 | 0 |
| Local Set（工厂全局枚举） | 1 / US | 1 / US |
| 有效 Local Set 列表项数 | 2 | 31 |
| Smart Hub 服务国家 | US | US |
| 认证与安全服务 | samsungqbe.com | samsungqbe.com |

修改前列表仅 NONE、CHI_DTV。修改后能读取 US、KOR、EU、TAIWAN、HKG_DTV 等 31 项；完整名单保存于 localset-list-diff.json。

这直接验证了 0 能解除本机此组 Local Set 地区过滤。它不证明美国 M8 实机出厂时的 Preventing Import 一定为 0，也不等同于整机硬件或设备证书转成美版。

## 备份与实际变化

写入前经三星原生 NVRAM Read 保存完整 65536 字节数据，SHA256：

```text
6145178ccf41f72c22d7106fc63bdc923b00192190309beeeb67073b04357127
```

写入后经独立 SDK 会话再次读取原生存储，SHA256：

```text
c7e6461f398b891ad4ab5dd321d135cd2a0b197dc567d73d063f11f8b8e15fcd
```

65536 字节比较仅一处变化：**0x3E65：13 → 0**。Local Set 的存储字节 0x3E23 保持 1。见 storage-diff.json。

原始备份为 native-eeprom-before.bin，写后数据为 native-eeprom-after.bin，权限 0600。文件含本机工厂信息，仅保存在本机，不对外发布。

## 实施与恢复

执行前核对设备库与辅助程序哈希，并调用 factory_set_data(761,13) 写回原值测试，返回成功且读回 13；之后启动 600 秒自动恢复任务，再调用 factory_set_data(761,0)，返回成功且读回 0。

成功后没有在本次会话实际完成 0 → 13 → 0 的完整往返试验，不将原值写回测试扩大为已完成完整回退演练。

恢复到本次实验前的组合（Local Set US、Preventing Import 13）使用相应权限会话执行：

```sh
/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-import-trial/ImportTrial.dll restore-import
```

该 helper 仅写工厂 UID 761，且要求 Local Set 仍为 US、当前 Preventing Import 为 0 或 13，避免覆盖未知基线。

若随后还要恢复旧 Local Set CHI_DTV，应先恢复 Preventing Import 13，再使用上一阶段 LocalSetTrial.dll 的 restore 模式写回 Local Set 存储值 63；服务国家和 WAS 开关另有独立恢复步骤。不要直接覆盖整份 EEPROM 备份。

## 当前验证进度

- 设备端设置与独立存储比较均通过。
- 临时 root 会话身份文件校验与 staging 清理通过。
- 已写入 keep-import 标记取消自动恢复，并独立读回确认；最终状态见 final-state.txt。
- 用户重新打开 Apps 后确认“正常，没有新增报错”。
- 后续用户已手动重启，独立 SDK 读回确认开机标识变化且 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 和海外认证端点均保留；用户确认界面正常。证据见 ../reboot-verification/after.txt。
- 后续已升级 1720.7 并再次重启，独立 SDK 读回确认 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 和海外端点均保留；工厂接口库哈希与解包的官方全球 1720.7 一致。见 ../reboot-verification/after-ota.txt。
- 尚未验证断电或恢复出厂后的保持情况。
