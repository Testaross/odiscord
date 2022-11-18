enabled = true

Citizen.CreateThread(function()
	while enabled do
	SetDiscordAppId(cfg.DiscordAppID)
	SetDiscordRichPresenceAsset(cfg.discordImageName)
        SetDiscordRichPresenceAssetText(cfg.hoverText)
        SetDiscordRichPresenceAssetSmall(cfg.smallDiscordImageName)
        SetDiscordRichPresenceAssetSmallText(cfg.smallHoverText)
        SetRichPresence(cfg.richPresenceText) 
        lib.callback('GetCurrentPlayers', false, function(players)
            SetRichPresence('Players: '..result..''..cfg.MaxPlayers)
        end)
        
		if cfg.Link1Toggle == true then
        	SetDiscordRichPresenceAction(0, cfg.button1)
		end
        
		if cfg.Link2Toggle == true then
			SetDiscordRichPresenceAction(1, cfg.button2)
		end
       
		Citizen.Wait(60000)
	end
end)

RegisterCommand('togglepresence', function()
	if enabled == true then
		enabled = false
	else
		enabled = true
	end	
end)

