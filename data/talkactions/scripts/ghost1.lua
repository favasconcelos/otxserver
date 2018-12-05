function onSay(player, words, param)
  if not player:getGroup():getAccess() then
    return true
  end

  if player:getAccountType() < ACCOUNT_TYPE_GOD then
    return false
  end

  local position = player:getPosition()
  local isGhost = not player:isInGhostMode()

  player:setGhostMode(isGhost)
  if isGhost then
    --position:sendMagicEffect(CONST_ME_YALAHARIGHOST)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'FICOU INVISIVEL.')
  else
    --position:sendMagicEffect(CONST_ME_SMOKE)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'TA APARECENDO DE NOVO.')
    position.x = position.x + 1
  end
  return false
end
