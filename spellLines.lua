---@type Mq
local mq = require('mq')
require('spellDB')

CombatSpellLines = {}

BuffSpellLines = {}
-------------------------------------------------------------
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
	[119] = "Pyre of Va Xakra",
}
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
	[118] = "Pyre of the Neglected",
}
CombatSpellLines.ShortPyreOfMori = {
	[88] = "Tenak's Flashblaze",
	[93] = "Brimtav's Flashblaze",
	[98] = "Osalur's Flashblaze",
	[103] = "Mazub's Flashblaze",
	[108] = "Azeron's Flashblaze",
	[113] = "Otatomik's Flashblaze",
	[118] = "Thall Va Kelun's Flashblaze",
}
CombatSpellLines.SearingShadow = {
	[80] = "Searing Shadow",
	[85] = "Scorching Shadow",
	[90] = "Blistering Shadow",
	[95] = "Blazing Shadow",
	[100] = "Coruscating Shadow",
	[105] = "Smouldering Shadow",
	[110] = "Burning Shadow",
	[115] = "Broiling Shadow",
	[120] = "Scalding Shadow",
}
CombatSpellLines.Ignite = {
	[84] = "Ignite Energy",
	[89] = "Thoughtburn",
	[94] = "Ignite Potential",
	[99] = "Ignite Thoughts",
	[104] = "Ignite Synapses",
	[109] = "Ignite Memories",
	[114] = "Ignite Intellect",
	[119] = "Ignite Cognition",
}
CombatSpellLines.GripOfMori = {
	[67] = "Grip of Mori",
	[91] = "Grip of Zargo",
	[96] = "Grip of Zalikor",
	[101] = "Grip of Jabaum",
	[106] = "Grip of Kraz",
	[111] = "Grip of Zorglim",
	[116] = "Grip of Quietus",
}
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
	[116] = "Fleshrot's Decay",
}

CombatSpellLines.ShortEranonsDecay = {
	[89] = "Rilfed's Swift Sickness",
	[94] = "Prox's Swift Sickness",
	[99] = "Bora's Swift Sickness",
	[104] = "Ilsaria's Swift Sickness",
	[109] = "Hoshkar's Swift Sickness",
	[114] = "Lairsaf's Swift Sickness",
	[119] = "Diabo Tatrua's Swift Sickness",
}

CombatSpellLines.Corruption = {}

CombatSpellLines.Progressive = {
    [101] = 'Dichotomic Paroxysm',
    [106] = 'Dissident Paroxysm',
    [111] = 'Composite Paroxysm',
    [116] = 'Ecliptic Paroxysm'
}

CombatSpellLines.MindWrack = {
	[58]= 'Mind Wrack',
	[70]= 'Mind Flay',
	[74]= 'Mind Dissection',
	[79]= 'Mental Vivisection',
	[84]= 'Mind Decomposition',
	[89]= 'Thought Flay',
	[94]= 'Mind Abrasion',
	[99]= 'Mind Strip',
	[104]= 'Mind Extraction',
	[109]= 'Mind Excoriation',
	[114]= 'Mind Erosion',
	[119]= 'Mind Atrophy'

}

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

CombatSpellLines.Blood = {
[68] = 'Call for Blood',
[75] = 'Demand for Blood',
[80] = 'Supplication of Blood',
[85] = 'Exingency for Blood',
[90] = 'Compel for Blood',
[95] = 'Provocation for Blood',
[100] = 'Impel for Blood',
[105] ='Impose for Blood',
[110] = 'Refute for Blood',
[115] = 'Assert for Blood',
[120] = 'Proclamation for Blood'
}
CombatSpellLines.DarkLeech = {
	[65] = "Night Stalker",
	[100] = "Dark Leech",
	[110] = "Ashen Leech",
	[115] = "Frozen Leech",
	[120] = "Twilight Leech",
}

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
	[117] = "The Protector's Grasp",
}

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
	[120] = "Infected Wounds",
}

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
	[117] = "Extinction",
}
CombatSpellLines.ShortCurseOfMortality = {
	[87] = "Ninavero's Swift Deconstruction",
	[92] = "Hral's Swift Deconstruction",
	[97] = "Itkari's Swift Deconstruction",
	[102] = "Marmat's Swift Deconstruction",
	[107] = "Adalora's Swift Deconstruction",
	[112] = "Lexelan's Swift Deconstruction",
	[117] = "Xetheg's Swift Deconstruction",
}

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
	[119] = "Zelnithak's Pallid Haze",
}

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
	[120] = "Hemorrhagic Venom",
}

CombatSpellLines.ShortKedgefishVenom = {
	[86] = "Burlabis' Swift Venom",
	[91] = "Hyboram's Swift Venom",
	[96] = "Slaunk's Swift Venom",
	[101] = "Serisaria's Swift Venom",
	[106] = "Nexona's Swift Venom",
	[111] = "Vilefang's Swift Venom",
	[116] = "Xenacious' Swift Venom",
}

CombatSpellLines.DiseaseCombo = {
    [110] = "Mourgis' Grip of Decay",
    [115] = "Danvid's Grip of Decay",
    [120] = "Fleshrot's Grip of Decay"
}


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