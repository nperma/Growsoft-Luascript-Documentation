print("Example Script")
-- NOTE : DONT SELL THIS SCRIPT, THIS SCRIPT IS FREE TO USE!!

local commands = {"customworld","cworld"}
local DEV = 51

registerLuaCommand({
  command = commands[1],
  description = "Custom World for your server",
  roleRequired = DEV
})

local function FormDialog(...)
  local dialogue = table.concat({
          "set_default_color|`o",
          "set_border_color|60,130,200,200|",
          "set_bg_color|60,130,200,100|",
          "add_label_with_icon|big|Custom World|left|2|\n",
          "add_textbox|Make Customize World Template|",
          "add_spacer|small|",
          string.format("add_text_input|size_x|Width: |%d|3", select(2,...)),
          string.format("add_text_input|size_y|Height: |%d|3",select(3,...)),
          "add_spacer|small|",
          "add_button|submit|Submit|noflags|0|0|",
          "add_quick_exit|",
          "end_dialog|cw_dialog||"
        }, "\n")
      
  select(1,...):onDialogRequest(dialogue)
end

onPlayerCommandCallback(function(_,py,cmd)
    if py:hasRole(DEV) and (cmd:lower() == commands[1] or cmd:lower() == commands[2]) then
        FormDialog(py, 100, 60)
    return true
    end
  return false
end)

onPlayerDialogCallback(function(_, py, data)
  if data["dialog_name"] == "cw_dialog" then
    if data["buttonClicked"] == "submit" then
    local cx,cy=tonumber(data["size_x"]),tonumber(data["size_y"]) local WorldName = nil
    for i=1000,9999 do
      local cnd="TEMPLATE"..tostring(i)
      if not worldExists(cnd) then WorldName = cnd break end
    end
    
    local www = World.new(WorldName,cx,cy,0)
        
    local BEDROCK_ID  = 8
    local ROCK_ID     = 10
    local LAVA_ID     = 4
    local DIRT_ID     = 2
    local MAINDOOR_ID = 6
    local BACKGROUND_SURFACE_ID       = 14
    
    local width  = www:getWorldSizeX()
    local height = www:getWorldSizeY()
    local maindoorPlaced = false
    local doorX, doorY = nil, nil
    
    for y = 0, height - 1 do
        for x = 0, width - 1 do
            local tile = www:getTile(x, y)
            local ratio = y / height
            if not maindoorPlaced and y == math.floor(height * 0.35) then
                doorX = math.random(0, width - 1)
                doorY = y
                local tile_door = www:getTile(doorX, y)
                www:setTileForeground(tile_door, MAINDOOR_ID)
                maindoorPlaced = true
                local tileUnder = www:getTile(doorX, y + 1)
                if tileUnder then
                    www:setTileForeground(tileUnder, BEDROCK_ID)
                end
            end
            if ratio > 0.35 and ratio <= 0.45 then
                if not (maindoorPlaced and y == doorY + 1 and x == doorX) then
                    www:setTileForeground(tile, DIRT_ID)
                end
            elseif ratio > 0.45 and ratio <= 0.85 then
                if math.random() < 0.04 then
                    www:setTileForeground(tile, ROCK_ID)
                else
                    www:setTileForeground(tile, DIRT_ID)
                end
            elseif ratio > 0.85 and ratio <= 0.90 then
                local r = math.random()
                if r < 0.4 then
                    www:setTileForeground(tile, LAVA_ID)
                elseif r < 0.025 then
                    www:setTileForeground(tile, ROCK_ID)
                else
                    www:setTileForeground(tile, DIRT_ID)
                end
            elseif ratio > 0.90 then www:setTileForeground(tile, BEDROCK_ID) end
            if ratio > 0.35 then www:setTileBackground(tile, BACKGROUND_SURFACE_ID) end
        end
    end

    www:save()
    py:enterWorld(WorldName,"")
    py:onTextOverlay("`2Success Make Custom World")
    return true
    end
  end
  return false
end)
