-- Ferumbras Quest feita por Ciroc
function onStepIn(creature, item, position, fromPosition)
  local player = creature:getPlayer()
  if not player then
    return true
  end
  player:teleportTo(Position(33271, 32394, 7))
end
