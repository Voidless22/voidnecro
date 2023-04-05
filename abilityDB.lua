---@type Mq
local mq = require("mq")
Abilities = {
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
	Dots = {
		{ name = "Pyre of Va Xakra", gem = 1, priority = 1 },
		{ name = "Infected Wounds", gem = 2, priority = 1 },
		{ name = "Hemorrhagic Venom", gem = 3, priority = 1 },
		{ name = "Zelnithak's Pallid Haze", gem = 4, priority = 2 },
		{ name = "Extinction", gem = 5, priority = 2 },
		{ name = "Fleshrot's Grip of Decay", gem = 6, priority = 3 },
		{ name = "Pyre of the Neglected", gem = 7, priority = 3 },
		{ name = "Scalding Shadow", gem = 8, priority = 3 },
		{ name = "Ignite Cognition", gem = 9, priority = 3 },
		{ name = "Composite Paroxysm 2", gem = 13, priority = 3 },
	},
	Misc = {
		[10] = "Proclamation for Blood",
		[11] = "Call Skeleton Mass",
		[12] = "Mind Atrophy",
	},

	-- Heretic's twincast, spire of necromancy, hand of death, funeral pyre, mercurial torment, focus arcanum, expac appropriate robe clicky, blightbringer's tunic of the grave clicky,gathering dusk,Lifeburn + Dying Grasp
	--Rise Bones and swarm of decay AA swarm pets, pet buff frenzy dead AA, Glyph,Intensity
	TotalBurnAbilities = 13,
	BurnAAs = { 677, 1390, 1257, 710, 430, 1211, 629, 68, 351, 900, 320, 524 },
	BurnItems = { "Blightbringer's Tunic of the Grave", "Luclinite Ensanguined Soulslayer Robe" },
}
