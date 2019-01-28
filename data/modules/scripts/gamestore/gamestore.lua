-- Parser
dofile("data/modules/scripts/gamestore/init.lua")
-- Config
GameStore.Categories = {
  {
    name = "New Products",
    state = GameStore.States.STATE_NONE,
    description = "Check out this category for the latest additions to the Store!",
    icons = {"Category_NewProducts.png"},
    rookgaard = true,
    offers = {
      {
        name = "Alchemistic Cabinet",
        thingId = 31192,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_alchemisticcabinet.png"}
      },
      {
        name = "Alchemistic Bookstand",
        thingId = 31211,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_alchemisticbookstand.png"}
      },
      {
        name = "Alchemistic Chair",
        thingId = 31258,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_alchemisticchair.png"}
      },
      {
        name = "Alchemistic Scales",
        thingId = 31215,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_alchemisticscales.png"}
      },
      {
        name = "Alchemist Table",
        thingId = 31194,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 80,
        icons = {"Product_HouseEquipment_alchemistictable.png"}
      },
      {
        name = "Pile of Alchemist Books",
        thingId = 31219,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_pileofalchemisticbooks.png"}
      },
      {
        name = "Alchemist Cup Board",
        thingId = 31221,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_alchemisticcupboard.png"}
      },
      {
        name = "Light of Change",
        thingId = 31201,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_lightofchange.png"}
      },
      {
        name = "Torch of Change",
        thingId = 31207,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_torchofchange.png"}
      },
      {
        name = "Ferumbras Bust",
        thingId = 31305,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 70,
        icons = {"Product_HouseEquipment_ferumbrasbust.png"}
      },
      {
        name = "Queen Eloise Bust",
        thingId = 31307,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_queeneloisebust.png"}
      },
      {
        name = "King Tibianus Bust",
        thingId = 31309,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_kingtibianusbust.png"}
      },
      {
        name = "Arrival At Thais Painting",
        thingId = 31226,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_arrivalatthaispainting.png"}
      },
      {
        name = "Tibia Street Painting",
        thingId = 31228,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_tibiastreetspainting.png"}
      },
      {
        name = "Ferumbras Portrait",
        thingId = 31230,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_ferumbrasportrait.png"}
      }
    }
  },
  {
    name = "Premium Time",
    state = GameStore.States.STATE_SALVE,
    rookgaard = true,
    icons = {"Category_PremiumTime.png"},
    offers = {
      {
        name = "30 Days of Premium Time",
        price = 250,
        state = GameStore.States.STATE_SALE,
        validUntil = 30,
        thingId = 30,
        type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM,
        icons = {"Product_PremiumTime30.png"},
        description = "Premium Account for 30 days."
      },
      {
        name = "90 Days of Premium Time",
        price = 400,
        state = GameStore.States.STATE_SALE,
        validUntil = 30,
        thingId = 90,
        type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM,
        icons = {"Product_PremiumTime90.png"},
        description = "Premium Account for 90 days."
      },
      {
        name = "180 Days of Premium Time",
        price = 700,
        state = GameStore.States.STATE_SALE,
        validUntil = 30,
        thingId = 180,
        type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM,
        icons = {"Product_PremiumTime180.png"},
        description = "Premium Account for 180 days."
      },
      {
        name = "360 Days of Premium Time",
        price = 1000,
        state = GameStore.States.STATE_SALE,
        validUntil = 30,
        thingId = 360,
        type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM,
        icons = {"Product_PremiumTime360.png"},
        description = "Premium Account for 180 days."
      }
    }
  },
  {
    name = "Extra Services",
    state = GameStore.States.STATE_NONE,
    description = "Buy an Extra Service to transfer a character to another game world or to change your character's name or sex.",
    icons = {"Category_ExtraServices.png"},
    rookgaard = true,
    offers = {
      {
        name = "Character Name Change",
        type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE,
        price = 250,
        icons = {"namechanger.png"}
      },
      {
        name = "Character Sex Change",
        type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE,
        price = 120,
        icons = {"sexchanger.png"}
      }
    }
  },
  {
    name = "Blessings",
    state = GameStore.States.STATE_NONE,
    icons = {"Category_Blessings.png"},
    rookgaard = true,
    offers = {
      {
        name = "All Regular Blessings",
        thingId = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_ALLBLESSINGS,
        price = 30,
        icons = {"Product_Blessing_AllPvE.png"}
      },
      {
        name = "Twist of Fate",
        thingId = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 2,
        icons = {"Product_Blessing_Fate.png"}
      },
      {
        name = "The Wisdom of Solitude",
        thingId = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 5,
        icons = {"Product_Blessing_Solitude.png"}
      },
      {
        name = "The Spark of the Phoenix",
        thingId = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 8,
        icons = {"Product_Blessing_Phoenix.png"}
      },
      {
        name = "The Fire of the Suns",
        thingId = 4,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 5,
        icons = {"Product_Blessing_Suns.png"}
      },
      {
        name = "The Spiritual Shielding",
        thingId = 5,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 5,
        icons = {"Product_Blessing_Shielding.png"}
      },
      {
        name = "The Embrace of Tibia",
        thingId = 6,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 5,
        icons = {"Product_Blessing_Tibia.png"}
      },
      {
        name = "Heart of the Mountain",
        thingId = 7,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 10,
        icons = {"Product_Blessing_HeartOfTheMountain.png"}
      },
      {
        name = "Blood of the Mountain",
        thingId = 8,
        type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
        price = 10,
        icons = {"Product_Blessing_BloodOfTheMountain.png"}
      }
    }
  },
  {
    name = "Potions & Kegs",
    state = GameStore.States.STATE_NONE,
    description = "Buy potions to refil your character's hit points and mana.",
    rookgaard = true,
    icons = {"Category_Potions.png"},
    offers = {
      {
        name = "Health Potion",
        thingId = 7618,
        count = 125,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 4,
        icons = {"Product_Potion_Health_potion.png"}
      },
      {
        name = "Health Potion",
        thingId = 7618,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 10,
        icons = {"Product_Potion_Health_potion.png"}
      },
      {
        name = "Strong Health Potion",
        thingId = 7588,
        count = 100,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 7,
        icons = {"Product_Potion_Strong_health_potion.png"}
      },
      {
        name = "Strong Health Potion",
        thingId = 7588,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 18,
        icons = {"Product_Potion_Strong_health_potion.png"}
      },
      {
        name = "Great Health Potion",
        thingId = 7591,
        count = 100,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 13,
        icons = {"Product_Potion_Great_healt_potion.png"}
      },
      {
        name = "Great Health Potion",
        thingId = 7591,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 34,
        icons = {"Product_Potion_Great_healt_potion.png"}
      },
      {
        name = "Ultimate Health Potion",
        thingId = 8473,
        count = 100,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 22,
        icons = {"Product_Potion_ultimate_health_potion.png"}
      },
      {
        name = "Ultimate Health Potion",
        thingId = 8473,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 55,
        icons = {"Product_Potion_ultimate_health_potion.png"}
      },
      {
        name = "Supreme Health Potion",
        thingId = 26031,
        count = 100,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 36,
        icons = {"Product_Potion_Supreme_healt_potion.png"}
      },
      {
        name = "Supreme Health Potion",
        thingId = 26031,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 90,
        icons = {"Product_Potion_Supreme_healt_potion.png"}
      },
      {
        name = "Mana Potion",
        thingId = 7620,
        count = 125,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 4,
        icons = {"Product_Potion_Mana_Potion.png"}
      },
      {
        name = "Mana Potion",
        thingId = 7620,
        count = 300,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 10,
        icons = {"Product_Potion_Mana_Potion.png"}
      },
      {
        name = "Health Keg",
        thingId = 28579,
        count = 500,
        type = GameStore.OfferTypes.OFFER_TYPE_ITEM,
        price = 23,
        icons = {"Product_Potion_HealthPotionKeg.png"}
      },
      {
        name = "Strong Health Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28580,
        count = 500,
        icons = {"Strong_Health_Keg.png"}
      },
      {
        name = "Great Health Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28581,
        count = 500,
        icons = {"Strong_Health_Keg.png"}
      },
      {
        name = "Ultimate Health Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28582,
        count = 500,
        icons = {"Ultimate_Health_Keg.png"}
      },
      {
        name = "Supreme Health Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28583,
        count = 500,
        icons = {"Supreme_Health_Keg.png"}
      },
      {
        name = "Mana Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28584,
        count = 500,
        icons = {"Mana_Keg.png"}
      },
      {
        name = "Strong Mana Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28585,
        count = 500,
        icons = {"Strong_Mana_Keg.png"}
      },
      {
        name = "Great Mana Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28586,
        count = 500,
        icons = {"Great_Mana_Keg.png"}
      },
      {
        name = "Ultimate Mana Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28587,
        count = 500,
        icons = {"Ultimate_Mana_Keg.png"}
      },
      {
        name = "Ultimate Spirit Keg",
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        price = 15,
        thingId = 28590,
        count = 500,
        icons = {"Ultimate_Ultimate_Spirit_Keg.png"}
      }
    }
  },
  {
    name = "Runes",
    state = GameStore.States.STATE_NONE,
    description = "Buy magically filled runes to unleash their energy when in need of it.",
    rookgaard = true,
    icons = {"Category_Runes.png"},
    offers = {
      {
        name = "Animate Dead Rune",
        description = "Here you can purchase a stack of '250 Animate Dead Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 75,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2316,
        count = 250,
        icons = {"Product_Rune_AnimateDeadRune.png"}
      },
      {
        name = "Avalanche Rune",
        description = "Here you can purchase a stack of '250 Avalanche Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 9,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2274,
        count = 250,
        icons = {"Product_Rune_AvalancheRune.png"}
      },
      {
        name = "Chameleon Rune",
        description = "Here you can purchase a stack of '250 Chameleon Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 42,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2291,
        count = 250,
        icons = {"Product_Rune_ChameleonRune.png"}
      },
      {
        name = "Convince Creature Rune",
        description = "Here you can purchase a stack of '250 Convince Creature Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 16,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2290,
        count = 250,
        icons = {"Product_Rune_ConvinceRune.png"}
      },
      {
        name = "Cure Poison Rune",
        description = "Here you can purchase a stack of '250 Cure Poison Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 13,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2266,
        count = 250,
        icons = {"Product_Rune_CurePoisonRune.png"}
      },
      {
        name = "Disintegrate Rune",
        description = "Here you can purchase a stack of '250 Disintegrate Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 5,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2310,
        count = 250,
        icons = {"Product_Rune_DisintegrateRune.png"}
      },
      {
        name = "Energy Bomb Rune",
        description = "Here you can purchase a stack of '250 Energy Bomb Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 32,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2262,
        count = 250,
        icons = {"Product_Rune_EnergyBombRune.png"}
      },
      {
        name = "Energy Field Rune",
        description = "Here you can purchase a stack of '250 Energy Field Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 8,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2277,
        count = 250,
        icons = {"Product_Rune_EnergyFieldRune.png"}
      },
      {
        name = "Energy Wall Rune",
        description = "Here you can purchase a stack of '250 Energy Wall Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 17,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2279,
        count = 250,
        icons = {"Product_Rune_EnergyWallRune.png"}
      },
      {
        name = "Explosion Rune",
        description = "Here you can purchase a stack of '250 Explosion Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 6,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2313,
        count = 250,
        icons = {"Product_Rune_ExplosionRune.png"}
      },
      {
        name = "Fireball Rune",
        description = "Here you can purchase a stack of '250 Fireball Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 6,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2302,
        count = 250,
        icons = {"Product_Rune_FireballRune.png"}
      },
      {
        name = "Fire Bomb Rune",
        description = "Here you can purchase a stack of '250 Fire Bomb Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 23,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2305,
        count = 250,
        icons = {"Product_Rune_FireBombRune.png"}
      },
      {
        name = "Fire Field Rune",
        description = "Here you can purchase a stack of '250 Fire Field Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 6,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2301,
        count = 250,
        icons = {"Product_Rune_FireFieldRune.png"}
      },
      {
        name = "Fire Wall Rune",
        description = "Here you can purchase a stack of '250 Fire Wall Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 12,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2303,
        count = 250,
        icons = {"Product_Rune_FireWallRune.png"}
      },
      {
        name = "Great Fireball Rune",
        description = "Here you can purchase a stack of 'Great Fireball Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 9,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2304,
        count = 250,
        icons = {"Product_Rune_GreatFireBallRune.png"}
      },
      {
        name = "Icicle Rune",
        description = "Here you can purchase a stack of '250 Icicle Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 6,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2271,
        count = 250,
        icons = {"Product_Rune_IcicleRune.png"}
      },
      {
        name = "Intense Healing Rune",
        description = "Here you can purchase a stack of '250 Intense Healing Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 19,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2265,
        count = 250,
        icons = {"Product_Rune_IntenseHealingRune.png"}
      },
      {
        name = "Magic Wall Rune",
        description = "Here you can purchase a stack of '250 Magic Wall Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 23,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2293,
        count = 250,
        icons = {"Product_Rune_MagicWallRune.png"}
      },
      {
        name = "Paralyse Rune",
        description = "Here you can purchase a stack of '250 Paralyse Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 140,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2278,
        count = 250,
        icons = {"Product_Rune_ParalyseRune.png"}
      },
      {
        name = "Poison Bomb Rune",
        description = "Here you can purchase a stack of '250 Poison Bomb Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 17,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2286,
        count = 250,
        icons = {"Product_Rune_PoisonBombRune.png"}
      },
      {
        name = "Poison Wall Rune",
        description = "Here you can purchase a stack of '250 Poison Wall Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 10,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2289,
        count = 250,
        icons = {"Product_Rune_PoisonWallRune.png"}
      },
      {
        name = "Soulfire Rune",
        description = "Here you can purchase a stack of '250 Soulfire Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 9,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2308,
        count = 250,
        icons = {"Product_Rune_SoulfireRune.png"}
      },
      {
        name = "Stone Shower Rune",
        description = "Here you can purchase a stack of '250 Stone Shower Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 7,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2288,
        count = 250,
        icons = {"Product_Rune_StoneShowerRune.png"}
      },
      {
        name = "Sudden Death Rune",
        description = "Here you can purchase a stack of '250 Sudden Death Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 22,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2268,
        count = 250,
        icons = {"Product_Rune_SuddenDeathRune.png"}
      },
      {
        name = "Thunderstorm Rune",
        description = "Here you can purchase a stack of '250 Thunderstorm Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 7,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2315,
        count = 250,
        icons = {"Product_Rune_ThunderstormRune.png"}
      },
      {
        name = "Ultimate Healing Rune",
        description = "Here you can purchase a stack of '250 Ultimate Healing Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 35,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2273,
        count = 250,
        icons = {"Product_Rune_UltimateHealingRune.png"}
      },
      {
        name = "Wild Growth Rune",
        description = "Here you can purchase a stack of '250 Wild Growth Runes'. Use them to unleash their magical energy when in need of it.Note, characters with a protection zone block or a battle sign cannot purchase runes. Also, characters cannot buy runes that exceed their capacity. Finally, runes bought in the Store can only be used by the character that makes the purchase. For this reason, the purchased runes need to fit the character's level and magic level.",
        price = 32,
        type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE,
        thingId = 2269,
        count = 250,
        icons = {"Product_Rune_WildGrowthRune.png"}
      }
    }
  },
  {
    name = "Mounts",
    state = GameStore.States.STATE_NONE,
    icons = {"Category_Mounts.png"},
    description = "Buy your character one or more of the fabolous Mounts offered here.",
    rookgaard = true,
    offers = {
      {
        name = "Cranium Spider",
        description = "Here you can purchase the Mount 'Cranium Spider' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 116,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_SkullSpider_v1.png"}
      },
      {
        name = "Cave Tarantula",
        description = "Here you can purchase the Mount 'Cave Tarantula' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 117,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_SkullSpider_v2.png"}
      },
      {
        name = "Gloom Widow",
        description = "Here you can purchase the Mount 'Snow Pelt' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 118,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_SkullSpider_v3.png"}
      },
      {
        name = "Blazing Unicorn",
        description = "Here you can purchase the Mount 'Gloom Widow' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 113,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_UnicornFire.png"}
      },
      {
        name = "Artic Unicorn",
        description = "Here you can purchase the Mount 'Artic Unicorn' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 114,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_UnicornRainbow.png"}
      },
      {
        name = "Prismatic Unicorn",
        description = "Here you can purchase the Mount 'Prismatic Unicorn' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 115,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_UnicornIce.png"}
      },
      {
        name = "Armoured War Horse",
        description = "Here you can purchase the Mount 'Armoured War Horse' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 23,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_ArmouredWarHorse.png"}
      },
      {
        name = "Shadow Draptor",
        description = "Here you can purchase the Mount 'Shadow Draptor' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 24,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_shadowdraptor.png"}
      },
      {
        name = "Steelbeak",
        description = "Here you can purchase the Mount 'Steelbeak' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 34,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_steelbeak.png"}
      },
      {
        name = "Crimson Ray",
        description = "Here you can purchase the Mount 'Crimson Ray' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 33,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_crimsonray.png"}
      },
      {
        name = "Jungle Saurian",
        description = "Here you can purchase the Mount 'Jungle Saurian' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 110,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Saurian_v1.png"}
      },
      {
        name = "Ember Saurian",
        description = "Here you can purchase the Mount 'Ember Saurian' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 111,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Saurian_v2.png"}
      },
      {
        name = "Lagoon Saurian",
        description = "Here you can purchase the Mount 'Lagoon Saurian' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 112,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Saurian_v3.png"}
      },
      {
        name = "Gold Sphinx",
        description = "Here you can purchase the Mount 'Gold Sphinx' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 107,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Sphinx_v1.png"}
      },
      {
        name = "Emerald Sphinx",
        description = "Here you can purchase the Mount 'Emerald Sphinx' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 108,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Sphinx_v2.png"}
      },
      {
        name = "Shadow Sphinx",
        description = "Here you can purchase the Mount 'Shadow Sphinx' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 109,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Sphinx_v3.png"}
      },
      {
        name = "Jackalope",
        description = "Here you can purchase the Mount 'Jackalope' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 103,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_AntleredRabbit_v1.png"}
      },
      {
        name = "Dreadhare",
        description = "Here you can purchase the Mount 'Dreadhare' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 104,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_AntleredRabbit_v2.png"}
      },
      {
        name = "Wolpertinger",
        description = "Here you can purchase the Mount 'Wolpertinger' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 105,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_AntleredRabbit_v3.png"}
      },
      {
        name = "Ivory Fang",
        description = "Here you can purchase the Mount 'Ivory Fang' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 100,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_ivoryfang.png"}
      },
      {
        name = "Shadow Claw",
        description = "Here you can purchase the Mount 'Shadow Claw' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 101,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_ShadowClaw.png"}
      },
      {
        name = "Snow Pelt",
        description = "Here you can purchase the Mount 'Snow Pelt' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        description = "Here you can purchase the Mount 'Snow Pelt' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 102,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_SnowPelt.png"}
      },
      {
        name = "Swamp Snapper",
        description = "Here you can purchase the Mount 'Swamp Snapper' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 95,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_SwampSnapper.png"}
      },
      {
        name = "Mould Shell",
        description = "Here you can purchase the Mount 'Mould Shell' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 96,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_MouldShell.png"}
      },
      {
        name = "Reed Lurker",
        description = "Here you can purchase the Mount 'Reed Lurker' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 97,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_ReedLurker.png"}
      },
      {
        name = "Bloodcurl",
        description = "Here you can purchase the Mount 'Bloodcurl' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 92,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 720,
        icons = {"Product_Mount_Bloodcurl.png"}
      },
      {
        name = "Leafscuttler",
        description = "Here you can purchase the Mount 'Leafscuttler' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 93,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Leafscuttler.png"}
      },
      {
        name = "Mouldpincer",
        description = "Here you can purchase the Mount 'Mouldpincer' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 91,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_Mouldpincer.png"}
      },
      {
        name = "Nightdweller",
        description = "Here you can purchase the Mount 'Nightdweller' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 88,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_Nightdweller.png"}
      },
      {
        name = "Frostflare",
        description = "Here you can purchase the Mount 'Frostflare' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 89,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_Frostflare.png"}
      },
      {
        name = "Cinderhoof",
        description = "Here you can purchase the Mount 'Cinderhoof' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 90,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_Cinderhoof.png"}
      },
      {
        name = "Slagsnare",
        description = "Here you can purchase the Mount 'Slagsnare' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 84,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_Slagsnare.png"}
      },
      {
        name = "Nightstinger",
        description = "Here you can purchase the Mount 'Nightstinger' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 85,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_Nightstinger.png"}
      },
      {
        name = "Razorcreep",
        description = "Here you can purchase the Mount 'Razorcreep' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 86,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_Razorcreep.png"}
      },
      {
        name = "Gorongra",
        description = "Here you can purchase the Mount 'Gorongra' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 81,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 720,
        icons = {"Product_Mount_Gorongra.png"}
      },
      {
        name = "Noctungra",
        description = "Here you can purchase the Mount 'Noctungra' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 82,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 720,
        icons = {"Product_Mount_Noctungra.png"}
      },
      {
        name = "Silverneck",
        description = "Here you can purchase the Mount 'Silverneck' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 83,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 720,
        icons = {"Product_Mount_Silverneck.png"}
      },
      {
        name = "Sea Devil",
        description = "Here you can purchase the Mount 'Sea Devil' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 78,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 570,
        icons = {"Product_Mount_SeaDevil.png"}
      },
      {
        name = "Coralripper",
        description = "Here you can purchase the Mount 'Coralripper' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 79,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 570,
        icons = {"Product_Mount_Coralripper.png"}
      },
      {
        name = "Plumfish",
        description = "Here you can purchase the Mount 'Plumfish' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 80,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 570,
        icons = {"Product_Mount_Plumfish.png"}
      },
      {
        name = "Flitterkatzen",
        description = "Here you can purchase the Mount 'Flitterkatzen' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 75,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_Flitterkatzen.png"}
      },
      {
        name = "Venompaw",
        description = "Here you can purchase the Mount 'Venompaw' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 76,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_Venompaw.png"}
      },
      {
        name = "Batcat",
        description = "Here you can purchase the Mount 'Batcat' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 77,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 870,
        icons = {"Product_Mount_BatCat.png"}
      },
      {
        name = "Ringtail Waccoon",
        description = "Here you can purchase the Mount 'Ringtail Waccoon' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 68,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_RingtailWaccoon.png"}
      },
      {
        name = "Night Waccoon",
        description = "Here you can purchase the Mount 'Night Waccoon' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 69,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_NightWaccoon.png"}
      },
      {
        name = "Emerald Waccoon",
        description = "Here you can purchase the Mount 'Emerald Waccoon' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 70,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_EmeraldWaccoon.png"}
      },
      {
        name = "Flying Divan",
        description = "Here you can purchase the Mount 'Flying Divan' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 65,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_FlyingDivan.png"}
      },
      {
        name = "Magic Carpet",
        description = "Here you can purchase the Mount 'Magic Carpet' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 66,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_MagicCarpet.png"}
      },
      {
        name = "Floating Kashmir",
        description = "Here you can purchase the Mount 'Floating Kashmir' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 67,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_FloatingKashmir.png"}
      },
      {
        name = "Shadow Hart",
        description = "Here you can purchase the Mount 'Shadow Hart' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 72,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 660,
        icons = {"Product_Mount_ShadowHart.png"}
      },
      {
        name = "Black Stag",
        description = "Here you can purchase the Mount 'Black Stag' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 73,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 660,
        icons = {"Product_Mount_BlackStag.png"}
      },
      {
        name = "Emperor Deer",
        description = "Here you can purchase the Mount 'Emperor Deer' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 74,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 660,
        icons = {"Product_Mount_EmperorDeer.png"}
      },
      {
        name = "Tundra Rambler",
        description = "Here you can purchase the Mount 'Tundra Rambler' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 62,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_TundraRambler.png"}
      },
      {
        name = "Highland Yak",
        description = "Here you can purchase the Mount 'Highland Yak' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 63,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_HighlandYak.png"}
      },
      {
        name = "Glacier Vagabond",
        description = "Here you can purchase the Mount 'Glacier Vagabond' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 64,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 750,
        icons = {"Product_Mount_GlacierVagabond.png"}
      },
      {
        name = "Golden Dragonfly",
        description = "Here you can purchase the Mount 'Golden Dragonfly' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 59,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_GoldenDragonfly.png"}
      },
      {
        name = "Steel Bee",
        description = "Here you can purchase the Mount 'Steel Bee' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 60,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_SteelBee.png"}
      },
      {
        name = "Copper Fly",
        description = "Here you can purchase the Mount 'Copper Fly' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 61,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_CopperFly.png"}
      },
      {
        name = "Doombringer",
        description = "Here you can purchase the Mount 'Doombringer' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 53,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_Doombringer.png"}
      },
      {
        name = "Woodland Prince",
        description = "Here you can purchase the Mount 'Woodland Prince' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 54,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_WoodlandPrince.png"}
      },
      {
        name = "Hailtorm Fury",
        description = "Here you can purchase the Mount 'Hailtorm Fury' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 55,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 780,
        icons = {"Product_Mount_HailstormFury.png"}
      },
      {
        name = "Siegebreaker",
        description = "Here you can purchase the Mount 'Siegebreaker' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 56,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_Siegebreaker.png"}
      },
      {
        name = "Poisonbane",
        description = "Here you can purchase the Mount 'Poisonbane' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 57,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_Poisonbane.png"}
      },
      {
        name = "Blackpelt",
        description = "Here you can purchase the Mount 'Blackpelt' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 58,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 690,
        icons = {"Product_Mount_Blackpelt.png"}
      },
      {
        name = "Nethersteed",
        description = "Here you can purchase the Mount 'Nethersteed' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 50,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_Nethersteed.png"}
      },
      {
        name = "Tempest",
        description = "Here you can purchase the Mount 'Tempest' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 51,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_Tempest.png"}
      },
      {
        name = "Flamesteed",
        description = "Here you can purchase the Mount 'Flamesteed' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 47,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 900,
        icons = {"Product_Mount_Flamesteed.png"}
      },
      {
        name = "Tombstinger",
        description = "Here you can purchase the Mount 'Tombstinger' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 36,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_Tombstinger.png"}
      },
      {
        name = "Death Crawler",
        description = "Here you can purchase the Mount 'Death Crawler' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 46,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_DeathCrawler.png"}
      },
      {
        name = "Jade Pincer",
        description = "Here you can purchase the Mount 'Jade Pincer' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 49,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 600,
        icons = {"Product_Mount_JadePincer.png"}
      },
      {
        name = "Desert King",
        description = "Here you can purchase the Mount 'Desert King' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 41,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 450,
        icons = {"Product_Mount_DesertKing.png"}
      },
      {
        name = "Jade Lion",
        description = "Here you can purchase the Mount 'Jade Lion' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 48,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 450,
        icons = {"Product_Mount_JadeLion.png"}
      },
      {
        name = "Winter King",
        description = "Here you can purchase the Mount 'Winter king' for your character. Riding on a mount is not only cool, but also gives your character a speed boost. Note: The Mount will only be received by the character who purchased it in the Store.",
        thingId = 52,
        type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
        price = 450,
        icons = {"Product_Mount_WinterKing.png"}
      }
    }
  },
  {
    name = "Outfits",
    state = GameStore.States.STATE_NONE,
    description = "Buy your character one more of the classy outfits offered here.",
    icons = {"Category_Outfits.png"},
    rookgaard = true,
    offers = {
      --Sun Priest
      {
        name = "Full Sun Priest Outfit",
        thingId = {male = 1024, female = 1023},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_SunPriest_Male_Full.png", "Product_Outfit_SunPriest_Female_Full.png"}
      },
      {
        name = "Sun Priest Outfit",
        thingId = {male = 1024, female = 1023},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_SunPriest_Male_Base.png", "Product_Outfit_SunPriest_Female_Base.png"}
      },
      {
        name = "Sun Priest Addon 1",
        thingId = {male = 1024, female = 1023},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SunPriest_Male_Addon1.png", "Product_Outfit_SunPriest_Female_Addon1.png"}
      },
      {
        name = "Sun Priest Addon 2",
        thingId = {male = 1024, female = 1023},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SunPriest_Male_Addon2.png", "Product_Outfit_SunPriest_Female_Addon1.png"}
      },
      --Herbalist
      {
        name = "Full Herbalist Outfit",
        thingId = {male = 1021, female = 1020},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_Herbalist_Male_Full.png", "Product_Outfit_Herbalist_Female_Full.png"}
      },
      {
        name = "Herbalist Outfit",
        thingId = {male = 1021, female = 1020},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Herbalist_Male_Base.png", "Product_Outfit_Herbalist_Female_Base.png"}
      },
      {
        name = "Herbalist Addon 1",
        thingId = {male = 1021, female = 1020},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Herbalist_Male_Addon1.png", "Product_Outfit_Herbalist_Female_Addon1.png"}
      },
      {
        name = "Herbalist Addon 2",
        thingId = {male = 1021, female = 1020},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Herbalist_Male_Addon2.png", "Product_Outfit_Herbalist_Female_Addon1.png"}
      },
      --Entrepreneur
      {
        name = "Full Entrepreneur Outfit",
        thingId = {male = 472, female = 471},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_Entrepreneur_Male_Full.png", "Product_Outfit_Entrepreneur_Female_Full.png"}
      },
      {
        name = "Entrepreneur Outfit",
        thingId = {male = 472, female = 471},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Entrepreneur_Male_Base.png", "Product_Outfit_Entrepreneur_Female_Base.png"}
      },
      {
        name = "Entrepreneur Addon 1",
        thingId = {male = 472, female = 471},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Entrepreneur_Male_Addon1.png", "Product_Outfit_Entrepreneur_Female_Addon1.png"}
      },
      {
        name = "Entrepreneur Addon 2",
        thingId = {male = 472, female = 471},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Entrepreneur_Male_Addon2.png", "Product_Outfit_Entrepreneur_Female_Addon1.png"}
      },
      --Trophy Hunter
      {
        name = "Full Trophy Hunter Outfit",
        thingId = {male = 899, female = 900},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_TrophyHunter_Male_Full.png", "Product_Outfit_TrophyHunter_Female_Full.png"}
      },
      {
        name = "Trophy Hunter Outfit",
        thingId = {male = 899, female = 900},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_TrophyHunter_Male_Base.png", "Product_Outfit_TrophyHunter_Female_Base.png"}
      },
      {
        name = "Trophy Hunter Addon 1",
        thingId = {male = 899, female = 900},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_TrophyHunter_Male_Addon1.png", "Product_Outfit_TrophyHunter_Female_Addon1.png"}
      },
      {
        name = "Trophy Hunter Addon 2",
        thingId = {male = 899, female = 900},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_TrophyHunter_Male_Addon2.png", "Product_Outfit_TrophyHunter_Female_Addon1.png"}
      },
      --Retro Outfits
      {
        name = "Retro Citizen",
        thingId = {male = 974, female = 975},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroCitizen_Male_Base.png", "Product_Outfit_RetroCitizen_Female_Base.png"}
      },
      {
        name = "Retro Hunter",
        thingId = {male = 972, female = 973},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroHunter_Male_Base.png", "Product_Outfit_RetroHunter_Female_Base.png"}
      },
      {
        name = "Retro Knight",
        thingId = {male = 970, female = 971},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroKnight_Male_Base.png", "Product_Outfit_RetroKnight_FemaleFix_Base.png"}
      },
      {
        name = "Retro Wizzard",
        thingId = {male = 968, female = 969},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroMage_Male_Base.png", "Product_Outfit_RetroMage_Female_Base.png"}
      },
      {
        name = "Retro Noblewoman",
        thingId = {male = 966, female = 967},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroNobleman_Male_Base.png", "Product_Outfit_RetroNobleman_Female_Base.png"}
      },
      {
        name = "Retro Summoner",
        thingId = {male = 964, female = 965},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroSummoner_Male_Base.png", "Product_Outfit_RetroSummoner_Female_Base.png"}
      },
      {
        name = "Retro Warrior",
        thingId = {male = 962, female = 963},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_RetroWarrior_Male_Base.png", "Product_Outfit_RetroWarrior_Female_Base.png"}
      },
      --Pharaoh
      {
        name = "Full Pharaoh Outfit",
        thingId = {male = 955, female = 956},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Pharaoh_male_Full_.png", "Product_Outfit_Pharaoh_female_Full_.png"}
      },
      {
        name = "Pharaoh Outfit",
        thingId = {male = 955, female = 956},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 390,
        icons = {"Product_Outfit_Pharaoh_male_Base_.png", "Product_Outfit_Pharaoh_female_Base_.png"}
      },
      {
        name = "Pharaoh Outfit Addon 1",
        thingId = {male = 955, female = 956},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Pharaoh_male_Addon1_.png", "Product_Outfit_Pharaoh_female_Addon1_.png"}
      },
      {
        name = "Pharaoh Outfit Addon 2",
        thingId = {male = 955, female = 956},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Pharaoh_male_Addon1_.png", "Product_Outfit_Pharaoh_female_Addon2_.png"}
      },
      --Groove Keeper
      {
        name = "Full Groove Keeper Outfit",
        thingId = {male = 908, female = 909},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_AntlerDruid_male_Full.png", "Product_Outfit_AntlerDruid_female_Full.png"}
      },
      {
        name = "Groove Keeper Outfit",
        thingId = {male = 899, female = 900},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_AntlerDruid_male_Base.png", "Product_Outfit_AntlerDruid_female_Base.png"}
      },
      {
        name = "Groove Keeper Addon 1",
        thingId = {male = 899, female = 900},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_AntlerDruid_male_Addon1.png", "Product_Outfit_AntlerDruid_female_Addon1.png"}
      },
      {
        name = "Groove Keeper Addon 2",
        thingId = {male = 899, female = 900},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_AntlerDruid_male_Addon2.png", "Product_Outfit_AntlerDruid_female_Addon2.png"}
      },
      --Lupine Wardem
      {
        name = "Full Lupine Wardem Outfit",
        thingId = {male = 899, female = 900},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 840,
        icons = {"Product_Outfit_LupinWarden_male_Full.png", "Product_Outfit_LupinWarden_female_Full.png"}
      },
      {
        name = "Lupine Wardem Outfit",
        thingId = {male = 899, female = 900},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 660,
        icons = {"Product_Outfit_LupinWarden_male_Base.png", "Product_Outfit_LupinWarden_female_Base.png"}
      },
      {
        name = "Lupine Wardem Addon 1",
        thingId = {male = 899, female = 900},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_LupinWarden_male_Addon1.png", "Product_Outfit_LupinWarden_female_Addon1.png"}
      },
      {
        name = "Lupine Wardem Addon 2",
        thingId = {male = 899, female = 900},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_LupinWarden_male_Addon2.png", "Product_Outfit_LupinWarden_female_Addon1.png"}
      },
      --Arena Champion
      {
        name = "Full Arena Champion Outfit",
        thingId = {male = 884, female = 885},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_ArenaChampion_Male_Full.png", "Product_Outfit_ArenaChampion_Female_Full.png"}
      },
      {
        name = "Arena Champion Outfit",
        thingId = {male = 884, female = 885},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_ArenaChampion_Male_Base.png", "Product_Outfit_ArenaChampion_Female_Base.png"}
      },
      {
        name = "Arena Champion Outfit Addon 1",
        thingId = {male = 884, female = 885},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Beastmaster_Male_Addon1.png", "Product_Outfit_Beastmaster_Female_Addon1.png"}
      },
      {
        name = "Arena Champion Outfit Addon 2",
        thingId = {male = 884, female = 885},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Beastmaster_Male_Addon2.png", "Product_Outfit_Beastmaster_Female_Addon2.png"}
      },
      --Philosopher
      {
        name = "Full Philosopher Outfit",
        thingId = {male = 873, female = 874},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_Professor_Male_Full.png", "Product_Outfit_Professor_Female_Full.png"}
      },
      {
        name = "Philosopher Outfit",
        thingId = {male = 873, female = 874},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Professor_Male_Base.png", "Product_Outfit_Professor_Female_Base.png"}
      },
      {
        name = "Philosopher Outfit Addon 1",
        thingId = {male = 873, female = 874},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Professor_Male_Addon1.png", "Product_Outfit_Professor_Female_Addon1.png"}
      },
      {
        name = "Philosopher Outfit Addon 2",
        thingId = {male = 873, female = 874},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Professor_Male_Addon1.png", "Product_Outfit_Professor_Female_Addon2.png"}
      },
      --Winter Warden
      {
        name = "Full Winter Warden Outfit",
        thingId = {male = 853, female = 852},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_WinterWarden_Male_Full.png", "Product_Outfit_WinterWarden_Female_Full.png"}
      },
      {
        name = "Winter Warden Outfit",
        thingId = {male = 853, female = 852},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_WinterWarden_Male_Base.png", "Product_Outfit_WinterWarden_Female_Base.png"}
      },
      {
        name = "Winter Warden Outfit Addon 1",
        thingId = {male = 853, female = 852},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_WinterWarden_Male_Addon1.png", "Product_Outfit_WinterWarden_Female_Addon1.png"}
      },
      {
        name = "Winter Warden Outfit Addon 2",
        thingId = {male = 853, female = 852},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_WinterWarden_Male_Addon2.png", "Product_Outfit_WinterWarden_Female_Addon2.png"}
      },
      --Royal Pumpkin
      {
        name = "Full Royal Pumpkin Outfit",
        thingId = {male = 760, female = 759},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 640,
        icons = {"Product_Outfit_RoyalPumpkin_Male_Full.png", "Product_Outfit_RoyalPumpkin_Female_Full.png"}
      },
      {
        name = "Royal Pumpkin Outfit",
        thingId = {male = 760, female = 759},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 660,
        icons = {"Product_Outfit_RoyalPumpkin_Male_Base.png", "Product_Outfit_RoyalPumpkin_Female_Base.png"}
      },
      {
        name = "Royal Pumpkin Outfit Addon 1",
        thingId = {male = 760, female = 759},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_RoyalPumpkin_Male_Addon1.png", "Product_Outfit_RoyalPumpkin_Female_Addon2.png"}
      },
      {
        name = "Royal Pumpkin Outfit Addon 2",
        thingId = {male = 760, female = 759},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_RoyalPumpkin_Male_Addon2.png", "Product_Outfit_RoyalPumpkin_Female_Addon2.png"}
      },
      --Sea Dog
      {
        name = "Full Sea Dog Outfit",
        thingId = {male = 750, female = 749},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 600,
        icons = {"Product_Outfit_SeaDog_Male_Full.png", "Product_Outfit_SeaDog_Female_Full.png"}
      },
      {
        name = "Sea Dog Outfit",
        thingId = {male = 750, female = 749},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 420,
        icons = {"Product_Outfit_SeaDog_Male_Base.png", "Product_Outfit_SeaDog_Female_Base.png"}
      },
      {
        name = "Sea Dog Outfit Addon 1",
        thingId = {male = 750, female = 749},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SeaDog_Male_Addon1.png", "Product_Outfit_SeaDog_Female_Addon1.png"}
      },
      {
        name = "Sea Dog Outfit Addon 2",
        thingId = {male = 750, female = 749},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SeaDog_Male_Addon2.png", "Product_Outfit_SeaDog_Female_Addon2.png"}
      },
      --Champion
      {
        name = "Full Champion Outfit",
        thingId = {male = 633, female = 632},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Champion_Male_Full.png", "Product_Outfit_Champion_Female_Full.png"}
      },
      {
        name = "Champion Outfit",
        thingId = {male = 633, female = 632},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 390,
        icons = {"Product_Outfit_Champion_Male_Base.png", "Product_Outfit_Champion_Female_Base.png"}
      },
      {
        name = "Champion Outfit Addon 1",
        thingId = {male = 633, female = 632},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Champion_Male_Addon1.png", "Product_Outfit_Champion_Female_Addon1.png"}
      },
      {
        name = "Champion Outfit Addon 2",
        thingId = {male = 633, female = 632},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Champion_Male_Addon2.png", "Product_Outfit_Champion_Female_Addon2.png"}
      },
      --Conjurer
      {
        name = "Full Conjurer Outfit",
        thingId = {male = 634, female = 635},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 720,
        icons = {"Product_Outfit_Conjurer_Male_Full.png", "Product_Outfit_Conjurer_Female_Full.png"}
      },
      {
        name = "Conjurer Outfit",
        thingId = {male = 634, female = 635},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 540,
        icons = {"Product_Outfit_Conjurer_Male_Base.png", "Product_Outfit_Conjurer_Female_Base.png"}
      },
      {
        name = "Conjurer Outfit Addon 1",
        thingId = {male = 634, female = 635},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Conjurer_Male_Addon1.png", "Product_Outfit_Conjurer_Female_Addon1.png"}
      },
      {
        name = "Conjurer Outfit Addon 2",
        thingId = {male = 634, female = 635},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Conjurer_Male_Addon2.png", "Product_Outfit_Conjurer_Female_Addon2.png"}
      },
      --Beast Master
      {
        name = "Full Beastmaster Outfit",
        thingId = {male = 637, female = 636},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_Beastmaster_Male_Full.png", "Product_Outfit_Beastmaster_Female_Full.png"}
      },
      {
        name = "Beastmaster Outfit",
        thingId = {male = 637, female = 636},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_Beastmaster_Male_Base.png", "Product_Outfit_Beastmaster_Female_Base.png"}
      },
      {
        name = "Beastmaster Outfit Addon 1",
        thingId = {male = 637, female = 636},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Beastmaster_Male_Addon1.png", "Product_Outfit_Beastmaster_Female_Addon1.png"}
      },
      {
        name = "Beastmaster Outfit Addon 2",
        thingId = {male = 637, female = 637},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Beastmaster_Male_Addon2.png", "Product_Outfit_Beastmaster_Female_Addon2.png"}
      },
      --Chaos Acolyte
      {
        name = "Full Chaos Acolyte Outfit",
        thingId = {male = 665, female = 664},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 600,
        icons = {"Product_Outfit_ChaosAcolyte_Male_Full.png", "Product_Outfit_ChaosAcolyte_Female_Full.png"}
      },
      {
        name = "Chaos Acolyte Outfit",
        thingId = {male = 665, female = 664},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 420,
        icons = {"Product_Outfit_ChaosAcolyte_Male_Base.png", "Product_Outfit_ChaosAcolyte_Female_Base.png"}
      },
      {
        name = "Chaos Acolyte Outfit Addon 1",
        thingId = {male = 665, female = 664},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_ChaosAcolyte_Male_Addon1.png", "Product_Outfit_ChaosAcolyte_Female_Addon1.png"}
      },
      {
        name = "Chaos Acolyte Outfit Addon 2",
        thingId = {male = 665, female = 664},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_ChaosAcolyte_Male_Addon2.png", "Product_Outfit_ChaosAcolyte_Female_Addon2.png"}
      },
      --Death Herald
      {
        name = "Full Death Herald Outfit",
        thingId = {male = 667, female = 666},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 600,
        icons = {"Product_Outfit_DeathHerald_Male_Full.png", "Product_Outfit_DeathHerald_Female_Full.png"}
      },
      {
        name = "Death Herald Outfit",
        thingId = {male = 667, female = 666},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 420,
        icons = {"Product_Outfit_DeathHerald_Male_Base.png", "Product_Outfit_DeathHerald_Female_Base.png"}
      },
      {
        name = "Death Herald Outfit Addon 1",
        thingId = {male = 667, female = 666},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_DeathHerald_Male_Addon1.png", "Product_Outfit_DeathHerald_Female_Addon1.png"}
      },
      {
        name = "Death Herald Outfit Addon 2",
        thingId = {male = 667, female = 666},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_DeathHerald_Male_Addon2.png", "Product_Outfit_DeathHerald_Female_Addon2.png"}
      },
      --Ranger
      {
        name = "Full Ranger Outfit",
        thingId = {male = 684, female = 683},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_Ranger_Male_Full.png", "Product_Outfit_Ranger_Female_Full.png"}
      },
      {
        name = "Ranger Outfit",
        thingId = {male = 684, female = 683},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_Ranger_Male_Base.png", "Product_Outfit_Ranger_Female_Base.png"}
      },
      {
        name = "Ranger Outfit Addon 1",
        thingId = {male = 684, female = 683},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Ranger_Male_Addon1.png", "Product_Outfit_Ranger_Female_Addon1.png"}
      },
      {
        name = "Ranger Outfit Addon 2",
        thingId = {male = 684, female = 683},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Ranger_Male_Addon2.png", "Product_Outfit_Ranger_Female_Addon2.png"}
      },
      --Ceremonial Garb
      {
        name = "Full Ceremonial Garb Outfit",
        thingId = {male = 695, female = 694},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 750,
        icons = {"Product_Outfit_CeremonialGarb_Male_Full.png", "Product_Outfit_CeremonialGarb_Female_Full.png"}
      },
      {
        name = "Ceremonial Garb Outfit",
        thingId = {male = 695, female = 694},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_CeremonialGarb_Male_Base.png", "Product_Outfit_CeremonialGarb_Female_Base.png"}
      },
      {
        name = "Ceremonial Garb Outfit Addon 1",
        thingId = {male = 695, female = 694},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_CeremonialGarb_Male_Addon1.png", "Product_Outfit_CeremonialGarb_Female_Addon1.png"}
      },
      {
        name = "Ceremonial Garb Outfit Addon 2",
        thingId = {male = 695, female = 694},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_CeremonialGarb_Male_Addon2.png", "Product_Outfit_CeremonialGarb_Female_Addon2.png"}
      },
      --Puppeteer
      {
        name = "Full Puppeteer Outfit",
        thingId = {male = 697, female = 696},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 870,
        icons = {"Product_Outfit_Puppeteer_Male_Full.png", "Product_Outfit_Puppeteer_Female_Full.png"}
      },
      {
        name = "Puppeteer Outfit",
        thingId = {male = 697, female = 696},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 690,
        icons = {"Product_Outfit_Puppeteer_Male_Base.png", "Product_Outfit_Puppeteer_Female_Base.png"}
      },
      {
        name = "Puppeteer Outfit Addon 1",
        thingId = {male = 697, female = 696},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Puppeteer_Male_Addon1.png", "Product_Outfit_Puppeteer_Female_Addon1.png"}
      },
      {
        name = "Puppeteer Outfit Addon 2",
        thingId = {male = 697, female = 696},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Puppeteer_Male_Addon2.png", "Product_Outfit_Puppeteer_Female_Addon2.png"}
      },
      --Spirit Caller
      {
        name = "Full Spirit Caller Outfit",
        thingId = {male = 699, female = 698},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 600,
        icons = {"Product_Outfit_SpiritCaller_Male_Full.png", "Product_Outfit_SpiritCaller_Female_Full.png"}
      },
      {
        name = "Spirit Caller Outfit",
        thingId = {male = 699, female = 698},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 420,
        icons = {"Product_Outfit_SpiritCaller_Male_Base.png", "Product_Outfit_SpiritCaller_Female_Base.png"}
      },
      {
        name = "Spirit Caller Outfit Addon 1",
        thingId = {male = 699, female = 698},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SpiritCaller_Male_Addon1.png", "Product_Outfit_SpiritCaller_Female_Addon1.png"}
      },
      {
        name = "Spirit Caller Outfit Addon 2",
        thingId = {male = 699, female = 698},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SpiritCaller_Male_Addon2.png", "Product_Outfit_SpiritCaller_Female_Addon2.png"}
      },
      --Evoker
      {
        name = "Full Evoker Outfit",
        thingId = {male = 725, female = 724},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 840,
        icons = {"Product_Outfit_Evoker_Male_Full.png", "Product_Outfit_Evoker_Female_Full.png"}
      },
      {
        name = "Evoker Outfit",
        thingId = {male = 725, female = 724},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 660,
        icons = {"Product_Outfit_Evoker_Male_Base.png", "Product_Outfit_Evoker_Female_Base.png"}
      },
      {
        name = "Evoker Outfit Addon 1",
        thingId = {male = 725, female = 724},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Evoker_Male_Addon1.png", "Product_Outfit_Evoker_Female_Addon1.png"}
      },
      {
        name = "Evoker Outfit Addon 2",
        thingId = {male = 725, female = 724},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_Evoker_Male_Addon2.png", "Product_Outfit_Evoker_Female_Addon2.png"}
      },
      --Seaweaver
      {
        name = "Full Seaweaver Outfit",
        thingId = {male = 733, female = 732},
        addon = 3,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 570,
        icons = {"Product_Outfit_SeaWeaver_Male_Full.png", "Product_Outfit_SeaWeaver_Female_Full.png"}
      },
      {
        name = "Seaweaver Outfit",
        thingId = {male = 733, female = 732},
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
        price = 390,
        icons = {"Product_Outfit_SeaWeaver_Male_Base.png", "Product_Outfit_SeaWeaver_Female_Base.png"}
      },
      {
        name = "Seaweaver Outfit Addon 1",
        thingId = {male = 733, female = 732},
        addon = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SeaWeaver_Male_Addon1.png", "Product_Outfit_SeaWeaver_Female_Addon1.png"}
      },
      {
        name = "Seaweaver Outfit Addon 2",
        thingId = {male = 733, female = 732},
        addon = 2,
        type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON,
        price = 120,
        icons = {"Product_Outfit_SeaWeaver_Male_Addon2.png", "Product_Outfit_SeaWeaver_Female_Addon2.png"}
      }
    }
  },
  {
    name = "House Equipment",
    state = GameStore.States.STATE_NONE,
    description = "Buy exceptional equipment to upgrade your Tibia House",
    icons = {"Category_HouseEquipment.png"},
    rookgaard = true,
    offers = {
      {
        name = "Alchemistic Cabinet",
        thingId = 31192,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_alchemisticcabinet.png"}
      },
      {
        name = "Alchemistic Bookstand",
        thingId = 31211,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_alchemisticbookstand.png"}
      },
      {
        name = "Alchemistic Chair",
        thingId = 31258,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_alchemisticchair.png"}
      },
      {
        name = "Alchemistic Scales",
        thingId = 31215,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_alchemisticscales.png"}
      },
      {
        name = "Alchemist Table",
        thingId = 31194,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 80,
        icons = {"Product_HouseEquipment_alchemistictable.png"}
      },
      {
        name = "Pile of Alchemist Books",
        thingId = 31219,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_pileofalchemisticbooks.png"}
      },
      {
        name = "Alchemist Cup Board",
        thingId = 31221,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_alchemisticcupboard.png"}
      },
      {
        name = "Light of Change",
        thingId = 31201,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_lightofchange.png"}
      },
      {
        name = "Torch of Change",
        thingId = 31207,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_torchofchange.png"}
      },
      {
        name = "Ferumbras Bust",
        thingId = 31305,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 70,
        icons = {"Product_HouseEquipment_ferumbrasbust.png"}
      },
      {
        name = "Queen Eloise Bust",
        thingId = 31307,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_queeneloisebust.png"}
      },
      {
        name = "King Tibianus Bust",
        thingId = 31309,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_kingtibianusbust.png"}
      },
      {
        name = "Arrival At Thais Painting",
        thingId = 31226,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_arrivalatthaispainting.png"}
      },
      {
        name = "Tibia Street Painting",
        thingId = 31228,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_tibiastreetspainting.png"}
      },
      {
        name = "Ferumbras Portrait",
        thingId = 31230,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_ferumbrasportrait.png"}
      },
      {
        name = "Wheat Carpet",
        thingId = 29433,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet23.png"}
      },
      {
        name = "Crested Carpet",
        thingId = 29435,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 25,
        icons = {"Product_HouseEquipment_Carpet24.png"}
      },
      {
        name = "Decorated Carpet",
        thingId = 29437,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet25.png"}
      },
      {
        name = "Ornate Table",
        thingId = 29443,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_EgyptianFurniture_Table.png"}
      },
      {
        name = "Ornate Chair",
        thingId = 29439,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_EgyptianFurniture_Chair.png"}
      },
      {
        name = "Ornate Chest",
        thingId = 29445,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 80,
        icons = {"Product_HouseEquipment_EgyptianFurniture_Chest.png"}
      },
      {
        name = "Ornate Cabinet",
        thingId = 29447,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_EgyptianFurniture_Cupboard.png"}
      },
      {
        name = "Terrarium Snake",
        thingId = 29451,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 180,
        icons = {"Product_HouseEquipment_Housepet_Snake.png"}
      },
      {
        name = "Demon Pit",
        thingId = 29455,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 250,
        icons = {"Product_HouseEquipment_Housepet_LilDemon.png"}
      },
      {
        name = "Verdant Chair",
        thingId = 29336,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_NaturalFurniture_Chair.png"}
      },
      {
        name = "Verdant Cabinet",
        thingId = 29340,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 100,
        icons = {"Product_HouseEquipment_NaturalFurniture_Cabinet.png"}
      },
      {
        name = "Verdant Trunk",
        thingId = 29346,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 50,
        icons = {"Product_HouseEquipment_NaturalFurniture_Chest.png"}
      },
      {
        name = "Verdant Table",
        thingId = 29347,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 80,
        icons = {"Product_HouseEquipment_NaturalFurniture_Table.png"}
      },
      {
        name = "Venoream Table Clock",
        thingId = 29347,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 120,
        icons = {"Product_HouseEquipment_FancyClock.png"}
      },
      {
        name = "Verdant Carpet",
        thingId = 29349,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_18.png"}
      },
      {
        name = "Shaggy Carpet",
        thingId = 29351,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_19.png"}
      },
      {
        name = "Mystic Carpet",
        thingId = 29353,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_20.png"}
      },
      {
        name = "Wooden Planks",
        thingId = 29358,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 25,
        icons = {"Product_HouseEquipment_Carpet_22.png"}
      },
      {
        name = "Stone Tiles",
        thingId = 29355,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 25,
        icons = {"Product_HouseEquipment_Carpet_21.png"}
      },
      {
        name = "Hrodmiran Weapons Rack",
        thingId = 29316,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 90,
        icons = {"Product_HouseEquipment_HrodmirianWeaponRack.png"}
      },
      {
        name = "Bath Tube",
        thingId = 29311,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 250,
        icons = {"Product_HouseEquipment_Bathtub.png"}
      },
      {
        name = "Terrarium Spider",
        thingId = 29313,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 180,
        icons = {"Product_HouseEquipment_BabyGiantSpider.png"}
      },
      {
        name = "Daily Reward Shrine",
        thingId = 29020,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 150,
        icons = {"Product_HouseEquipment_DailyRewardShrine.png"}
      },
      {
        name = "Shiny Daily Reward Shrine",
        thingId = 29023,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 150,
        icons = {"Product_HouseEquipment_ShinyDailyRewardShrine.png"}
      },
      {
        name = "Health Cask",
        thingId = 28555,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 4,
        icons = {"Health_Cask.png"}
      },
      {
        name = "Strong Health Cask",
        thingId = 28556,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 9,
        icons = {"Strong_Health_Cask.png"}
      },
      {
        name = "Great Health Cask",
        thingId = 28557,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 18,
        icons = {"Great_Health_Cask.png"}
      },
      {
        name = "Ultimate Health Cask",
        thingId = 28558,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 29,
        icons = {"Ultimate_Health_Cask.png"}
      },
      {
        name = "Supreme Health Cask",
        thingId = 28559,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 47,
        icons = {"Supreme_Health_Cask.png"}
      },
      {
        name = "Mana Cask",
        thingId = 28565,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 4,
        icons = {"Mana_Cask.png"}
      },
      {
        name = "Strong Mana Cask",
        thingId = 28566,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 7,
        icons = {"Strong_Mana_Cask.png"}
      },
      {
        name = "Great Mana Cask",
        thingId = 28567,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 11,
        icons = {"Great_Mana_Cask.png"}
      },
      {
        name = "Ultimate Mana Cask",
        thingId = 28568,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 33,
        icons = {"Ultimate_Mana_Cask.png"}
      },
      {
        name = "Great Spirit Cask",
        thingId = 28575,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 18,
        icons = {"Great_Spirit_Cask.png"}
      },
      {
        name = "Ultimate Spirit Cask",
        thingId = 28576,
        count = 1000,
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        price = 18,
        icons = {"Ultimate_Spirit_Cask.png"}
      },
      {
        name = "Vengothic Chair",
        description = "Buy an incredible Vengothic Chair to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27897,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_VengothicFurniture_Chair.png"}
      },
      {
        name = "Vengothic Chest",
        description = "Buy an incredible Vengothic Chest to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27905,
        count = 1,
        price = 80,
        icons = {"Product_HouseEquipment_VengothicFurniture_Chest.png"}
      },
      {
        name = "Vengothic Cabinet",
        description = "Buy an incredible Vengothic Cabinet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27903,
        count = 1,
        price = 100,
        icons = {"Product_HouseEquipment_VengothicFurniture_Cupboard.png"}
      },
      {
        name = "Vengothic Table",
        description = "Buy an incredible Vengothic Table to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27901,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_VengothicFurniture_Table.png"}
      },
      {
        name = "Vengothic Lamp",
        description = "Buy an incredible Vengothic Lamp to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27886,
        count = 1,
        price = 180,
        icons = {"Product_HouseEquipment_VengothicLamp.png"}
      },
      {
        name = "Chamaleon",
        description = "Buy an incredible Chamaleon to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27889,
        count = 1,
        price = 250,
        icons = {"Product_HouseEquipment_Chameleon.png"}
      },
      {
        name = "Blooming Cactus",
        description = "Buy an incredible Blooming Cactus to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27892,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_BloomingCactus.png"}
      },
      {
        name = "Bitter-Smack Leaf",
        description = "Buy an incredible Bitter-Smack Leaf to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27893,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_BitterSmackLeaf.png"}
      },
      {
        name = "Pink Roses",
        description = "Buy an incredible Pink Roses to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27894,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_PinkRoses.png"}
      },
      {
        name = "Red Roses",
        description = "Buy an incredible Red Roses to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27895,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_RedRoses.png"}
      },
      {
        name = "Yellow Roses",
        description = "Buy an incredible Yellow Roses to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 2789,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_YellowRoses.png"}
      },
      {
        name = "Parrot",
        description = "Buy an incredible Parrot to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27100,
        count = 1,
        price = 180,
        icons = {"Product_HouseEquipment_Housepet_Parrot.png"}
      },
      {
        name = "Skull Lamp",
        description = "Buy an incredible Skull Lamp to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27102,
        count = 1,
        price = 90,
        icons = {"Product_HouseEquipment_Lamp_Skull.png"}
      },
      {
        name = "Flowery Carpet",
        description = "Buy an incredible Flowery Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27084,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_10.png"}
      },
      {
        name = "Colourful Carpet",
        description = "Buy an incredible Colourful Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27085,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_11.png"}
      },
      {
        name = "Striped Carpet",
        description = "Buy an incredible Striped Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27086,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_12.png"}
      },
      {
        name = "Patterned Carpet",
        description = "Buy an incredible Patterned Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27089,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_15.png"}
      },
      {
        name = "Fur Carpet",
        description = "Buy an incredible Fur Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27087,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_13.png"}
      },
      {
        name = "Diamond Carpet",
        description = "Buy an incredible Diamond Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27088,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_14.png"}
      },
      {
        name = "Night Sky Carpet",
        description = "Buy an Night Sky Carpet Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27090,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_16.png"}
      },
      {
        name = "Star Carpet",
        description = "Buy an incredible Star Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27091,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_17.png"}
      },
      {
        name = "Gilded Imbuing Shrine",
        description = "Buy an incredible Gilded Imbuing Shrine to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27850,
        count = 1,
        price = 200,
        icons = {"Product_HouseEquipment_GildedImbuingShrine.png"}
      },
      {
        name = "Imbuing Shrine",
        description = "Buy an incredible Imbuing Shrine to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 27728,
        count = 1,
        price = 150,
        icons = {"Product_HouseEquipment_ImbuingShrine.png"}
      },
      {
        name = "Fish Tank",
        description = "Buy an incredible Fish Tank to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26347,
        count = 1,
        price = 180,
        icons = {"Product_HouseEquipment_Housepet_FishTank.png"}
      },
      {
        name = "Dog House",
        description = "Buy an incredible Dog House to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26364,
        count = 1,
        price = 150,
        icons = {"Product_HouseEquipment_Housepet_DogHouse.png"}
      },
      {
        name = "Golden Dragon Tapestry",
        description = "Buy an incredible Golden Dragon Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26379,
        count = 1,
        price = 70,
        icons = {"Product_HouseEquipment_Tapestry_04.png"}
      },
      {
        name = "Sword Tapestry",
        description = "Buy an incredible Sword Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26380,
        count = 1,
        price = 60,
        icons = {"Product_HouseEquipment_Tapestry_05.png"}
      },
      {
        name = "Brocade Tapestry",
        description = "Buy an incredible Brocade Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26381,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_Tapestry_06.png"}
      },
      {
        name = "Rustic Cabinet",
        description = "Buy an incredible Rustic Cabinet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26356,
        count = 1,
        price = 100,
        icons = {"Product_HouseEquipment_RusticFurniture_Cabinet.png"}
      },
      {
        name = "Rustic Chair",
        description = "Buy an incredible Rustic Chair to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26349,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_RusticFurniture_Chair.png"}
      },
      {
        name = "Rustic Trunk",
        description = "Buy an incredible Rustic Trunk to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26358,
        count = 1,
        price = 80,
        icons = {"Product_HouseEquipment_RusticFurniture_Chest.png"}
      },
      {
        name = "Rustic Table",
        description = "Buy an incredible Rustic Table to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26354,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_RusticFurniture_Table.png"}
      },
      {
        name = "Crimson Carpet",
        description = "Buy an incredible Crimson Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26371,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_04.png"}
      },
      {
        name = "Azure Carpet",
        description = "Buy an incredible Azure Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26372,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet_05.png"}
      },
      {
        name = "Emerald Carpet",
        description = "Buy an incredible Emerald Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26373,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_06.png"}
      },
      {
        name = "Light Parquet",
        description = "Buy an incredible Light Parquet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26374,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_07.png"}
      },
      {
        name = "Dark Parquet",
        description = "Buy an incredible Dark Parquet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26375,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_08.png"}
      },
      {
        name = "Marble Floor",
        description = "Buy an incredible Marble Floor to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26370,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet_09.png"}
      },
      {
        name = "Baby Dragon",
        description = "Buy an incredible Baby Dragon to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26098,
        count = 1,
        price = 250,
        icons = {"Product_HouseEquipment_Housepet_BabyDragon.png"}
      },
      {
        name = "Cat in a Basket",
        description = "Buy an incredible Cat in a Basket to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26107,
        count = 1,
        price = 150,
        icons = {"Product_HouseEquipment_Housepet_Cat.png"}
      },
      {
        name = "Hamster in a Wheel",
        description = "Buy an incredible Hamster in a Wheel to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26100,
        count = 1,
        price = 180,
        icons = {"Product_HouseEquipment_Housepet_Hamster.png"}
      },
      {
        name = "Magnificent Cabinet",
        description = "Buy an incredible Magnificent Cabinet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26075,
        count = 1,
        price = 100,
        icons = {"Product_HouseEquipment_BaroqueFurniture_Cabinet.png"}
      },
      {
        name = "Magnificent Chair",
        description = "Buy an incredible Magnificent chair to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26059,
        count = 1,
        price = 60,
        icons = {"Product_HouseEquipment_BaroqueFurniture_Chair.png"}
      },
      {
        name = "Magnificent Trunk",
        description = "Buy an incredible Magnificent Trunk to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26083,
        count = 1,
        price = 70,
        icons = {"Product_HouseEquipment_BaroqueFurniture_Chest.png"}
      },
      {
        name = "Magnificent Table",
        description = "Buy an incredible Magnificent Table to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26073,
        count = 1,
        price = 60,
        icons = {"Product_HouseEquipment_BaroqueFurniture_Table.png"}
      },
      {
        name = "Ferocious Cabinet",
        description = "Buy an incredible Ferocious Cabinet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26077,
        count = 1,
        price = 110,
        icons = {"Product_HouseEquipment_TortureChamberFurniture_Cabinet.png"}
      },
      {
        name = "Ferocious Chair",
        description = "Buy an incredible Ferocious Chair to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26063,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_TortureChamberFurniture_Chair.png"}
      },
      {
        name = "Ferocious Trunk",
        description = "Buy an incredible Ferocious Trunk to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26079,
        count = 1,
        price = 80,
        icons = {"Product_HouseEquipment_TortureChamberFurniture_Chest.png"}
      },
      {
        name = "Ferocious Table",
        description = "Buy an incredible Ferocious Table to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26067,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_TortureChamberFurniture_Table.png"}
      },
      {
        name = "Yalaharian Carpet",
        description = "Buy an incredible Yalaharian Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26109,
        count = 1,
        price = 35,
        icons = {"Product_HouseEquipment_Carpet1.png"}
      },
      {
        name = "White Fur Carpet",
        description = "Buy an incredible White Fur Carpet to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26110,
        count = 1,
        price = 30,
        icons = {"Product_HouseEquipment_Carpet2.png"}
      },
      {
        name = "Bamboo Mat",
        description = "Buy an incredible Bamboo Mat to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 2611,
        count = 26111,
        price = 25,
        icons = {"Product_HouseEquipment_Carpet3.png"}
      },
      {
        name = "Lit Protectress Lamp",
        description = "Buy an incredible Protectress Lamp to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26094,
        count = 1,
        price = 90,
        icons = {"Product_HouseEquipment_Lamp_Goddess.png"}
      },
      {
        name = "Lit Predator Lamp",
        description = "Buy an incredible Predator Lamp to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26090,
        count = 1,
        price = 60,
        icons = {"Product_HouseEquipment_Lamp_Leopard.png"}
      },
      {
        name = "Royal Mailbox",
        description = "Buy an incredible Royal Mailbox to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26055,
        count = 1,
        price = 150,
        icons = {"Product_HouseEquipment_Mailbox_Golden.png"}
      },
      {
        name = "Ornate Mailbox",
        description = "Buy an incredible Ornate Mailbox to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26057,
        count = 1,
        price = 200,
        icons = {"Product_HouseEquipment_Mailbox_Standard.png"}
      },
      {
        name = "Lordly Tapestry",
        description = "Buy an incredible Lordly Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26104,
        count = 1,
        price = 50,
        icons = {"Product_HouseEquipment_Tapestry_01.png"}
      },
      {
        name = "Menacing Tapestry",
        description = "Buy an incredible Menacing Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26105,
        count = 1,
        price = 70,
        icons = {"Product_HouseEquipment_Tapestry_02.png"}
      },
      {
        name = "All-Seeing Tapestry",
        description = "Buy an incredible All-Seeing Tapestry to decorate your home.",
        type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
        thingId = 26106,
        count = 1,
        price = 60,
        icons = {"Product_HouseEquipment_Tapestry_03.png"}
      }
    }
  },
  {
    name = "XP Boost",
    state = GameStore.States.STATE_NONE,
    description = "Buy your character a boost to speed up your character development.",
    rookgaard = true,
    icons = {"Category_Boosts.png"},
    offers = {
      {name = "XP Boost 50%", type = GameStore.OfferTypes.OFFER_TYPE_EXPBOOST, price = 30, icons = {"xpboosticon.png"}}
    }
  },
  {
    name = "Useful Things",
    state = GameStore.States.STATE_NONE,
    description = "Buy your character one or more of the helpful items offered here.",
    rookgaard = true,
    icons = {"Category_Convenience.png"},
    offers = {
      {
        name = "Prey Bonus Reroll",
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
        price = 5,
        icons = {"Product_UsefulThings_PreyBonusReroll.png"}
      },
      {
        name = "5x Prey Bonus Reroll",
        count = 5,
        type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
        price = 25,
        icons = {"Product_UsefulThings_PreyBonusReroll.png"}
      },
      {
        name = "Permanent Prey Slot",
        type = GameStore.OfferTypes.OFFER_TYPE_PREYSLOT,
        price = 450,
        icons = {"Product_UsefulThings_PreyBonusReroll.png"}
      },
      {
        name = "Temple Teleport",
        type = GameStore.OfferTypes.OFFER_TYPE_TEMPLE,
        price = 25,
        icons = {"Product_Transportation_TempleTeleport.png"}
      },
      {
        name = "Gold Pounch",
        thingId = 26377,
        count = 1,
        type = GameStore.OfferTypes.OFFER_TYPE_ITEM,
        price = 900,
        icons = {"Product_MagicCoinPurse.png"},
        description = "With Gold Pounch you can carry the amount of gold without having to keep many knapsacks in the backpack, this product allows you to be charged as much gold as your ability allows."
      }
    }
  }
}

-- Non-Editable
local runningId = 1
for k, category in ipairs(GameStore.Categories) do
  if category.offers then
    for m, offer in ipairs(category.offers) do
      offer.id = runningId
      runningId = runningId + 1

      if not offer.type then
        offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
      end
    end
  end
end
