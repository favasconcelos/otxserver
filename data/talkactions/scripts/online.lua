function onSay(player, words, param)
  local hasAccess = player:getGroup():getAccess()
  local players = Game.getPlayers()
  local playerCount = Game.getPlayerCount()
  player:sendTextMessage(MESSAGE_INFO_DESCR, playerCount .. ' players online.')
  return false
end
