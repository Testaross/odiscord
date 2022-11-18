Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(cfg.DiscordAppID)

        -- Here you swill have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('logo')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('4.0')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('logo')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('small_logo')

        SetRichPresence(cfg.richPresenceText) 
        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, cfg.button1)
        SetDiscordRichPresenceAction(1, cfg.button2)

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)


RegisterCommand('togglepresence', function()
		
end)
