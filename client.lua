local isSpeedSet = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        
        local playerPed = PlayerPedId()
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            local model = GetEntityModel(vehicle)

            if not isSpeedSet[model] then
                setSpeed(vehicle)
            end
        end
    end
end)

function setSpeed(vehicle)
    local model = GetEntityModel(vehicle)
    local speed = Config.maxSpeed

    if Config.vehicleSpeeds[model] then
        speed = Config.vehicleSpeeds[model]
    end

    if Config.kmh then
        speed = speed / Config.kmhValue
    else
        speed = speed / Config.mphValue
    end

    SetEntityMaxSpeed(vehicle, speed)
    isSpeedSet[model] = true

    -- 添加车辆速度反作弊检测
    if Config.anticheatEnabled then
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(1000)
                local currentSpeed = GetEntitySpeed(vehicle)

                if currentSpeed > (Config.maxSpeed * 0.9) then
                    DropPlayer(GetPlayerServerId(PlayerId()), "检测到超速作弊")
                    break
                end
            end
        end)
    end
end
