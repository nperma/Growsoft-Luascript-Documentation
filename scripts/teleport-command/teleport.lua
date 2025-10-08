print("Example Script")

-- Tile size in pixels
local pixel = 32

-- Command name
local commandTP = "tp"

-- Register teleport command
registerLuaCommand({
    command = commandTP,
    roleRequired = 0,
    description = "Teleport player to coordinates in the current world (owner only)."
})

-- Callback when player uses a command
onPlayerCommandCallback(function(world, player, fullCommand)
    -- Extract command name and arguments string
    local commandName, argsStr = fullCommand:match("^(%S+)%s*(.*)")

    -- Check if the player is the world owner
    local isOwnerWorld = world:getOwner(player)

    -- Stop execution if command is not "tp" or player is not the owner
    if commandName:lower() ~= "tp" or not isOwnerWorld then
        player:onTalkBubble(player:getNetID(), "Only the world owner can use teleport!", 3)
        return false
    end

    -- Split arguments into x and y coordinates
    local xCoor, yCoor = argsStr:match("^(%d+)%s*(%d+)")
    xCoor = tonumber(xCoor)
    yCoor = tonumber(yCoor)

    -- Show message if coordinates are invalid
    if not xCoor or not yCoor then
        player:onTalkBubble(player:getNetID(), "Invalid format! Use: /tp [x] [y]", 3)
        return true
    end

    -- Get world size in tiles
    local worldSize = {
        x = world:getSizeX() / pixel,
        y = world:getSizeY() / pixel
    }

    -- Check if coordinates are out of bounds
    if xCoor > worldSize.x or xCoor < 0 then
        player:onTalkBubble(player:getNetID(), "X coordinate is out of world bounds!", 3)
        return true
    end

    if yCoor > worldSize.y or yCoor < 0 then
        player:onTalkBubble(player:getNetID(), "Y coordinate is out of world bounds!", 3)
        return true
    end

    -- Set player position in the world
    world:setPlayerPosition(player, xCoor * pixel, yCoor * pixel)

    -- Play teleport sound
    player:playAudio("teleport.wav")

    -- Confirm successful teleport
    player:onTalkBubble(player:getNetID(), "Teleported to (" .. xCoor .. ", " .. yCoor .. ")", 3)

    return true
end)
