AddEventHandler("playerSpawned", function(spawn)
  TriggerEvent("esx_bemvindo:notify", "CHAR_MP_FM_CONTACT", 1, "Nome do servidor", false, "Bem vindo ao nosso servidor!")
end)

RegisterNetEvent("esx_bemvindo:notify")
AddEventHandler("esx_bemvindo:notify", function(icon, type, sender, title, text)
    Citizen.CreateThread(function()
		Wait(1)
		SetNotificationTextEntry("STRING");
		AddTextComponentString(text);
		SetNotificationMessage(icon, icon, true, type, sender, title, text);
		DrawNotification(false, true);
    end)
end)
