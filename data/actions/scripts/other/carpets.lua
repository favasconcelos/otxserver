local foldedCarpet = {
  [25393] = 25392,
  [25392] = 25393, --rift carpet
  [26192] = 26193,
  [26193] = 26192, --void carpet
  [26087] = 26109, --yalahahari carpet
  [26109] = 26087, --yalahahari carpet
  [26088] = 26110, --white fur carpet
  [26110] = 26088, --white fur carpet
  [26089] = 26111, --bamboo mat carpet
  [26111] = 26089, --bamboo matr carpet
  [26371] = 26363, --crimson carpet
  [26363] = 26371, --crimson carpet
  [26366] = 26372, --azure carpet
  [26372] = 26366, --azure carpet
  [26367] = 26373, --emerald carpet
  [26373] = 26367, --emerald carpet
  [26368] = 26374, --light parquet carpet
  [26374] = 26368, --light parquet carpet
  [26369] = 26375, --dark parquet carpet
  [26375] = 26369, --dark parquet carpet
  [26370] = 26376, --mable floor
  [26376] = 26370, --marble floor
  [27084] = 27092, --flowery carpet
  [27092] = 27084, --flowery carpet
  [27085] = 27093, --Colourful Carpet
  [27093] = 27085, --Colourful Carpet
  [27086] = 27094, --striped carpet
  [27094] = 27086, --striped carpet
  [27087] = 27095, --fur carpet
  [27095] = 27087, --fur carpet
  [27088] = 27096, --diamond carpet
  [27096] = 27088, --diamond carpet
  [27089] = 27097, --patterned carpet
  [27097] = 27089, --patterned carpet
  [27090] = 27098, --night sky carpet
  [27098] = 27090, --night sky carpet
  [27091] = 27099, --star carpet
  [27099] = 27091, --star carpet
  [29349] = 29350, --verdant carpet
  [29350] = 29349, --verdant carpet
  [29351] = 29352, --shaggy carpet
  [29352] = 29351, --shaggy carpet
  [29353] = 29354, --mystic carpet
  [29354] = 29353, --mystic carpet
  [29355] = 29356, --stone tile
  [29356] = 29355, --stone tile
  [29357] = 29358, --wooden plank
  [29358] = 29357 --wooden plank
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
  local carpet = foldedCarpet[item.itemid]
  if not carpet then
    return false
  end

  if fromPosition.x == CONTAINER_POSITION then
    player:sendTextMessage(MESSAGE_STATUS_SMALL, "Put the item on the floor first.")
  elseif not fromPosition:getTile():getHouse() then
    player:sendTextMessage(MESSAGE_STATUS_SMALL, "You may use this only inside a house.")
  else
    item:transform(carpet)
  end

  return true
end
