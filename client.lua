function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.2, 1.2)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.87, 0.8)

end
function secondtext(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.05, 1.05)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.87, 0.9)

end



Citizen.CreateThread(function()
    local run = false
    local ped = PlayerPedId()
    local speed = 0
    while true do
        Citizen.Wait(0)

        if (IsPedInAnyVehicle(ped, false)) then
             
            speed = GetEntitySpeed(GetVehiclePedIsIn(ped, false))*3.6
            text(math.floor(speed).." Km/h")

        elseif (IsPedInAnyVehicle(ped, false)) == false then
            print("By ZeroX")
            speed = GetEntitySpeed(ped)*3.6
            secondtext(math.floor(speed).." Km/h")
            
        end
        
    end
end)
