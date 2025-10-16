print("Example Script")

local pixel = 32
local commandName = "autoplant"

registerLuaCommand({
    command = commandName,
    roleRequired = 0,
    description = "autoplant in the current world (owner only)."
})

local form = "set_default_color|`o\n"..
             "add_label_with_icon|big|Auto Plant|left|2|\n"..
             "add_spacer|small|\n"..
             "reset_placement_x|\n"..
             "add_textbox|`wAutomatically plant seeds in empty tiles.``|left|\n"..
             "add_item_picker|plant_data|Select|Select Seed|\n"..
             "add_quick_exit|\n"..
             "end_dialog|ap_dialog||"

onPlayerCommandCallback(function(w, p, c)
    if c:lower() == commandName then

    if not w:getOwner(p) then
        p:onTalkBubble(p:getNetID(), "`cOnly the world owner can use this.", 0)
        return true
    end

    p:onDialogRequest(form)
    return true
   end
  return false
end)

onPlayerDialogCallback(function(world, player, data)
    if data["dialog_name"] ~= "ap_dialog" then
        return false
    end

    local seed_id = data["plant_data"]
    local item = getItem(seed_id)
    if not item or item:getGrowTime() <= 0 then
        player:onTalkBubble(player:getNetID(), "`cItem is not a valid seed!", 0)
        return true
    end

    local amount_seed = player:getItemAmount(seed_id)
    if amount_seed <= 0 then
        player:onTalkBubble(player:getNetID(), "`cYou don't have any of that seed.", 0)
        return true
    end

    local tiles = world:getTiles()
    local emptyTiles = {}

    local tileMap = {}
    for _, tile in ipairs(tiles) do
        tileMap[tile:getPosX() .. "," .. tile:getPosY()] = tile
    end

    for _, tile in ipairs(tiles) do
        local tid = tile:getTileID()
        if tid == nil or tid == 0 then
            local x = tile:getPosX()
            local y = tile:getPosY()
            local belowKey = x .. "," .. (y + pixel)
            local belowTile = tileMap[belowKey]

            if belowTile then
                local belowID = belowTile:getTileID()
                if belowID ~= nil and belowID ~= 0 and belowTile:getTileItem():getGrowTime() == 0 then
                    table.insert(emptyTiles, tile)
                end
            end
        end
    end

    if #emptyTiles == 0 then
        player:onTalkBubble(player:getNetID(), "`cNo suitable tiles found (need ground below).", 0)
        return true
    end

    local count = 0
    for _, tile in ipairs(emptyTiles) do
        if count >= amount_seed then break end

        world:setTileForeground(tile, seed_id)
        tile:setTileData(1, os.time() - (item:getGrowTime() / 2))
        tile:setTileData(0, math.random(1,4))
        
        world:updateTile(tile)

        player:changeItem(seed_id, -1, 0)
        count = count + 1
    end

    player:onTalkBubble(player:getNetID(), "`2AutoPlant success! Planted " .. count .. " seeds.", 0)
    return true
end)
