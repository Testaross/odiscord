enabled = true

Citizen.CreateThread(function()
	while enabled do
		SetDiscordAppId(cfg.DiscordAppID)
		SetDiscordRichPresenceAsset(cfg.discordImageName)
		SetDiscordRichPresenceAssetText(cfg.hovertext)
		if cfg.smallassetenable == true then
			SetDiscordRichPresenceAssetSmall(cfg.smallDiscordImageName)
			SetDiscordRichPresenceAssetSmallText(cfg.smallHoverText)
		end
		
		lib.callback('GetCurrentPlayers', false, function(players, maxPlayers)
			SetRichPresence('Players: ' .. players .. '/' .. maxPlayers)
		end)

		if cfg.Link1Toggle == true then
			SetDiscordRichPresenceAction(0, cfg.Link1Button, cfg.Link1)
		end

		if cfg.Link2Toggle == true then
			SetDiscordRichPresenceAction(1, cfg.Link2Button, cfg.Link2)
		end

		Citizen.Wait(60000)
	end
end)

if cfg.toggle == true then
	RegisterCommand(cfg.togglecommand, function()
		if enabled == true then
			lib.notify({
				title = cfg.NotificationTitle,
				description = cfg.NotificationError,
				type = 'error'
			})
			enabled = false
			SetDiscordAppId()
			SetDiscordRichPresenceAsset()
			SetDiscordRichPresenceAssetText()
			SetRichPresence()
		else
			lib.notify({
				title = cfg.NotificationTitle,
				description = cfg.NotificationSuccess ,
				type = 'success'
			})
			enabled = true
		end		
    end)
end

