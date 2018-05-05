local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Blood of the Mountain
local blessKeyword = keywordHandler:addKeyword({'enhanced'}, StdModule.say, {npcHandler = npcHandler, text = 'I have the power to grant you the blood of the mountain\'s blessing. But I must ask of you to sacrifice |BLESSCOST| gold. Are you prepared for that?'})
	blessKeyword:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, text = 'So receive the blood of the mountain, master.', cost = '|BLESSCOST|', bless = 7})
	blessKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'Fine. You are free to decline my offer.', reset = true})

-- Healing
local function addHealKeyword(text, condition, effect)
	keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = text},
		function(player) return player:getCondition(condition) ~= nil end,
		function(player)
			player:removeCondition(condition)
			player:getPosition():sendMagicEffect(effect)
		end
	)
end

addHealKeyword('You are burning. Let me quench those flames.', CONDITION_FIRE, CONST_ME_MAGIC_GREEN)
addHealKeyword('You are poisoned. Let me soothe your pain.', CONDITION_POISON, CONST_ME_MAGIC_RED)
addHealKeyword('You are electrified, my child. Let me help you to stop trembling.', CONDITION_ENERGY, CONST_ME_MAGIC_GREEN)

keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You are hurt, my child. I will heal your wounds.'},
	function(player) return player:getHealth() < 40 end,
	function(player)
		local health = player:getHealth()
		if health < 40 then player:addHealth(40 - health) end
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = ' You aren\'t looking that bad. Sorry, I am only allowed to help those in need. If you are looking for additional protection, I could grant you an enhanced {blessing} and there is also the {pilgrimage} of ashes.'})


-- Basic
keywordHandler:addKeyword({'blessing'}, StdModule.say, {npcHandler = npcHandler, text = 'Besides the {enhanced} blessing available from me, I know of one other, granted by a solitary {nomad} far west of Svargrond. There are also five different other blessings available, each in a sacred place. ...'})
keywordHandler:addKeyword({'spiritual'}, StdModule.say, {npcHandler = npcHandler, text = 'You can ask for the blessing of spiritual shielding in the whiteflower temple south of Thais.'})
keywordHandler:addKeyword({'phoenix'}, StdModule.say, {npcHandler = npcHandler, text = 'The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.'})
keywordHandler:addKeyword({'embrace'}, StdModule.say, {npcHandler = npcHandler, text = 'The druids north of Carlin will provide you with the embrace of Tibia.'})
keywordHandler:addKeyword({'suns'}, StdModule.say, {npcHandler = npcHandler, text = 'You can ask for the blessing of the two suns in the suntower near Ab\'Dendriel.'})
keywordHandler:addKeyword({'enhanced'}, StdModule.say, {npcHandler = npcHandler, text = 'I have the power to grant you the blood of the mountain\'s blessing. But I must ask of you to sacrifice |BLESSCOST| gold. Are you prepared for that?'})
keywordHandler:addKeyword({'phoenix'}, StdModule.say, {npcHandler = npcHandler, text = 'The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.'})
keywordHandler:addKeyword({'pilgrimage'}, StdModule.say, {npcHandler = npcHandler, text = 'Well, as I am quite in a {fix} currently, my only hope to escape this situation may be to grant you {healing} or an {enhanced} blessing if you wish. You must desire SOMETHING, right? Sure you do.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = 'Well, as I am quite in a {fix} currently, my only hope to escape this situation may be to grant you {healing} or an {enhanced} blessing if you wish. You must desire SOMETHING, right? Sure you do.'})
keywordHandler:addKeyword({'fix'}, StdModule.say, {npcHandler = npcHandler, text = 'I was bound here by... I... do not know who did this to me. Not anymore... As of now, I feel a strange... urge to help those in need. I feel, yes I feel that ...'})
keywordHandler:addKeyword({'fix'}, StdModule.say, {npcHandler = npcHandler, text = 'If I just help as many as I can... I may be set free... one day... but how many will it be? What does it take to... and why all this, to which end... I do not know.'})
keywordHandler:addKeyword({'nomad'}, StdModule.say, {npcHandler = npcHandler, text = 'I know everyone and everything. It is certain that there is another enhanced blessing, the \'heart of the mountain\'. Talk to a nomad far to the west of Svargrond, hiding slightly above ground.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'I am Kais, Kais the Bound. Eternally fixed to the wretched place, unless... unless I prove my worth in aiding all those who seek my help.'})
keywordHandler:addKeyword({'kais'}, StdModule.say, {npcHandler = npcHandler, text = 'I am Kais, Kais the Bound. Eternally fixed to the wretched place, unless... unless I prove my worth in aiding all those who seek my help.'})

npcHandler:setMessage(MESSAGE_GREET, 'Hmm... surely you are in need of {help} - will you let me? I am {Kais} the Bound and I can lend you a hand in {healing} your body and soul or even grant an {enhanced} blessing!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Fare you well... |PLAYERNAME|!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Fare you well... |PLAYERNAME|!')

npcHandler:addModule(FocusModule:new())
