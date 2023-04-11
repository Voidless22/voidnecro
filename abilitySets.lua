---@type Mq
local mq = require("mq")
local spellDB = require('spellDB')
require('spellLines')
require('config')
require('./modules/miscModule')

-- Need to Finish Level 2 through 24
AbilitySets = {
	[1] = {
		Level = 1,
		Spellbar = {
			[1] = 'Minor Shielding',
			[2] = 'Disease Cloud',
			[3] = 'Lifetap',
			[4] = 'Siphon Strength'
		},
		FirstPrioritySpells = {
			{
				name = "Lifetap",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = 'N/A',
		LastPrioritySpells = 'N/A',
		-- Buffs --
		Buffs = { 'Minor Shielding' },
		-- Pet --
		warriorPet = 'Cavorting Bones',
		roguePet = 'N/A',
		petHaste = 'N/A',
		petHeal = 'N/A',
		longPetRune = 'N/A',
		shortPetRune = 'N/A',
		-- Burns --
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		
		Scent = 'N/A',

		-- Mana Managment --
		deathBloom = 'N/A',-- AA # 7703
		bloodMagic = 'N/A',-- AA # 524

		-- Aggro--
		FD = 'N/A',-- AA: 428, Spell:Highest Avail in Feign Death Line
		-- CC --
		SingleCCPriority = {'Mez','Punt','Root'},
		UndeadMez = 'N/A',
		LivingMez = 'N/A',
		aoeMez = 'N/A',
		Root = 'N/A',
		Punt = 'N/A'
	},


	[2] = {
		Level = 2,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Minor Shielding',
			[2] = 'Cavorting Bones',
			[3] = 'Disease Cloud',
			[4] = 'Lifetap',
			[5] = 'Siphon Strength'
		},
		warriorPet = 'Cavorting Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifetap",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = 'N/A',
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding'
		}
	},
	-- Repeat Table 3 for Level 3 through 24

	[3] = {
		Level = 3,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Minor Shielding',
			[2] = 'Cavorting Bones',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Siphon Strength',
			[6] = 'Grim Aura',
			[7] = 'Endure Cold'
		},
		warriorPet = 'Cavorting Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = 'N/A',
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding', 'Grim Aura', 'Endure Cold'
		}
	},
	[4] = {
		Level = 4,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Leering Corpse',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Endure Cold',
			[8] = 'Gate'
		},
		warriorPet = 'Leering Corpse',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding', 'Grim Aura', 'Endure Cold'
		}
	},
	[5] = {
		Level = 5,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Leering Corpse',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Endure Cold',
			[8] = 'Gate'
		},
		warriorPet = 'Leering Corpse',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding', 'Grim Aura', 'Endure Cold'
		}
	},


	[6] = {
		Level = 6,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Leering Corpse',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Gate'
		},
		warriorPet = 'Leering Corpse',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact'
		}
	},
	[7] = {
		Level = 7,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Leering Corpse',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Leering Corpse',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 4,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		}
	},

	[8] = {
		Level = 8,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Bone Walk',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Bone Walk',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		}
	},
	[9] = {
		Level = 9,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Grim Aura',
			[2] = 'Leech',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Bone Walk',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			},
			{
				name = 'Clinging Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		}
	},

	[10] = {
		Level = 10,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Clinging Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Bone Walk',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
			name = "Disease Cloud",
			gem = 3,
			priority = 2,
			buffRecieved = false,
			buffRecievedName = nil,
			alternateNamePostCast = false,
			altName1 = nil,
			altName2 = nil,
			},
			{
				name = 'Clinging Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		LastPrioritySpells = 'N/A',
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		}
	},


	[120] = {
		Level = 120,
		warriorPet = "Luclin's Conqueror",
		roguePet = "Unrelenting Assassin",
		Scent = 751,
		Spellbar = {
		},

		FirstPrioritySpells = {
			{
				name = "Pyre of Va Xakra",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Infected Wounds",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Hemorrhagic Venom",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Proclamation for Blood",
				gem = 10,
				priority = 1,
				buffRecieved = true,
				buffRecievedName = "Chaotic Power X",
				alternateNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			}
		},

		SecondPrioritySpells = {
				{
					name = "Zelnithak's Pallid Haze",
					gem = 4,
					priority = 2,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},
				{
					name = "Call Skeleton Mass",
					gem = 11,
					priority = 2,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},
				{
					name = "Extinction",
					gem = 5,
					priority = 2,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},
				{
					name = "Composite Paroxysm",
					gem = 13,
					priority = 2,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = true,
					altName1 = "Composite Paroxysm 1",
					altName2 = nil,
				}

		},
		LastPrioritySpells = {
				{
					name = "Fleshrot's Grip of Decay",
					gem = 6,
					priority = 3,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = true,
					altName1 = "Fleshrot's Decay",
					altName2 = "Grip of Quietus",
				},
				{
					name = "Pyre of the Neglected",
					gem = 7,
					priority = 3,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},
				{
					name = "Scalding Shadow",
					gem = 8,
					priority = 3,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},
				{
					name = "Ignite Cognition",
					gem = 9,
					priority = 3,
					buffRecieved = false,
					buffRecievedName = nil,
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				},

				{
					name = "Mind Atrophy",
					gem = 12,
					priority = 3,
					buffRecieved = true,
					buffRecievedName = "Mind Atrophy Recourse",
					alternateNamePostCast = false,
					altName1 = nil,
					altName2 = nil,
				}
	},

		-- Heretic's twincast, spire of necromancy, hand of death, funeral pyre, mercurial torment, focus arcanum, expac appropriate robe clicky, blightbringer's tunic of the grave clicky,gathering dusk,Lifeburn + Dying Grasp
		--Rise Bones and swarm of decay AA swarm pets, pet buff frenzy dead AA, Glyph,Intensity
		TotalBurnAbilities = 15,
		BurnAAs = { 677, 1390, 1257, 710, 430, 1211, 629, 68, 351, 900, 320, 524, 500, 175 },
		BurnItems = { "Blightbringer's Tunic of the Grave", "Luclinite Ensanguined Soulslayer Robe" },

	}
}
return AbilitySets



