
--require('spellLines')
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
		CombatSpells = {
			{
				name = "Lifetap",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},

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
		deathBloom = 'N/A', -- AA # 7703
		bloodMagic = 'N/A', -- AA # 524

		-- Aggro--
		FD = 'N/A', -- AA: 428, Spell:Highest Avail in Feign Death Line
		-- CC --
		SingleCCPriority = { 'Mez', 'Punt', 'Root' },
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
		CombatSpells = {
			{
				name = "Lifetap",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Minor Shielding'
		}
	},
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
		CombatSpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Siphon Strength",
				gem = 5,
				priority = 1,
				buffRecieved = true,
				buffRecievedName = 'Siphon Strength Recourse',
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},

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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
				altNamePostCast = false,
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
				altNamePostCast = false,
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
				altNamePostCast = false,
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
				altNamePostCast = false,
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Clinging Darkness",
				gem = 5,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
				altNamePostCast = false,
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
		CombatSpells = {
			{
				name = "Lifespike",
				gem = 4,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Clinging Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
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
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},

			{
				name = "Lifespike",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Clinging Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Dark Pact'
		}
	},
	[11] = {
		Level = 11,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Disease Cloud',
			[4] = 'Lifespike',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Bone Walk',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifespike",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		},
		PetBuffs = {
			'Focus Death'
		}
	},
	[12] = {
		Level = 12,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Disease Cloud',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Convoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Disease Cloud",
				gem = 3,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Lesser Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace'
		},
		PetBuffs = {
			'Focus Death'
		}
	},
	[13] = {
		Level = 13,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Convoke Shadow',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
		},
		PetBuffs = {
			'Focus Death'
		}
	},
	[14] = {
		Level = 14,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Convoke Shadow',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
		},
		PetBuffs = {
			'Focus Death'
		}
	},
	[15] = {
		Level = 15,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Convoke Shadow',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
		},
		PetBuffs = {
			'Focus Death'
		}
	},
	[16] = {
		Level = 16,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Restless Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
			'Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[17] = {
		Level = 17,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Dark Pact',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Restless Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
			'Shielding', 'Grim Aura', 'Endure Cold', 'Dark Pact', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[18] = {
		Level = 18,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Allure of Death',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Restless Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
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
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[19] = {
		Level = 19,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Lifedraw',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Restless Bones',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		LastPrioritySpells = {
			name = 'Shadow Vortex',
			gem = 7,
			priority = 3,
			buffRecieved = false,
			buffRecievedName = nil,
			altNamePostCast = false,
			altName1 = nil,
			altName2 = nil
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[20] = {
		Level = 20,
		Scent = {
			type = 'Spell',
			name = 'Scent of Dusk'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Leech',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Animate Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Leech",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[21] = {
		Level = 21,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Animate Dead',
		roguePet = 'N/A',
		FirstPrioritySpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		LastPrioritySpells = {
			name = 'Shadow Vortex',
			gem = 7,
			priority = 3,
			buffRecieved = false,
			buffRecievedName = nil,
			altNamePostCast = false,
			altName1 = nil,
			altName2 = nil
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',

	},
	[22] = {
		Level = 22,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Animate Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			name = 'Shadow Vortex',
			gem = 7,
			priority = 3,
			buffRecieved = false,
			buffRecievedName = nil,
			altNamePostCast = false,
			altName1 = nil,
			altName2 = nil
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Focus Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror'

	},
	[23] = {
		Level = 23,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Animate Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Shielding', 'Grim Aura', 'Endure Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror'

	},
	[24] = {
		Level = 24,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Haunting Corpse',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			name = 'Shadow Vortex',
			gem = 7,
			priority = 3,
			buffRecieved = false,
			buffRecievedName = nil,
			altNamePostCast = false,
			altName1 = nil,
			altName2 = nil
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror'

	},
	[25] = {
		Level = 25,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Siphon Life',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Haunting Corpse',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Lifedraw",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror'

	},
	[26] = {
		Level = 26,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Engulfing Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Haunting Corpse',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Engulfing Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[27] = {
		Level = 27,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Heat Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Haunting Corpse',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Heat Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[28] = {
		Level = 28,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Embrace'
		},
		warriorPet = 'Haunting Corpse',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[29] = {
		Level = 29,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Curse'
		},
		warriorPet = 'Summon Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[30] = {
		Level = 30,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Curse'
		},
		warriorPet = 'Summon Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Allure of Death', 'Vampiric Embrace', 'Spirit Armor'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[31] = {
		Level = 31,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = 'Vampiric Curse'
		},
		warriorPet = 'Summon Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[32] = {
		Level = 32,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Summon Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Major Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[33] = {
		Level = 33,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Poison Bolt',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Poison Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Hungry Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[34] = {
		Level = 34,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Heart Flutter',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Heart Flutter",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Intensify Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[35] = {
		Level = 35,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Shock of Poison',
			[3] = 'Scourge',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scourge",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Shock of Poison",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[36] = {
		Level = 36,
		Scent = {
			type = 'Spell',
			name = 'Scent of Shadow'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Scourge',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scourge",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[37] = {
		Level = 37,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Scourge',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scourge",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[38] = {
		Level = 38,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Scourge',
			[4] = 'Spirit Tap',
			[5] = 'Dooming Darkness',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Shadow',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scourge",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Spirit Tap",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dooming Darkness',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[39] = {
		Level = 39,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Scourge',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Malignant Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scourge",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[40] = {
		Level = 40,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Malignant Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Greater Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[41] = {
		Level = 41,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Malignant Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones'

	},
	[42] = {
		Level = 42,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Malignant Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[43] = {
		Level = 43,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Malignant Dead',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[44] = {
		Level = 44,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Shadow Vortex',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Cackling Bones',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Shadow Vortex',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[45] = {
		Level = 45,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Auspice',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Cackling Bones',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Auspice',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Root',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[46] = {
		Level = 46,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Boil Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Auspice',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Cackling Bones',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Boil Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Auspice',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Paralyzing Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[47] = {
		Level = 47,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Ignite Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Spirit',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Auspice',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Cackling Bones',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Ignite Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Spirit",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Auspice',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Call of Bones', 'Vampiric Embrace', 'Spirit Armor',
			'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Paralyzing Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[48] = {
		Level = 48,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Ignite Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Soul',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Auspice',
			[8] = "Torbas' Acid Blast"
		},
		warriorPet = 'Invoke Death',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Ignite Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Soul",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Auspice',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Lich', 'Vampiric Embrace', 'Spirit Armor', 'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Paralyzing Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[49] = {
		Level = 49,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Ignite Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Soul',
			[5] = 'Dark Soul',
			[6] = 'Venom of the Snake',
			[7] = 'Bond of Death',
			[8] = "Torbas' Poison Blast"
		},
		warriorPet = 'Invoke Death',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Ignite Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Venom of the Snake",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Soul",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Bond of Death',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Lich', 'Vampiric Embrace', 'Spirit Armor', 'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Paralyzing Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
	},
	[50] = {
		Level = 50,
		Scent = {
			type = 'Spell',
			name = 'Scent of Darkness'
		},
		Spellbar = {
			[1] = 'Ignite Blood',
			[2] = 'Chilling Embrace',
			[3] = 'Asystole',
			[4] = 'Drain Soul',
			[5] = 'Dark Soul',
			[6] = 'Envenomed Bolt',
			[7] = 'Bond of Death',
			[8] = "Torbas' Poison Blast"
		},
		warriorPet = 'Invoke Death',
		roguePet = 'N/A',
		CombatSpells = {

			{
				name = "Ignite Blood",
				gem = 1,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Envenomed Bolt",
				gem = 6,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Asystole",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Drain Soul",
				gem = 4,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Chilling Embrace",
				gem = 2,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Torbas' Acid Blast",
				gem = 8,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Bond of Death',
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Vampiric Curse',
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			},
			{
				name = 'Dark Soul',
				gem = 5,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil
			}
		},
		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
		BurnAbilities = 'N/A',
		Buffs = {
			'Arch Shielding', 'Grim Aura', 'Resist Cold', 'Lich', 'Vampiric Embrace', 'Spirit Armor', 'Resist Disease'
		},
		PetBuffs = {
			'Augment Death', 'Spirit Armor'
		},
		FDSpell = 'Feign Death',
		RootSpell = 'Paralyzing Earth',
		LivingMez = 'Screaming Terror',
		petHeal = 'Renew Bones',
		igniteBones = 'Ignite Bones'
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Infected Wounds",
				gem = 2,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Hemorrhagic Venom",
				gem = 3,
				priority = 1,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Proclamation for Blood",
				gem = 10,
				priority = 1,
				buffRecieved = true,
				buffRecievedName = "Chaotic Power X",
				altNamePostCast = false,
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
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Call Skeleton Mass",
				gem = 11,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Extinction",
				gem = 5,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Composite Paroxysm",
				gem = 13,
				priority = 2,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = true,
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
				altNamePostCast = true,
				altName1 = "Fleshrot's Decay",
				altName2 = "Grip of Quietus",
			},
			{
				name = "Pyre of the Neglected",
				gem = 7,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Scalding Shadow",
				gem = 8,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},
			{
				name = "Ignite Cognition",
				gem = 9,
				priority = 3,
				buffRecieved = false,
				buffRecievedName = nil,
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			},

			{
				name = "Mind Atrophy",
				gem = 12,
				priority = 3,
				buffRecieved = true,
				buffRecievedName = "Mind Atrophy Recourse",
				altNamePostCast = false,
				altName1 = nil,
				altName2 = nil,
			}
		},

		-- Heretic's twincast, spire of necromancy, hand of death, funeral pyre, mercurial torment, focus arcanum, expac appropriate robe clicky, blightbringer's tunic of the grave clicky,gathering dusk,Lifeburn + Dying Grasp
		--Rise Bones and swarm of decay AA swarm pets, pet buff frenzy dead AA, Glyph,Intensity
		TotalBurnAbilities = 15,
		BurnAAs = { 677, 1390, 1257, 710, 430, 1211, 629, 68, 351, 900, 320, 524, 500, 175 },
		BurnItems = { "Blightbringer's Tunic of the Grave", "Luclinite Ensanguined Soulslayer Robe" },
		Buffs = {}
	}
}
return AbilitySets
