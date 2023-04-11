---@type Mq
local mq = require('mq')
require('spellDB')

CombatSpellLines = {}

BuffSpellLines = {}
-- Long Big Pyre (70+) --
CombatSpellLines.LongDreadPyre = {
	[70] = "Dread Pyre",
	[74] = "Ashengate Pyre",
	[79] = "Reaver's Pyre",
	[84] = "Soul Reaper's Pyre",
	[89] = "Pyre of Nos",
	[94] = "Pyre of Hazarak",
	[99] = "Pyre of Marnek",
	[104] = "Pyre of Jorobb",
	[109] = "Pyre of the Shadewarden",
	[114] = "Pyre of Klraggek",
	[119] = "Pyre of Va Xakra"
}
-- Long Smaller Pyre (69+) --
CombatSpellLines.LongPyreOfMori = {
	[69] = "Pyre of Mori",
	[73] = "Pyre of the Fallen",
	[78] = "Pyre of the Lifeless",
	[83] = "Pyre of the Forgotten",
	[88] = "Pyre of the Bereft",
	[93] = "Pyre of the Piq'a",
	[98] = "Pyre of the Forsaken",
	[103] = "Pyre of the Lost",
	[108] = "Pyre of the Fereth",
	[113] = "Pyre of the Wretched",
	[118] = "Pyre of the Neglected"
}
-- Short Smaller Pyre (88+) --
CombatSpellLines.ShortPyreOfMori = {
	[88] = "Tenak's Flashblaze",
	[93] = "Brimtav's Flashblaze",
	[98] = "Osalur's Flashblaze",
	[103] = "Mazub's Flashblaze",
	[108] = "Azeron's Flashblaze",
	[113] = "Otatomik's Flashblaze",
	[118] = "Thall Va Kelun's Flashblaze"
}
-- Long Medium Pyre (80+) --
CombatSpellLines.SearingShadow = {
	[80] = "Searing Shadow",
	[85] = "Scorching Shadow",
	[90] = "Blistering Shadow",
	[95] = "Blazing Shadow",
	[100] = "Coruscating Shadow",
	[105] = "Smouldering Shadow",
	[110] = "Burning Shadow",
	[115] = "Broiling Shadow",
	[120] = "Scalding Shadow"
}
-- Mana Drain DoT (84+) --
CombatSpellLines.Ignite = {
	[84] = "Ignite Energy",
	[89] = "Thoughtburn",
	[94] = "Ignite Potential",
	[99] = "Ignite Thoughts",
	[104] = "Ignite Synapses",
	[109] = "Ignite Memories",
	[114] = "Ignite Intellect",
	[119] = "Ignite Cognition"
}
-- Disease Dot 1 (67+) --
CombatSpellLines.GripOfMori = {
	[67] = "Grip of Mori",
	[91] = "Grip of Zargo",
	[96] = "Grip of Zalikor",
	[101] = "Grip of Jabaum",
	[106] = "Grip of Kraz",
	[111] = "Grip of Zorglim",
	[116] = "Grip of Quietus"
}
-- Disease Dot 2 (66+)--
CombatSpellLines.LongEranonsDecay = {
	[66] = "Chaos Plague",
	[71] = "Severan's Rot",
	[76] = "Eranon's Decay",
	[81] = "Megrima's Decay",
	[86] = "Folasar's Decay",
	[91] = "Ulork's Decay",
	[96] = "Wuran's Decay",
	[101] = "Livianus' Decay",
	[106] = "Mourgis' Decay",
	[111] = "Danvid's Decay",
	[116] = "Fleshrot's Decay"
}
-- Short Disease Dot 2 (89+)--
CombatSpellLines.ShortEranonsDecay = {
	[89] = "Rilfed's Swift Sickness",
	[94] = "Prox's Swift Sickness",
	[99] = "Bora's Swift Sickness",
	[104] = "Ilsaria's Swift Sickness",
	[109] = "Hoshkar's Swift Sickness",
	[114] = "Lairsaf's Swift Sickness",
	[119] = "Diabo Tatrua's Swift Sickness"
}

-- Progressive Abilities (105+) --
CombatSpellLines.Progressive = {
	[101] = 'Dichotomic Paroxysm',
	[106] = 'Dissident Paroxysm',
	[111] = 'Composite Paroxysm',
	[116] = 'Ecliptic Paroxysm'
}
-- Mana Tap (58+) --
CombatSpellLines.MindWrack = {
	[58] = 'Mind Wrack',
	[70] = 'Mind Flay',
	[74] = 'Mind Dissection',
	[79] = 'Mental Vivisection',
	[84] = 'Mind Decomposition',
	[89] = 'Thought Flay',
	[94] = 'Mind Abrasion',
	[99] = 'Mind Strip',
	[104] = 'Mind Extraction',
	[109] = 'Mind Excoriation',
	[114] = 'Mind Erosion',
	[119] = 'Mind Atrophy'
}
-- Swarm Pets (85+) --
CombatSpellLines.SwarmPets = {
	[85] = 'Call Skeleton Swarm',
	[90] = 'Call Skeleton Crush',
	[95] = 'Call Skeleton Host',
	[100] = 'Call Skeleton Throng',
	[105] = 'Call Skeleton Mob',
	[110] = 'Call Skeleton Army',
	[115] = 'Call Skeleton Horde',
	[120] = 'Call Skeleton Mass'
}

-- DD Proc (68+) --
CombatSpellLines.Blood = {
	[68] = 'Call for Blood',
	[75] = 'Demand for Blood',
	[80] = 'Supplication of Blood',
	[85] = 'Exingency for Blood',
	[90] = 'Compel for Blood',
	[95] = 'Provocation for Blood',
	[100] = 'Impel for Blood',
	[105] = 'Impose for Blood',
	[110] = 'Refute for Blood',
	[115] = 'Assert for Blood',
	[120] = 'Proclamation for Blood'
}
-- Tap Over Time 1 (65+)--
CombatSpellLines.DarkLeech = {
	[65] = "Night Stalker",
	[100] = "Dark Leech",
	[110] = "Ashen Leech",
	[115] = "Frozen Leech",
	[120] = "Twilight Leech"
}
-- Tap Over Time 2  (68+) --
CombatSpellLines.LongDynlethsGrasp = {
	[68] = "Fang of Death",
	[72] = "Dyn`leth's Grasp",
	[77] = "Visziaj's Grasp",
	[82] = "Fellid's Grasp",
	[87] = "Arachne's Grasp",
	[92] = "Ivrikdal's Grasp",
	[97] = "Halstor's Grasp",
	[102] = "Plexipharia's Grasp",
	[107] = "Bomoda's Grasp",
	[112] = "Tserrina's Grasp",
	[117] = "The Protector's Grasp"
}
-- Splurt Line (51+) --
CombatSpellLines.NecrotizingWounds = {
	[51] = "Splurt",
	[80] = "Splort",
	[85] = "Splart",
	[90] = "Splirt",
	[95] = "Necrotizing Wounds",
	[100] = "Pernicious Wounds",
	[105] = "Mortiferous Wounds",
	[110] = "Cytotoxic Wounds",
	[115] = "Septic Wounds",
	[120] = "Infected Wounds"
}
-- Long Big Curse Line (67+) --
CombatSpellLines.LongCurseOfMortality = {
	[67] = "Dark Nightmare",
	[70] = "Ancient: Curse of Mori",
	[72] = "Curse of Mortality",
	[77] = "Anathema of Life",
	[82] = "Mortal Coil",
	[87] = "Demise",
	[92] = "Doom",
	[97] = "Termination",
	[102] = "Annihilation",
	[107] = "Inevitable End",
	[112] = "Oblivion",
	[117] = "Extinction"
}
-- Short Big Curse Line (87+) --
CombatSpellLines.ShortCurseOfMortality = {
	[87] = "Ninavero's Swift Deconstruction",
	[92] = "Hral's Swift Deconstruction",
	[97] = "Itkari's Swift Deconstruction",
	[102] = "Marmat's Swift Deconstruction",
	[107] = "Adalora's Swift Deconstruction",
	[112] = "Lexelan's Swift Deconstruction",
	[117] = "Xetheg's Swift Deconstruction"
}
-- Medium Poison Dot (70+) --
CombatSpellLines.VisziajsPallidHaze = {
	[70] = "Chaos Venom",
	[74] = "Vakk`Dra's Sickly Mists",
	[79] = "Visziaj's Pallid Haze",
	[84] = "Fellid's Pallid Haze",
	[89] = "Arachne's Pallid Haze",
	[94] = "Ivrikdal's Pallid Haze",
	[99] = "Halstor's Pallid Haze",
	[104] = "Plexipharia's Pallid Haze",
	[109] = "Bomoda's Pallid Haze",
	[114] = "Dracnia's Pallid Haze",
	[119] = "Zelnithak's Pallid Haze"
}
-- Long Big Poison Dot (69+) --
CombatSpellLines.LongKedgefishVenom = {
	[69] = "Corath Venom",
	[75] = "Kedgefish Venom",
	[80] = "Venonscale Venom",
	[85] = "Slitheren Venom",
	[90] = "Argendev's Venom",
	[95] = "Naeya Venom",
	[100] = "Binaesa Venom",
	[105] = "Glistenwing Venom",
	[110] = "Polybiad Venom",
	[115] = "Crystal Crawler Venom",
	[120] = "Hemorrhagic Venom"
}
-- Short Big Poison Dot (86+) --
CombatSpellLines.ShortKedgefishVenom = {
	[86] = "Burlabis' Swift Venom",
	[91] = "Hyboram's Swift Venom",
	[96] = "Slaunk's Swift Venom",
	[101] = "Serisaria's Swift Venom",
	[106] = "Nexona's Swift Venom",
	[111] = "Vilefang's Swift Venom",
	[116] = "Xenacious' Swift Venom"
}
-- Disease Combo (110+) --
CombatSpellLines.DiseaseCombo = {
	[110] = "Mourgis' Grip of Decay",
	[115] = "Danvid's Grip of Decay",
	[120] = "Fleshrot's Grip of Decay"
}

-- Lifetaps --
CombatSpellLines.Lifetaps = {
	[1] = 'Lifetap',
	[3] = 'Lifespike',
	[12] = 'Lifedraw',
	[20] = 'Siphon Life',
	[26] = 'Spirit Tap',
	[39] = 'Drain Spirit',
	[48] = 'Drain Soul',
	[54] = 'Deflux',
	[59] = 'Touch of Night',
	[60] = 'Trucidation',
	[61] = 'Touch of Mujaki',
	[67] = 'Soulspike',
	[70] = 'Ancient Touch of Orshilak',
	[71] = 'Drain Life',
	[76] = 'Siphon Essence',
	[81] = 'Drain Essence',
	[86] = 'Divert Essence',
	[91] = 'Bleed Essence',
	[96] = 'Plunder Essence',
	[98] = 'Soulrip',
	[101] = 'Hemorrhage Essence',
	[103] = 'Soulrend',
	[106] = 'Consume Essence',
	[108] = 'Soulsiphon',
	[111] = 'Draw Essence',
	[113] = 'Soulgouge',
	[116] = 'Maraud Essence'
}

-- Undead Mez --
CombatSpellLines.UndeadMez = {
	[63] = "Death's Silence",
	[69] = "Dark Hold",
	[73] = 'Rimebone Shackles',
	[78] = 'Riftbone Manacles',
	[83] = 'Voidwhisper Manacles',
	[88] = 'Soulbound Manacles',
	[93] = 'Shadeslither Manacles',
	[98] = 'Deathclutch Manacles',
	[103] = 'Darkwater Manacles',
	[108] = 'Helot Manacles',
	[113] = 'Shadowbone Manacles',
	[118] = 'Penumbra Manacles'

}
-- Living Mez  -- Note under level 83 needs lifeshard but doesn't use it
CombatSpellLines.LivingMez = {
	[22] = 'Screaming Terror',
	[73] = 'Bloodcurdling Shriek',
	[78] = 'Spine-Chilling Shriek', 
	[83] = 'Bone-Rattling Shriek',
	[88] = 'Dismay',
	[93] = 'Dread',
	[98] = 'Foreboding',
	[103] = 'Dreadful Shriek',
	[108] = 'Hair-Raising Shriek',
	[113] = 'Nightmarish Shriek',
	[118] = 'Lunatic Shriek'
}

-- Pet Heals (7+) --
BuffSpellLines.PetHeals = {
	[7] = 'Mend Bones',
	[26] = 'Renew Bones',
	[43] = 'Corporeal Empathy',
	[64] = 'Touch of Death',
	[69] = 'Dark Salve',
	[73] = 'Chilling Renewal',
	[78] = 'Wintry Revival',
	[83] = 'Icy Stitches',
	[88] = 'Gelid Mending',
	[93] = 'Chilled Mending',
	[98] = 'Algid Mending',
	[103] = 'Icy Mending',
	[108] = 'Algid Renewal',
	[113] = 'Icy Revival',
	[114] = 'Frigid Salubrity'
}

return CombatSpellLines, BuffSpellLines


-- Spellbar handling for toggles and such

-- Toggles:
-- Covenant 
-- Mez
-- Pet Rune 
-- Ignite Bones
-- Charm 
-- Root 
-- Scent 
-- Pet Heal 
-- Feign Death

-- Gem Caps:
-- Base: 8
-- Increased to 9 at 55
-- Increased to 10 at 75
-- Increased to 12 at 80
-- Increased to 13 at 106




-- Total Gems free with max toggles per gem count increase
-- Base: 2
-- 55: 3
-- 75: 3
-- 80: 5
-- 106+: 4

-- TODO: Figure out how I can cut down on the amount of spell specific toggles, 
-- I don't think there's enough gems to support all of them while still doing dps
-- TODO: Figure out how to organize the spellbar with each toggle and gem cap increase
-- Living Mez isn't even useful until 88, so I might force disable it until that level. 
-- Maybe have a bool for Enabling Pet Runes, and then have a switch between quick and long pet runes, 
-- freeing up a gem slot for something else - having two at once isn't necessary because by that point Companion's Aegis/Fortification is a thing
-- Scent becomes an AA at some level so that's another toggle moved to AA
-- Only let pet heal be enabled if we're in tank mode
-- Only allow covenant to be enabled if our raid/group has enough necromancers to warant it
-- if charm is enabled, disable pet routines outside watching for breaks/sending it in to attack 
-- don't need pet heals/runes,etc. because charm mobs have stupid amounts of HP
-- at some point, make a chart of what can and can't be used together 