-------------------------------------
-- Sell House should:
-- # check if the trade player exists
-- # check if the player is inside the house
-------------------------------------
function onSay(player, words, param)
  local tradePartner = Player(param)
  if not tradePartner or tradePartner == player then
    player:sendCancelMessage("Trade player not found.")
    return false
  end

  -- if the player is inside the house
  local house = player:getTile():getHouse()
  if not house or house:getOwnerGuid() ~= player:getGuid() then
    player:sendCancelMessage("You must stand in your house to initiate the trade.")
    return false
  end

  -- start the trade
  local returnValue = house:startTrade(player, tradePartner)
  if returnValue ~= RETURNVALUE_NOERROR then
    player:sendCancelMessage(returnValue)
  end

  -- TODO: Add a success message ?
  return false
end
