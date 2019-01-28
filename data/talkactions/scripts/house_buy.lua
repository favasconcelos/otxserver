-- Min level required to buy house
local MIN_LEVEL = 150

-------------------------------------
-- Buy House should:
-- # check if the house price is configured in the config.lua
-- # check if the player level is bigger than the MIN_LEVEL
-- # check if the player is premium account
-- # check if the player is in front of the house
-- # check if the player already owns a house
-- # check if the house already has an owner
-- # check if the player has the required money to buy the house
-------------------------------------
function onSay(player, words, param)
  -- check if the house price is configured
  local housePrice = configManager.getNumber(configKeys.HOUSE_PRICE)
  if housePrice == -1 then
    return true
  end

  -- check if the level is bigger than the minimun required
  if player:getLevel() < MIN_LEVEL then
    player:sendCancelMessage("You have to be level " .. MIN_LEVEL .. " to purchase a house.")
    return false
  end

  -- check if the player is premium account
  if not player:isPremium() then
    player:sendCancelMessage("You need a premium account to buy a house.")
    return false
  end

  local position = player:getPosition()
  position:getNextPosition(player:getDirection())
  local tile = Tile(position)
  local house = tile and tile:getHouse()
  -- player must be in front of the house
  if not house then
    player:sendCancelMessage("Please face the door of the house you would like to buy.")
    return false
  end

  -- if the house already has an owner
  if house:getOwnerGuid() > 0 then
    player:sendCancelMessage("This house already has an owner.")
    return false
  end

  -- if the player already owns other house
  if player:getHouse() then
    player:sendCancelMessage("You already own " .. player:getHouse():getName() .. ".")
    return false
  end

  -- calculate the price for the house
  local price = tonumber(house:getTileCount() * housePrice)

  -- check if the player has the required money
  if (player:getBankBalance() >= price) then
    player:setBankBalance(player:getBankBalance() - price)
    house:setOwnerGuid(player:getGuid())

    local rentPeriod = configManager.getString(configKeys.HOUSE_RENT_PERIOD)

    if rentPeriod ~= "never" then
      rentString = "Be sure to have " .. price .. " gold in your bank account for the " .. rentPeriod .. " rent."
    else
      rentString = ""
    end

    player:sendTextMessage(
      MESSAGE_EVENT_ADVANCE,
      "You bought " .. house:getName(tile) .. " for " .. price .. " gold from your bank account." .. rentString
    )
    return true
  else
    player:sendCancelMessage("You do not have enough money.")
    return false
  end

  return false
end
