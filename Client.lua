

RegisterNetEvent("oldur")
RegisterNetEvent("discordc:silahver")




AddEventHandler("oldur", function()
   
   SetEntityHealth(PlayerPedId(), 0)
   
end)



local dondu;

RegisterNetEvent('freeze:freezePlayer')
AddEventHandler('freeze:freezePlayer', function()
    dondu = not dondu
end)

Citizen.CreateThread(function()
    while true do
        FreezeEntityPosition(GetPlayerPed(-1), dondu)

        Citizen.Wait(0)
    end
end)






local donmadi;

RegisterNetEvent('freeze:notfreeze')
AddEventHandler('freeze:notfreeze', function()
    donmadi = not donmadi
end)

Citizen.CreateThread(function()
    while true do
        FreezeEntityPosition(GetPlayerPed(1), donmadi)

        Citizen.Wait(0)
    end
end)