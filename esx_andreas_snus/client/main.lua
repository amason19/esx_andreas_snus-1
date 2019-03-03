ESX = nil
local isDead = false
local usingSnus = false

--== CORE THREADING ==--
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)


--== FUNCTIONS ==--

function sendNotification(message, messageType, messageTimeout)
	TriggerEvent("pNotify:SendNotification", {
		text = message,
		queue = "andreas",
		layout = "bottomCenter"
	})
end

--== THE ANIMATION WHEN USING THE SNUS ==--

RegisterNetEvent('esx_andreas_snus:useSnus')
AddEventHandler('esx_andreas_snus:useSnus', function(source)

    local pP = GetPlayerPed(-1)

    if not usingSnus and then
        usingSnus = true

        ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
            TaskPlayAnim(pP, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
            Citizen.Wait(1000)
            ClearPedSecondaryTask(pP)
            usingSnus = false
            sendNotification('Du satte upp en snus under läppen')
        end)
    end
end)

--== NOTIFICATION WHEN YOU OPEN THE SNUSDOSA ==--

RegisterNetEvent('esx_andreas_snus:openSnusdosa')
AddEventHandler('esx_andreas_snus:openSnusdosa', function(source)

    sendNotification('Du öppnade din snusdosa och tog ut snuset')

end)


--=====================================--

--=================--
-- MADE BY ANDREAS --
--=================--