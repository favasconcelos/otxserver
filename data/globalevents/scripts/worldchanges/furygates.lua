function onStartup(interval)

    math.randomseed(os.time())

	local chance = math.random(1, 6)

	--exit
	exit = Game.createItem(6116, 1, {x = 33290, y = 31785, z = 13})
	exit:setActionId(9717) 

	if (chance == 1) then -- venore
		setGlobalStorageValue(9710, 1)
		Game.createItem(7853, {x = 32833, y = 32081, z = 7})
		Game.createItem(7851, {x = 32834, y = 32081, z = 7})
		Game.createItem(5066, {x = 32834, y = 32081, z = 7})
		Game.createItem(5066, {x = 32833, y = 32081, z = 7})

		gate1 = Game.createItem(6116, 1, {x = 32834, y = 32081, z = 7})
		gate1:setActionId(9710)
		print('>> Fury Gate will be active in venore today.')
	elseif (chance == 2) then -- ab'dendriel
		setGlobalStorageValue(9711, 2)
		Game.createItem(7853, {x = 32679, y = 31719, z = 7})
		Game.createItem(7851, {x = 32680, y = 31719, z = 7})
		Game.createItem(5066, {x = 32680, y = 31719, z = 7})
		Game.createItem(5066, {x = 32679, y = 31719, z = 7})
		
		gate2 = Game.createItem(6116, 1, {x = 32680, y = 31719, z = 7})
		gate2:setActionId(9711)
		print('>> Fury Gate will be active in ab dendriel today.')
	elseif (chance == 3) then -- thais
		setGlobalStorageValue(9712, 3)
		Game.createItem(5064, {x = 32264, y = 32163, z = 7})
		Game.createItem(5064, {x = 32264, y = 32164, z = 7})
		Game.createItem(7852, {x = 32264, y = 32164, z = 7})
		Game.createItem(7853, {x = 32264, y = 32163, z = 7})
		Game.createItem(5064, {x = 32265, y = 32163, z = 7})
		Game.createItem(5064, {x = 32265, y = 32164, z = 7})

		gate3 = Game.createItem(6117, 1, {x = 32264, y = 32164, z = 7})
		gate3:setActionId(9712)
		print('>> Fury Gate will be active in  thais today.')
	elseif (chance == 4) then -- carlin
		setGlobalStorageValue(9713, 4)
		Game.createItem(5066, {x = 32262, y = 31848, z = 7})
		Game.createItem(5066, {x = 32263, y = 31848, z = 7})
		Game.createItem(7853, {x = 32262, y = 31848, z = 7})
		Game.createItem(7851, {x = 32263, y = 31848, z = 7})

		gate4 = Game.createItem(6116, 1, {x = 32263, y = 31848, z = 7})
		gate4:setActionId(9713)
		print('>> Fury Gate will be active in carlin today.')
	elseif (chance == 5) then -- edron
		setGlobalStorageValue(9714, 5)
		Game.createItem(5066, {x = 33220, y = 31922, z = 7})
		Game.createItem(5066, {x = 33221, y = 31922, z = 7})
		Game.createItem(7853, {x = 33220, y = 31922, z = 7})
		Game.createItem(7851, {x = 33221, y = 31922, z = 7})
		Game.createItem(5066, {x = 33220, y = 31923, z = 7})
		Game.createItem(5066, {x = 33221, y = 31923, z = 7})

		gate5 = Game.createItem(6116, 1, {x = 33221, y = 31922, z = 7})
		gate5:setActionId(9714)
		print('>> Fury Gate will be active in edron today.')
	elseif (chance == 6) then -- kazordoon
		setGlobalStorageValue(9716, 6)
		Game.createItem(5066, {x = 32573, y = 31982, z = 7})
		Game.createItem(5066, {x = 32574, y = 31982, z = 7})
		Game.createItem(7853, {x = 32573, y = 31982, z = 7})
		Game.createItem(7851, {x = 32574, y = 31982, z = 7})

		gate6 = Game.createItem(6116, 1, {x = 32574, y = 31982, z = 7})
		gate6:setActionId(9716)
		print('>> Fury Gate will be active in kazordoon today.')
	end
	return true
end
