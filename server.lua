lib.callback.register('GetCurrentPlayers', function(source, item, metadata, target)
	local TotalPlayers = 0
    local players = GetPlayers()
    for _ in pairs(players) do
        TotalPlayers += 1
    end
    return TotalPlayers
end)
