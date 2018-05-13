  local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Feel the wind in your hair during one of my carpet rides!'} }
npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	if msgcontains(msg, "farmine") then
		npcHandler:say("Do you seek a ride to Farmine for 60 gold?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 1 then
			if player:getItemCount(7484) >= 1 then
				npcHandler:say("What? Are you crazy? You want me to transport contraband? No way!", cid)
				npcHandler.topic[cid] = 0
			else
				if player:getMoney() < 60 then
					npcHandler:say("You don't have enough money.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("Set the sails!", cid)
					doTeleportThing(cid, {x=32983,y=31539,z=1})
					doSendMagicEffect({x=32983,y=31539,z=1}, 11)
					doPlayerRemoveMoney(cid, 60)
					npcHandler.topic[cid] = 0
				end
			end
		end
	elseif msgcontains(msg, "no") then
		if npcHandler.topic[cid] == 1 then
			npcHandler:say("Ok then.", cid)
			npcHandler.topic[cid] = 0
		end
	end
	if msgcontains(msg, "darashia") then
		npcHandler:say("Do you seek a ride to Darashia for 40 gold?", cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 2 then
			if player:getItemCount(7484) >= 1 then
				npcHandler:say("What? Are you crazy? You want me to transport contraband? No way!", cid)
				npcHandler.topic[cid] = 0
			else
				if player:getMoney() < 40 then
					npcHandler:say("You don't have enough money.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("Set the sails!", cid)
					doTeleportThing(cid, {x=33270,y=32441,z=6})
					doSendMagicEffect({x=33270,y=32441,z=6}, 11)
					doPlayerRemoveMoney(cid, 40)
					npcHandler.topic[cid] = 0
				end
			end
		end
	elseif msgcontains(msg, "no") then
		if npcHandler.topic[cid] == 2 then
			npcHandler:say("Ok then.", cid)
			npcHandler.topic[cid] = 0
		end
	end
	if msgcontains(msg, "kazordoon") then
		npcHandler:say("Do you seek a ride to Kazordoon for 70 gold?", cid)
		npcHandler.topic[cid] = 3
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 3 then
			if player:getItemCount(7484) >= 1 then
				npcHandler:say("What? Are you crazy? You want me to transport contraband? No way!", cid)
				npcHandler.topic[cid] = 0
			else
				if player:getMoney() < 70 then
					npcHandler:say("You don't have enough money.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("Set the sails!", cid)
					doTeleportThing(cid, {x=32588,y=31942,z=0})
					doSendMagicEffect({x=32588,y=31942,z=0}, 11)
					doPlayerRemoveMoney(cid, 70)
					npcHandler.topic[cid] = 0
				end
			end
		end
	elseif msgcontains(msg, "no") then
		if npcHandler.topic[cid] == 3 then
			npcHandler:say("Ok then.", cid)
			npcHandler.topic[cid] = 0
		end
	end
	if msgcontains(msg, "femor hills") then
		npcHandler:say("Do you seek a ride to The Femor Hills for 60 gold?", cid)
		npcHandler.topic[cid] = 4
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 4 then
			if player:getItemCount(7484) >= 1 then
				npcHandler:say("What? Are you crazy? You want me to transport contraband? No way!", cid)
				npcHandler.topic[cid] = 0
			else
				if player:getMoney() < 60 then
					npcHandler:say("You don't have enough money.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("Set the sails!", cid)
					doTeleportThing(cid, {x=32536,y=31837,z=4})
					doSendMagicEffect({x=32536,y=31837,z=4}, 11)
					doPlayerRemoveMoney(cid, 60)
					npcHandler.topic[cid] = 0
				end
			end
		end
	elseif msgcontains(msg, "no") then
		if npcHandler.topic[cid] == 4 then
			npcHandler:say("Ok then.", cid)
			npcHandler.topic[cid] = 0
		end
	end
	if msgcontains(msg, "svargrond") then
		npcHandler:say("Do you seek a ride to Svargrond for 60 gold?", cid)
		npcHandler.topic[cid] = 5
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 5 then
			if player:getItemCount(7484) >= 1 then
				npcHandler:say("What? Are you crazy? You want me to transport contraband? No way!", cid)
				npcHandler.topic[cid] = 0
			else
				if player:getMoney() < 60 then
					npcHandler:say("You don't have enough money.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("Set the sails!", cid)
					doTeleportThing(cid, {x=32253,y=31097,z=4})
					doSendMagicEffect({x=32253,y=31097,z=4}, 11)
					doPlayerRemoveMoney(cid, 60)
					npcHandler.topic[cid] = 0
				end
			end
		end
	elseif msgcontains(msg, "no") then
		if npcHandler.topic[cid] == 5 then
			npcHandler:say("Ok then.", cid)
			npcHandler.topic[cid] = 0
		end
	elseif msgcontains(msg, "fly") or msgcontains(msg, "passage") or msgcontains(msg, "ticket") then
	npcHandler:say("I can fly to {Farmine}, {Darashia}, {Kazordoon}, {The Femor Hills} and {Svargrond}", cid)
	end
end
-- addTravelKeyword('farmine', 'Farmine', 0, Position(32983, 31539, 1))
-- addTravelKeyword('darashia', 'Darashia on Darama', 0, Position(33270, 32441, 6))
-- addTravelKeyword('kazordoon', 'Kazordoon', 0, Position(32588, 31942, 0))
-- addTravelKeyword('femor hills', 'the Femor Hills', 0, Position(32536, 31837, 4))
-- addTravelKeyword('svargrond', 'Svargrond', 0, Position(32253, 31097, 4))
-- addTravelKeyword('edron', 'Edron', 0, Position(33193, 31784, 3))

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Greetings, traveller |PLAYERNAME|. Where do you want me to {fly} you?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye!")

npcHandler:addModule(FocusModule:new())


