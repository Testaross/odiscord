lib.callback.register('GetCurrentPlayers', function(source, item, metadata, target)
	local TotalPlayers = 0
    local players = GetPlayers()
    for _ in pairs(players) do
        TotalPlayers += 1
    end
    local MaxPlayers = GetConvarInt('sv_maxclients', 36)
    return TotalPlayers, MaxPlayers
end)
