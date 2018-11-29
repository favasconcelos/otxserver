function getCost(level)
	if level <= 30 then
		return 2000*5
	elseif level >= 120 then
		return 10000*5
	else
		return ((level - 20) * 200 * 5) 
	end
end

function onSay(cid, words, param)
	local p = Player(cid)
	local cost = getCost(getPlayerLevel(cid))
	if(not(isPlayerPzLocked(cid))) then
		if(p:hasBlessing(2) and p:hasBlessing(3) and p:hasBlessing(4) and p:hasBlessing(5) and p:hasBlessing(6) and p:hasBlessing(7) and p:hasBlessing(8)) then
			p:sendCancelMessage("You have already been blessed by the gods.")
			return false
		end
		if(p:removeMoneyNpc(cost)) then
              	for i = 2, 8 do
    		if not p:hasBlessing(i) then
    			p:addBlessing(i, 1)
    		end
    	end
			p:getPosition():sendMagicEffect(50)
			p:sendTextMessage(19, "You have been blessed by the gods!")
		else
			p:sendCancelMessage("You need "..cost.." gold coins to buy all blessings.")
		end
	else
		p:sendCancelMessage("You can't buy bless, when you are in a battle.")
	end
return false
end
