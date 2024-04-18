# BigSea_SpeedLimite
 # 限速器

SAVANA限速器 是一个 FiveM 脚本，可让您为所有车辆设置最大速度！
它避免了您必须修改每辆车的处理文件，并防止汽车在地图上行驶 500 公里/小时，而地图上并非为此设计的。

## 配置
如果您想使用 km/h，请将 **Config.kmh** 设置为 true；如果您想使用 mph，则将 **Config.kmh** 设置为 false。

为了限制每个车辆类别的速度，请将 **Config.useCategories** 设置为 true。
之后，继续每个类别并将最大速度设置为您想要设置的任何限制

如果您希望对所有类别使用最大速度，只需将 **Config.useCategories** 设置为 false 并将 **Config.maxSpeed** 设置为您想要设置的任何限制。

不要修改**类别 15 和 16** 的最大速度，否则您将无法驾驶直升机和飞机。

＃＃ 它是如何工作的？
当您在车辆中时，脚本会检查，如果车辆速度超过您设置的限制，它将将该车辆的最大速度设置为您在配置中设置的限制
