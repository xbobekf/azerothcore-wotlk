-- Define the custom NPC's ID
local NPC_ID = 43283

-- Function to handle NPC greeting
local function OnGossipHello(event, player, creature)
    player:GossipClearMenu() -- Clear any existing gossip options
    player:GossipMenuAddItem(0, "Fight me, priest!", 0, 1) -- Add a greeting option
    player:GossipMenuAddItem(0, "Nevermind..", 0, 2)
    player:GossipSendMenu(1, creature) -- Send the gossip menu to the player
end

-- Function to handle player interaction with gossip options
local function OnGossipSelect(event, player, _, _, intid, code, creature)
    if intid == 1 then
        player:SendBroadcastMessage("Welcome to our server, brave hero! Now you will pay") -- Send a welcome message
        if creature then
            creature:SetEquipmentSlots(5500) -- Equip the creature with a specific item (replace 5500 with the item entry ID)
            creature:SetFaction(15) -- Set the creature's faction to a hostile faction ID (replace 15 with the faction ID)
        end
    end
    player:GossipComplete() -- Close the gossip window after the interaction
end

-- Register NPC events
RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello) -- Register the NPC greeting event
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect) -- Register the NPC gossip selection event
