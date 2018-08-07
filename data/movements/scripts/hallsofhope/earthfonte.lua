function onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	local storageQuest = 50733

	if player:getStorageValue(storageQuest) >= 1 then
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
			player:teleportTo({x = 32720, y = 32242, z = 8})
			else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have the permission to enter.")
			creature:teleportTo(fromPosition)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end