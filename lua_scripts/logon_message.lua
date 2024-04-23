local function OnPlayerLogin(event, player)
    player:SendBroadcastMessage("Welcome back, " .. player:GetName() .. "! Enjoy your adventures in Azeroth & suck pele!")
end

RegisterPlayerEvent(3, OnPlayerLogin) -- Register the player login event
