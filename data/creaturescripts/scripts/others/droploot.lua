-------------------------------------
-- DropLoot should:
-- # check if the player has skull (RED or BLACK)
-- # check if the player has Amulet of Loss (AOL)
-- # use the bless loss percent to check each item before move it to the corpse
-------------------------------------
function onDeath(player, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
  if getPlayerFlagValue(player, PlayerFlag_NotGenerateLoot) then
    return true
  end

  -- check if the player has skull
  local hasSkull = isInArray({SKULL_RED, SKULL_BLACK}, player:getSkull())
  if hasSkull then
    -- player has skull (should loose everything)
    eachItem(player, corpse, 0, true)
  else
    local amulet = player:getSlotItem(CONST_SLOT_NECKLACE)
    if amulet and amulet.itemid == ITEM_AMULETOFLOSS then
      -- check if the player has amulet of loss
      -- if so, remove the amulet not the items
      player:removeItem(ITEM_AMULETOFLOSS, 1, -1, false)
    else
      -- get the player loss percent based on the bless
      local lossPercent = player:getLossPercent()
      eachItem(player, corpse, lossPercent, false)
    end
  end

  -- if the player does not have a backpack than add a bag
  if not player:getSlotItem(CONST_SLOT_BACKPACK) then
    player:addItem(ITEM_BAG, 1, false, CONST_SLOT_BACKPACK)
  end

  return true
end

-------------------------------------
-- Loop throught each item of the player and execute a function to remove it by a random value calculated via lossPercent and forceDrop
-- @param (Object)  player        Player object.
-- @param (Integer) lossPercent   Integer that will determin the loss percent of the drop.
-- @param (Boolean) forceDrop     Boolean that will determine if we should force drop the items.
-------------------------------------
function eachItem(player, corpse, lossPercent, forceDrop)
  -- chance to loose a container
  local CHANCE_CONTAINER = 100
  -- change to loose an item
  local CHANCE_OTHER = 1000
  -- for each item
  for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
    local item = player:getSlotItem(i)
    if item then
      -- force drop is used in case of red or black skull
      if forceDrop then
        item:moveTo(corpse)
      else
        -- its easier to drop if the item is a container
        local rand = math.random(item:isContainer() and CHANCE_CONTAINER or CHANCE_OTHER)
        if rand <= lossPercent then
          item:moveTo(corpse)
        end
      end
    end
  end
end
