---@type Mq
local mq = require("mq")
local spellDB = require('spellDB')
require('spellLines')
require('config')

-- Need to Finish Level 2 through 24
AbilitySets = {
	[1] = {
		Level = 1,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Minor Shielding',
			[2] = 'Cavorting Bones',
			[3] = 'Disease Cloud',
			[4] = 'Lifetap',
			[5] = 'Siphon Strength'
		},
		TankSpellBar = { [1] = 'Minor Shielding', [2] = 'Cavorting Bones', [3] = 'Disease Cloud', [4] = 'Lifetap', [5] = 'Siphon Strength' },
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
		Dots = 'N/A'
	},
	[2] = {
		Level = 2,
		Scent = 'N/A',
		Spellbar = {
			[1] = 'Minor Shielding',
			[2] = 'Lifetap'
		},
		TankSpellBar = {},
		warriorPet = 'N/A',
		roguePet = 'N/A',
		FirstPrioritySpells = {
			{
				name = "Lifetap",
				gem = 2,
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
	},
	-- Repeat Table 3 for Level 3 through 24

	[3] = {
		Level = 3,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[4] = {
		Level = 4,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[5] = {
		Level = 5,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},


	[6] = {
		Level = 6,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[7] = {
		Level = 7,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[8] = {
		Level = 8,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[9] = {
		Level = 9,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[10] = {
		Level = 10,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[11] = {
		Level = 11,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[12] = {
		Level = 12,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[13] = {
		Level = 13,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[14] = {
		Level = 14,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[15] = {
		Level = 15,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[16] = {
		Level = 16,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[17] = {
		Level = 17,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[18] = {
		Level = 18,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},

	[19] = {
		Level = 19,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[20] = {
		Level = 20,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[21] = {
		Level = 21,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[22] = {
		Level = 22,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[23] = {
		Level = 23,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[24] = {
		Level = 24,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[25] = {
		Level = 25,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[26] = {
		Level = 26,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[27] = {
		Level = 27,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[28] = {
		Level = 28,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[29] = {
		Level = 29,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[30] = {
		Level = 30,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[31] = {
		Level = 31,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[32] = {
		Level = 32,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[33] = {
		Level = 33,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[34] = {
		Level = 34,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[35] = {
		Level = 35,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[36] = {
		Level = 36,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[37] = {
		Level = 37,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[38] = {
		Level = 1385,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[39] = {
		Level = 39,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[40] = {
		Level = 40,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[41] = {
		Level = 41,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[42] = {
		Level = 42,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[43] = {
		Level = 43,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[44] = {
		Level = 44,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[45] = {
		Level = 45,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[46] = {
		Level = 46,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[47] = {
		Level = 47,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[48] = {
		Level = 48,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[49] = {
		Level = 49,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[50] = {
		Level = 50,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[51] = {
		Level = 51,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[52] = {
		Level = 52,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[53] = {
		Level = 53,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[54] = {
		Level = 54,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[55] = {
		Level = 55,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[56] = {
		Level = 56,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[57] = {
		Level = 57,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[58] = {
		Level = 58,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[59] = {
		Level = 59,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[60] = {
		Level = 60,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[61] = {
		Level = 61,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[62] = {
		Level = 62,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[63] = {
		Level = 63,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[64] = {
		Level = 64,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[65] = {
		Level = 65,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[66] = {
		Level = 66,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[67] = {
		Level = 67,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[68] = {
		Level = 68,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[69] = {
		Level = 69,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[70] = {
		Level = 70,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[71] = {
		Level = 71,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[72] = {
		Level = 72,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[73] = {
		Level = 73,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[74] = {
		Level = 74,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[75] = {
		Level = 75,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[76] = {
		Level = 76,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[77] = {
		Level = 77,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[78] = {
		Level = 78,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[79] = {
		Level = 79,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[80] = {
		Level = 80,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[81] = {
		Level = 81,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[82] = {
		Level = 82,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[83] = {
		Level = 83,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[84] = {
		Level = 84,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[85] = {
		Level = 85,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[86] = {
		Level = 86,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[87] = {
		Level = 87,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[88] = {
		Level = 88,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[89] = {
		Level = 89,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[90] = {
		Level = 90,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[91] = {
		Level = 91,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[92] = {
		Level = 82,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[93] = {
		Level = 93,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[94] = {
		Level = 94,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[95] = {
		Level = 95,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[96] = {
		Level = 96,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[97] = {
		Level = 97,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[98] = {
		Level = 98,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[99] = {
		Level = 99,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[100] = {
		Level = 100,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[101] = {
		Level = 101,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[102] = {
		Level = 102,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[103] = {
		Level = 103,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[104] = {
		Level = 104,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[105] = {
		Level = 105,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[106] = {
		Level = 106,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[107] = {
		Level = 107,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[108] = {
		Level = 108,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[109] = {
		Level = 109,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[110] = {
		Level = 110,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[111] = {
		Level = 111,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[112] = {
		Level = 112,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[113] = {
		Level = 113,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[114] = {
		Level = 114,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[115] = {
		Level = 115,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[116] = {
		Level = 116,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[117] = {
		Level = 117,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[118] = {
		Level = 118,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[119] = {
		Level = 119,
		Scent = {
			name = '',
			altnum = '',
			gem = ''
		},
		Spellbar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		TankSpellBar = {
			[1] = '',[2] = '',[3] = '',[4] = '',[5] = '',[6] = '',
			[7] = '',[8] = '',[9] = '',[10] = '',[11] = '',[12] = '',
			[13] = '',
		},
		warriorPet = 'N/A',
		roguePet = 'N/A',

		FirstPrioritySpells = {
			{
				name = "", gem = '', priority = 1,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		SecondPrioritySpells = {
			{
				name = "", gem = '', priority = 2,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},
		LastPrioritySpells = {
			{
				name = "", gem = '', priority = 3,
				buffRecieved = false, buffRecievedName = nil,
				alternateNamePostCast = false, altName1 = nil, altName2 = nil,
			},
		},

		TotalBurnAbilities = 0,
		BurnAAs = 'N/A',
		BurnItems = 'N/A',
	},
	[120] = {
		Level = 120,
		Scent = {
			type = "AA",
			Name = "Scent of Thule",
			AltNumber = 751,
		},
		Spellbar = {
			[1] = MiscModule.findClosestIndex(CombatSpellLines.LongDreadPyre, 120),
			[2] = MiscModule.findClosestIndex(CombatSpellLines.NecrotizingWounds, 120),
			[3] = MiscModule.findClosestIndex(CombatSpellLines.LongKedgefishVenom, 120),
			[4] = MiscModule.findClosestIndex(CombatSpellLines.VisziajsPallidHaze,120),
			[5] = MiscModule.findClosestIndex(CombatSpellLines.LongCurseOfMortality, 120),
			[6] = MiscModule.findClosestIndex(CombatSpellLines.DiseaseCombo, 120),
			[7] = MiscModule.findClosestIndex(CombatSpellLines.LongPyreOfMori, 120),
			[8] = MiscModule.findClosestIndex(CombatSpellLines.SearingShadow, 120),
			[9] = MiscModule.findClosestIndex(CombatSpellLines.Ignite, 120),
			[10] = MiscModule.findClosestIndex(CombatSpellLines.Blood, 120),
			[11] = MiscModule.findClosestIndex(CombatSpellLines.SwarmPets, 120),
			[12] = MiscModule.findClosestIndex(CombatSpellLines.MindWrack, 120),
			[13] = MiscModule.findClosestIndex(CombatSpellLines.Progressive, 120)
		},
		TankSpellBar = {
			[1] = "Pyre of Va Xakra",
			[2] = "Infected Wounds",
			[3] = "Hemorrhagic Venom",
			[4] = "Zelnithak's Pallid Haze",
			[5] = "Extinction",
			[6] = "Fleshrot's Grip of Decay",
			[7] = "Cascading Shadeshield",
			[8] = "Scalding Shadow",
			[9] = "Frigid Salubrity",
			[10] = "Proclamation for Blood",
			[11] = "Call Skeleton Mass",
			[12] = "Mind Atrophy",
			[13] = "Composite Paroxysm",
		},
		warriorPet = "Luclin's Conqueror",
		roguePet = "Unrelenting Assassin",
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



