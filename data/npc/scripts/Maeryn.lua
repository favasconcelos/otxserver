local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
  npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
  npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
  npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
  npcHandler:onThink()
end

-- Basic
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'My name is Maeryn.'})

keywordHandler:addKeyword(
  {'job'},
  StdModule.say,
  {npcHandler = npcHandler, text = "I'm the protector of this little village. A bit of a self-proclaimed function, I admit, but someone has to watch over {Grimvale}. It is a {dangerous} place."}
)

keywordHandler:addKeyword(
  {'Grimvale '},
  StdModule.say,
  {npcHandler = npcHandler, text = 'The small island you are standing on. For a long time it was a peaceful and placid place. But lately it has become more {dangerous}.'}
)

keywordHandler:addKeyword(
  {'dangerous'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = "So you don't know it yet. This island, Grimvale, is affected by were-sickness. Many pitiful, who are stricken with the curse, dwell in the {tunnels} and caverns underneath the village and the nearby hurst."
  }
)

keywordHandler:addKeyword(
  {'pitiful'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = 'Yes, pitiful. For they are savage beasts now who regularly come up from below to attack the village. But once they were inhabitants of Grimvale, before they {changed}.'
  }
)

keywordHandler:addKeyword(
  {'changed'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = "Through a bite or even a scratch, you may be infected with the were-sickness. If that happens, there is little {hope} - until the next full moon you'll change into a were-creature, depending on the animal that hurt you."
  }
)

keywordHandler:addKeyword(
  {'hope'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = "There is a plant, the purple nightshade. It blossoms exclusively in the light of the full moon and only underground, where the full moon's light is falling through fissures in the surface. Only this plant's blossoms are able to defeat the {were-sickness}."
  }
)

keywordHandler:addKeyword(
  {'were-sickness'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = {
      "It transforms peaceful villagers into savage beasts. We're not sure how this curse found the way into our small village. But one day it began. At first it befell just a few people. ...",
      'In a full moon night they changed into bears and wolves, and tore apart their unsuspecting relatives while they were asleep. ...',
      'Those merely wounded, first thought they were lucky. But then we realised they were changing, too. Later, others assumed the forms of badgers and boars also. ...',
      'But that does not mean they were any less wild or dangerous than the others.'
    }
  }
)

keywordHandler:addKeyword(
  {'tunnels'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = {
      "We are not sure what they are doing down there. We're glad if they stay in the caverns and leave us alone. Only at full moon do they come up and threaten the island's surface and village. ...",
      'I, however, have a {hunch} as to why they dwell so deep under the earth.'
    }
  }
)

keywordHandler:addKeyword(
  {'hunch'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = {
      'There are old legends about a subterranean temple that was once built in this area. Supposedly many {artefacts} are still hidden down there. ...',
      "I don't have the time to tell you the entire tale, but there is a book downstairs in which you may read the whole story."
    }
  }
)
keywordHandler:addKeyword(
  {'artefacts'},
  StdModule.say,
  {
    npcHandler = npcHandler,
    text = 'Yes, the story goes that there are ancient artefacts still hidden in the temple ruins, such as helmets in the form of wolven heads, for example. It is said that moonlight crystals are needed to enchant these artefacts.'
  }
)

npcHandler:setMessage(MESSAGE_GREET, 'Greetings! We are still fighting the Curse of the Full Moon.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Farewell, then.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Bye.')
npcHandler:addModule(FocusModule:new())
