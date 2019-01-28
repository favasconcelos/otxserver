function onSay(player, words, param)
  player:sendTextMessage(MESSAGE_INFO_DESCR, Game.getPlayerCount() .. " players online.")
  return false
end
