Config = {
    maxSpeed = 200,  -- 默认最大速度限制
    kmh = true,  -- 是否使用 km/h 单位
    kmhValue = 3.6,  -- 用于转换为 km/h 的值
    mphValue = 2.236936,  -- 用于转换为 mph 的值
    anticheatEnabled = true,  -- 车辆速度反作弊检测开关
    vehicleSpeeds = {
        [GetHashKey("adder")] = 250,
        [GetHashKey("comet2")] = 240,
        -- 添加更多车辆及其对应的最大速度
    }
}
