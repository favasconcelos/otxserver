-- Lisa criado por Raphaellb 17/11/2018. usando a base do Glooth Fairy Feito por Master Viciado 18/08/2016.
local function removeBosst(fromArea1, fromArea2, bossName)
	for x = fromArea1.x, fromArea2.x do
		for y = fromArea1.y, fromArea2.y do
			for z = fromArea1.z, fromArea2.z do
				if(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid > 0) then
					if(isMonster(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid)) then
						if(string.lower(getCreatureName(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid)) == bossName) then
						doRemoveCreature(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid)
						end
					end
				end
			end
		end
	end
	return true
end

local function teleportAllPlayersFromAreat(fromArea1, fromArea2, toPos)
	for x = fromArea1.x, fromArea2.x do
		for y = fromArea1.y, fromArea2.y do
			for z = fromArea1.z, fromArea2.z do
				if(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid > 0) then
					if(isPlayer(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid)) then
					doTeleportThing(getTopCreature({x = x, y = y, z = z, stackpos = 255}).uid, toPos)
					doSendMagicEffect(toPos, CONST_ME_TELEPORT)
					end
				end
			end
		end
	end
	return true
end

local function PrepareEnter()
	removeBosst({x=33556,y=31883,z=8}, {x=33561,y=31886,z=8}, "lisa")
	teleportAllPlayersFromAreat({x=33549,y=31902,z=8},{x=33566,y=31908,z=8},{x=33556,y=31886,z=8})
	Game.createMonster("Lisa", {x=33559,y=31885,z=8})
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9827 then
		if getGlobalStorageValue(18082) >= os.time() then
			doPlayerSendTextMessage(player, 19, "You need to wait 15 minutes to use again.")
			return true
		end

		local specs, spec = Game.getSpectators({x=33557,y=31891,z=8}, false, false, 13, 13, 13, 13)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
				return true
			end

			spec:remove()
		end
		setGlobalStorageValue(18082, os.time()+15*60)
		player:say("Everyone in this place will be teleported into Lisa\'s hideout in one minute. No way back!!!", TALKTYPE_MONSTER_SAY)
		addEvent(PrepareEnter,60*1000)
		
	end

	item:transform(item.itemid == 9827 and 9828 or 9827)
	return true
end
