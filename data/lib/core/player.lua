function Player.allowMovement(self, allow)
	return self:setStorageValue(Storage.blockMovementStorage, allow and -1 or 1)
end

function Player.checkGnomeRank(self)
	local points = self:getStorageValue(Storage.BigfootBurden.Rank)
	local questProgress = self:getStorageValue(Storage.BigfootBurden.QuestLine)
	if points >= 30 and points < 120 then
		if questProgress == 14 then
			self:setStorageValue(Storage.BigfootBurden.QuestLine, 15)
			self:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
		self:addAchievement('Gnome Little Helper')
	elseif points >= 120 and points < 480 then
		if questProgress == 15 then
			self:setStorageValue(Storage.BigfootBurden.QuestLine, 16)
			self:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
		self:addAchievement('Gnome Friend')
	elseif points >= 480 and points < 1440 then
		if questProgress == 16 then
			self:setStorageValue(Storage.BigfootBurden.QuestLine, 17)
			self:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
		self:addAchievement('Gnomelike')
	elseif points >= 1440 then
		if questProgress == 17 then
			self:setStorageValue(Storage.BigfootBurden.QuestLine, 18)
			self:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
		self:addAchievement('Honorary Gnome')
	end
	return true
end

function Player.setExhaustion(self, value, time)
    return self:setStorageValue(value, time + os.time())
end

function Player.getExhaustion(self, value)
    local storage = self:getStorageValue(value)
    if storage <= 0 then
       return 0
    end
   return storage - os.time()
end

function Player.depositMoney(self, amount)
	if not self:removeMoney(amount) then
		return false
	end

	self:setBankBalance(self:getBankBalance() + amount)
	return true
end

local foodCondition = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)

function Player.feed(self, food)
	local condition = self:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
	if condition then
		condition:setTicks(condition:getTicks() + (food * 1000))
	else
		local vocation = self:getVocation()
		if not vocation then
			return nil
		end

		foodCondition:setTicks(food * 1000)
		foodCondition:setParameter(CONDITION_PARAM_HEALTHGAIN, vocation:getHealthGainAmount())
		foodCondition:setParameter(CONDITION_PARAM_HEALTHTICKS, vocation:getHealthGainTicks() * 1000)
		foodCondition:setParameter(CONDITION_PARAM_MANAGAIN, vocation:getManaGainAmount())
		foodCondition:setParameter(CONDITION_PARAM_MANATICKS, vocation:getManaGainTicks() * 1000)

		self:addCondition(foodCondition)
	end
	return true
end

function Player.getBlessings(self)
	local blessings = 0
	for i = 1, 5 do
		if self:hasBlessing(i) then
			blessings = blessings + 1
		end
	end
	return blessings
end

function Player.getClosestFreePosition(self, position, extended)
	if self:getAccountType() >= ACCOUNT_TYPE_GOD then
		return position
	end
	return Creature.getClosestFreePosition(self, position, extended)
end

function Player.getCookiesDelivered(self)
	local storage, amount = {
		Storage.WhatAFoolishQuest.CookieDelivery.SimonTheBeggar, Storage.WhatAFoolishQuest.CookieDelivery.Markwin, Storage.WhatAFoolishQuest.CookieDelivery.Ariella,
		Storage.WhatAFoolishQuest.CookieDelivery.Hairycles, Storage.WhatAFoolishQuest.CookieDelivery.Djinn, Storage.WhatAFoolishQuest.CookieDelivery.AvarTar,
		Storage.WhatAFoolishQuest.CookieDelivery.OrcKing, Storage.WhatAFoolishQuest.CookieDelivery.Lorbas, Storage.WhatAFoolishQuest.CookieDelivery.Wyda,
		Storage.WhatAFoolishQuest.CookieDelivery.Hjaern
	}, 0
	for i = 1, #storage do
		if self:getStorageValue(storage[i]) == 1 then
			amount = amount + 1
		end
	end
	return amount
end

function Player.getDepotItems(self, depotId)
	return self:getDepotChest(depotId, true):getItemHoldingCount()
end

function Player.getLossPercent(self)
	local lossPercent = {
		[0] = 100,
		[1] = 70,
		[2] = 45,
		[3] = 25,
		[4] = 10,
		[5] = 0
	}

	return lossPercent[self:getBlessings()]
end

function Player.hasAllowMovement(self)
	return self:getStorageValue(Storage.blockMovementStorage) ~= 1
end

function Player.hasRookgaardShield(self)
	-- Wooden Shield, Studded Shield, Brass Shield, Plate Shield, Copper Shield
	return self:getItemCount(2512) > 0
			or self:getItemCount(2526) > 0
			or self:getItemCount(2511) > 0
			or self:getItemCount(2510) > 0
			or self:getItemCount(2530) > 0
end

function Player.isDruid(self)
	return isInArray({2, 6}, self:getVocation():getId())
end

function Player.isKnight(self)
	return isInArray({4, 8}, self:getVocation():getId())
end

function Player.isPaladin(self)
	return isInArray({3, 7}, self:getVocation():getId())
end

function Player.isMage(self)
	return isInArray({1, 2, 5, 6}, self:getVocation():getId())
end

function Player.isSorcerer(self)
	return isInArray({1, 5}, self:getVocation():getId())
end

function Player.isPremium(self)
	return self:getPremiumDays() > 0 or configManager.getBoolean(configKeys.FREE_PREMIUM)
end

function Player.isPromoted(self)
	local vocation = self:getVocation()
	local promotedVocation = vocation:getPromotion()
	promotedVocation = promotedVocation and promotedVocation:getId() or 0

	return promotedVocation == 0 and vocation:getId() ~= promotedVocation
end

function Player.isUsingOtClient(self)
	return self:getClient().os >= CLIENTOS_OTCLIENT_LINUX
end

function Player.sendCancelMessage(self, message)
	if type(message) == "number" then
		message = Game.getReturnMessage(message)
	end
	return self:sendTextMessage(MESSAGE_STATUS_SMALL, message)
end

function Player.sendExtendedOpcode(self, opcode, buffer)
	if not self:isUsingOtClient() then
		return false
	end

	local networkMessage = NetworkMessage()
 	networkMessage:addByte(0x32)
 	networkMessage:addByte(opcode)
 	networkMessage:addString(buffer)
	networkMessage:sendToPlayer(self, false) 
 	networkMessage:delete()
	return true
end

function Player.transferMoneyTo(self, target, amount)
	local balance = self:getBankBalance()
	if amount > balance then
		return false
	end

	local targetPlayer = Player(target)
	if targetPlayer then
		targetPlayer:setBankBalance(targetPlayer:getBankBalance() + amount)
	else
		if not playerExists(target) then
			return false
		end
		db.query("UPDATE `players` SET `balance` = `balance` + '" .. amount .. "' WHERE `name` = " .. db.escapeString(target))
	end

	self:setBankBalance(self:getBankBalance() - amount)
	return true
end

function Player.withdrawMoney(self, amount)
	local balance = self:getBankBalance()
	if amount > balance or not self:addMoney(amount) then
		return false
	end

	self:setBankBalance(balance - amount)
	return true
end

APPLY_SKILL_MULTIPLIER = true
local addSkillTriesFunc = Player.addSkillTries
function Player.addSkillTries(...)
	APPLY_SKILL_MULTIPLIER = false
	local ret = addSkillTriesFunc(...)
	APPLY_SKILL_MULTIPLIER = true
	return ret
end

local addManaSpentFunc = Player.addManaSpent
function Player.addManaSpent(...)
	APPLY_SKILL_MULTIPLIER = false
	local ret = addManaSpentFunc(...)
	APPLY_SKILL_MULTIPLIER = true
	return ret
end
