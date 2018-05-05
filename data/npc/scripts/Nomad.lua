local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Heart of the Mountain
local blessKeyword = keywordHandler:addKeyword({'enhanced'}, StdModule.say, {npcHandler = npcHandler, text = 'I am able to grant you the heart of the mountain\'s blessing. But I must ask of you to sacrifice |BLESSCOST| gold. Are you willing to part with that amount of wealth?'})
	blessKeyword:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, text = 'Receive the heart of the mountain then.', cost = '|BLESSCOST|', bless = 8})
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
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = ' You aren\'t looking that bad. Keep your wits about you and walk it off! For additional protection, however, I could grant you an enhanced {blessing} and there is also the {pilgrimage} of ashes'})

-- Basic
keywordHandler:addKeyword({'pilgrimage'}, StdModule.say, {npcHandler = npcHandler, text = 'Whenever you receive a lethal wound, your vital force is damaged and there is a chance that you lose some of your equipment. With every single of the five {blessings} you have, this damage and chance of loss will be reduced.'})
keywordHandler:addKeyword({'blessing'}, StdModule.say, {npcHandler = npcHandler, text = 'Besides the enhanced blessings available from me, I know of one other, granted by a mysterious djinn. There are also five different other blessings available, each in a sacred place. ...'})
keywordHandler:addKeyword({'blessing'}, StdModule.say, {npcHandler = npcHandler, text = 'These blessings are: the spiritual shielding, the spark of the phoenix, the embrace of Tibia, the fire of the suns and the wisdom of solitude.'})
keywordHandler:addKeyword({'spiritual'}, StdModule.say, {npcHandler = npcHandler, text = 'You can ask for the blessing of spiritual shielding in the whiteflower temple south of Thais.'})
keywordHandler:addKeyword({'suns'}, StdModule.say, {npcHandler = npcHandler, text = 'I can see you received the blessing of the two suns in the suntower near Ab\'Dendriel.'})
keywordHandler:addKeyword({'phoenix'}, StdModule.say, {npcHandler = npcHandler, text = 'The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.'})
keywordHandler:addKeyword({'solitude'}, StdModule.say, {npcHandler = npcHandler, text = 'Talk to the hermit Eremo on the isle of Cormaya about this blessing.'})
keywordHandler:addKeyword({'embrace'}, StdModule.say, {npcHandler = npcHandler, text = 'The druids north of Carlin will provide you with the embrace of Tibia.'})
keywordHandler:addKeyword({'pilgrimage'}, StdModule.say, {npcHandler = npcHandler, text = 'Survive the extreme, battle the ice and cold - I am a professional outdoor survivalist! Well-versed in emergency healing and I also know of an enhanced blessing, ancient and powerful!'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = 'Survive the extreme, battle the ice and cold - I am a professional outdoor survivalist! Well-versed in emergency healing and I also know of an enhanced blessing, ancient and powerful!'})
keywordHandler:addKeyword({'djinn'}, StdModule.say, {npcHandler = npcHandler, text = 'I know of a mysterious djinn, bound to an existence of slavery far to the north of Tiquanda\'s jungles. He is bound to tell you his secrets and offer you the \'blood of the mountain\'. ...'})
keywordHandler:addKeyword({'djinn'}, StdModule.say, {npcHandler = npcHandler, text = 'I do not know where exactly but I guess you must first dig that one out to actually talk to him.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'I am one with nature, one with the ice and the cold. Names are of no worth out here. Out here, you face isolation and loneliness. Only your strength, willpower and {training} can keep you alive.'})
keywordHandler:addKeyword({'training'}, StdModule.say, {npcHandler = npcHandler, text = 'My life is one of hardship, hardship I chose freely. Endurance, strength and the power of the will are my only companions in this frigid wilderness. My strength comes from disciplined training and knowledge of the outdoors.'})

npcHandler:setMessage(MESSAGE_GREET, 'Ah, another diciple of the extreme... surviving the icy outdoors? Let me {help}! If you need some first aid out here, I can provide {healing} or grant you an {enhanced} blessing!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Keep a stiff upper lip! ')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Keep a stiff upper lip! ')

npcHandler:addModule(FocusModule:new())
