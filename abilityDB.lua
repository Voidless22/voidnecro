---@type Mq
local mq = require("mq")
AbilityDB = {
OneTwentyAbilities = {
	Scent = {
		type = "AA",
		Name = "Scent of Thule",
		AltNumber = 751,
	},
	Spellbar = {
		[1] = "Pyre of Va Xakra",
		[2] = "Infected Wounds",
		[3] = "Hemorrhagic Venom",
		[4] = "Zelnithak's Pallid Haze",
		[5] = "Extinction",
		[6] = "Fleshrot's Grip of Decay",
		[7] = "Pyre of the Neglected",
		[8] = "Scalding Shadow",
		[9] = "Ignite Cognition",
		[10] = "Proclamation for Blood",
		[11] = "Call Skeleton Mass",
		[12] = "Mind Atrophy",
		[13] = "Composite Paroxysm",
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
return AbilityDB



