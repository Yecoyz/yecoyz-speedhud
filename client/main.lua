CreateThread(function()
    while (true) do 
    local sleep = 1000
        local player = PlayerPedId()
        local isinvehicle = IsPedInAnyVehicle(player, false)
        if (isinvehicle) then 
            sleep = 100
            local entityspeed = GetEntitySpeed(player)
            local speed = entityspeed * 3.6
            local veh = GetVehiclePedIsIn(player, false)
            local fuel = GetVehicleFuelLevel(veh)

            SendNuiMessage(json.encode({
                type = "show",
                speed = speed,
                fuel = fuel/100
            }))
        else
            SendNuiMessage(json.encode({
                type = "hide",
            }))  
        end
        Wait(sleep)
    end
end)