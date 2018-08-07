function onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	local storageQuest = 50732

	if player:getStorageValue(storageQuest) >= 0 then
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
			player:teleportTo({x = 32332, y = 32090, z = 7})
    end
    return true
end