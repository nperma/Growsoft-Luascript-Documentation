print("Example Script Hello World") -- send message to console

local commandName = "hello"

registerLuaCommand({ -- to show on the help list command by roleRequired placement
  command = commandName,
  description = "Hello World",
  roleRequired = 0 -- Role ID, default
})

onPlayerCommandCallback(function(world, player, command)
  if command:lower() == commandName then
   -- send to yourself player:onTalkBubble(player:getNetID(), "Hello World!!", 0) -- isApi = required, not optional
    world:sendPlayerMessage(player, "Hello World!!") -- send to all player in the world
    for _,py in ipairs(world:getPlayers()) do py:playAudio("success.wav",0) end
    return true
  end
 return false
end)
