-------------------------------------
-- Leave House should:
-- # check if the player is inside the house
-- # check if the player is the owner of the house
-- # remove the owner of the house
-------------------------------------
function onSay(player, words, param)
  local position = player:getPosition()
  local tile = Tile(position)
  local house = tile and tile:getHouse()
  -- check if the player is inside a house
  if house == nil then
    player:sendCancelMessage("You are not inside a house.")
    position:sendMagicEffect(CONST_ME_POFF)
    return false
  end

  -- check if the player is the owner
  if house:getOwnerGuid() ~= player:getGuid() then
    player:sendCancelMessage("You are not the owner of this house.")
    position:sendMagicEffect(CONST_ME_POFF)
    return false
  end

  -- remove the owner
  house:setOwnerGuid(0)
  -- send message to player
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You have successfully left your house.")
  position:sendMagicEffect(CONST_ME_POFF)
  return false
end
