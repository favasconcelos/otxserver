local outfits = {
  [1] = {name = "Citizen", male = 128, female = 136},
  [2] = {name = "Hunter", male = 129, female = 137},
  [3] = {name = "Mage", male = 130, female = 138},
  [4] = {name = "Knight", male = 131, female = 139},
  [5] = {name = "Noble", male = 132, female = 140},
  [6] = {name = "Summoner", male = 133, female = 141},
  [7] = {name = "Warrior", male = 134, female = 142},
  [8] = {name = "Barbarian", male = 143, female = 147},
  [9] = {name = "Druid", male = 144, female = 148},
  [10] = {name = "Wizard", male = 145, female = 149},
  [11] = {name = "Oriental", male = 146, female = 150},
  [12] = {name = "Pirate", male = 151, female = 155},
  [13] = {name = "Assassin", male = 152, female = 156},
  [14] = {name = "Beggar", male = 153, female = 157},
  [15] = {name = "Shaman", male = 154, female = 158},
  [16] = {name = "Norse", male = 251, female = 252},
  [17] = {name = "Nightmare", male = 268, female = 269},
  [18] = {name = "Jester", male = 273, female = 270},
  [19] = {name = "Brotherhood", male = 278, female = 279},
  [20] = {name = "Demonhunter", male = 289, female = 288},
  [21] = {name = "Yalaharian", male = 325, female = 324},
  [22] = {name = "Warmaster", male = 335, female = 336},
  [23] = {name = "Wayfarer", male = 367, female = 366},
  [24] = {name = "Afflicted", male = 430, female = 431},
  [25] = {name = "Elementalist", male = 432, female = 433},
  [26] = {name = "Deepling", male = 463, female = 464},
  [27] = {name = "Insectoid", male = 465, female = 466},
  [28] = {name = "Entrepreneur", male = 472, female = 471},
  [29] = {name = "Crystal Warlord", male = 512, female = 513},
  [30] = {name = "Soil Guardian", male = 516, female = 514},
  [31] = {name = "Demon", male = 541, female = 542},
  [32] = {name = "Cave Explorer", male = 574, female = 575},
  [33] = {name = "Dream Warden", male = 577, female = 578},
  [34] = {name = "Champion", male = 633, female = 632},
  [35] = {name = "Conjurer", male = 634, female = 635},
  [36] = {name = "Beastmaster", male = 637, female = 636},
  [37] = {name = "Chaos Acolyte", male = 665, female = 664},
  [38] = {name = "Death Herald", male = 667, female = 666},
  [39] = {name = "Ranger", male = 684, female = 683},
  [40] = {name = "Ceremonial Garb", male = 695, female = 694},
  [41] = {name = "Puppeteer", male = 697, female = 696},
  [42] = {name = "Spirit Caller", male = 699, female = 698},
  [43] = {name = "Evoker", male = 725, female = 724},
  [44] = {name = "Seaweaver", male = 733, female = 732},
  [45] = {name = "Recruiter", male = 746, female = 745},
  [46] = {name = "Sea Dog", male = 750, female = 749},
  [47] = {name = "Royal Pumpkin", male = 760, female = 759},
  [48] = {name = "Rift Warrior", male = 846, female = 845},
  [49] = {name = "Winter Warden", male = 853, female = 852}
}

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
  player:registerEvent("modalAD")

  local title = "Choose your outfit!"
  local message = "You will receive the outfit and both addons!"

  local window = ModalWindow(1000, title, message)
  if player:getItemCount(8982) >= 1 then
    window:addButton(100, "Confirm")
    window:setDefaultEnterButton(100)
  else
    window:setDefaultEnterButton(101)
  end
  window:addButton(101, "Cancel")
  window:setDefaultEscapeButton(101)

  for i = 1, #outfits do
    local o = outfits[i].name
    if not player:hasOutfit(outfits[i].male, 3) and not player:hasOutfit(outfits[i].female, 3) then
      if outfits[i].name == "Noble" or outfits[i].name == "Norse" then
        if player:getSex() == 0 then
          o = o .. "woman"
        else
          o = o .. "man"
        end
      end
      window:addChoice(i, o)
    end
  end

  if window:getChoiceCount() == 0 then
    window:setMessage("YOU HAVE ALL OUTFITS, THEN CLICK CANCEL!")
  --add achievement
  end

  window:sendToPlayer(player)
  return true
end
