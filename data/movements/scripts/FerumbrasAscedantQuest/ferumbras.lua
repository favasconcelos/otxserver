local destination = Position(33321, 32319, 13)

function onStepIn(creature, item, position, fromPosition)
  local player = creature:getPlayer()
  if not player then
    return true
  end

  if player:getStorageValue(88419) == 1 then
    player:teleportTo(destination)
    position:sendMagicEffect(CONST_ME_TELEPORT)
    destination:sendMagicEffect(CONST_ME_TELEPORT)
  else
    player:teleportTo(fromPosition)
    position:sendMagicEffect(CONST_ME_TELEPORT)
    fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
    player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need to give 30 demonic essences to npc Mazarius to pass here.")
  end
  return true
end
