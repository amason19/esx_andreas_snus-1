--== ESX ==--
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--== WHEN YOU USE THE SNUS ==--

ESX.RegisterUsableItem('snus', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)
    
    TriggerClientEvent('esx_andreas_snus:useSnus', source)
    Citizen.Wait(1500)
    xPlayer.removeInventoryItem('snus', 1)

end)


--== WHEN YOU OPEN THE SNUSDOSA ==--

ESX.RegisterUsableItem('snusdosa', function(source)

    bags = Config.Bags

    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('esx_andreas_snus:openSnusdosa', source)
    xPlayer.removeInventoryItem('snusdosa', 1)
    xPlayer.addInventoryItem('snus', bags)

end)

--=========================================--