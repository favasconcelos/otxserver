local config = {
  requiredLevel = 50,
  daily = false,
  centerAscendingFerumbrasRoomPosition = Position(33392, 31473, 14),
  playerPositions = {
    Position(33269, 31477, 14),
    Position(33269, 31478, 14),
    Position(33269, 31479, 14),
    Position(33269, 31480, 14),
    Position(33269, 31481, 14),
    Position(33270, 31477, 14),
    Position(33270, 31478, 14),
    Position(33270, 31479, 14),
    Position(33270, 31480, 14),
    Position(33270, 31481, 14),
    Position(33271, 31477, 14),
    Position(33271, 31478, 14),
    Position(33271, 31479, 14),
    Position(33271, 31480, 14),
    Position(33271, 31481, 14)
  },
  newPositions = {
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14),
    Position(33391, 31482, 14)
  },
  AscendingFerumbrasPositions = {
    Position(33392, 31473, 14)
  }
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
  if item.itemid == 9826 then
    local storePlayers, playerTile = {}

    for i = 1, #config.playerPositions do
      playerTile = Tile(config.playerPositions[i]):getTopCreature()
      if not playerTile or not playerTile:isPlayer() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need 15 players.")
        return true
      end

      if playerTile:getLevel() < config.requiredLevel then
        player:sendTextMessage(
          MESSAGE_STATUS_SMALL,
          "All the players need to be level " .. config.requiredLevel .. " or higher."
        )
        return true
      end

      storePlayers[#storePlayers + 1] = playerTile
    end

    local specs, spec = Game.getSpectators(config.centerAscendingFerumbrasRoomPosition, false, false, 22, 22, 22, 22)
    for i = 1, #specs do
      spec = specs[i]
      if spec:isPlayer() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
        return true
      end

      spec:remove()
    end

    for i = 1, #config.AscendingFerumbrasPositions do
      Game.createMonster("Ascending Ferumbras", config.AscendingFerumbrasPositions[i])
    end

    local players
    for i = 1, #storePlayers do
      players = storePlayers[i]
      config.playerPositions[i]:sendMagicEffect(CONST_ME_POFF)
      players:teleportTo(config.newPositions[i])
      config.newPositions[i]:sendMagicEffect(CONST_ME_ENERGYAREA)
      players:setDirection(DIRECTION_EAST)
    end
  elseif item.itemid == 9825 then
    if config.daily then
      player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
      return true
    end
  end

  item:transform(item.itemid == 9826 and 9825 or 9826)
  return true
end
