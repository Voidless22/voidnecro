---@type Mq
local mq = require("mq")
SpellLines = {}
SpellDB = {}
SpellDB[1] = {
	"Sense the Dead",
	"Invisibility Versus Undead",
	"Minor Shielding",
	"Reclaim Energy",
	"Cavorting Bones",
	"Coldlight",
	"Disease Cloud",
	"Lifetap",
	"Locate Corpse",
	"Siphon Strength",
}
SpellDB[2] = {
	"True North",
	"Fear",
	"Numb the Dead",
}
SpellDB[3] = {
	"Endure Cold",
	"Grim Aura",
	"Lifespike",
}
SpellDB[4] = {
	"Clinging Darkness",
	"Poison Bolt",
	"Gate",
	"Leering Corpse",
}
SpellDB[5] = {
	"Deadeye",
	"Shadow Step",
}
SpellDB[6] = {
	"Ward Undead",
	"Dark Empathy",
	"Dark Pact",
}
SpellDB[7] = {
	"Mend Bones",
	"Vampiric Embrace",
	"Gather Shadows",
}
SpellDB[8] = {
	"Lesser Shielding",
	"Bone Walk",
	"Impart Strength",
}
SpellDB[9] = {
	"Leech",
	"Sight Graft",
	"Wave of Enfeeblement",
}
SpellDB[10] = {
	"Scent of Dusk",
	"Spook the Dead",
	"Heat Blood",
}
SpellDB[11] = {
	"Endure Disease",
	"Focus Death",
	"Engulfing Darkness",
}
SpellDB[12] = {
	"Lesser Summon Corpse",
	"Bind Affinity",
	"Convoke Shadow",
	"Lifedraw",
}
SpellDB[13] = {
	"Cure Disease",
	"Heart Flutter",
	"Wuggan's Lesser Appraisal",
	"Reebo's Lesser Exorcism",
}
SpellDB[14] = {
	"Shieldskin",
	"Reebo's Lesser Augury",
	"Wuggan's Lesser Discombobulation",
	"Wuggan's Lesser Extrication",
	"Reebo's Lesser Cleaning",
}
SpellDB[15] = {
	"Banshee Aura",
	"Infectious Cloud",
	"Voice Graft",
	"Cancel Magic",
}
SpellDB[16] = {
	"Shielding",
	"Feign Death",
	"Spirit Armor",
	"Hungry Earth",
	"Restless Bones",
	"Focus Primitive Spellcaster's Empowering Essence",
	"Focus Rudimentary Spellcaster's Empowering Essence",
	"Focus Crude Spellcaster's Empowering Essence",
	"Form of Chilled Bone",
}
SpellDB[17] = {
	"Shadow Compact",
	"Shackle of Bone",
	"Identify",
}
SpellDB[18] = {
	"Dominate Undead",
	"Allure of Death",
	"Track Corpse",
}
SpellDB[19] = {
	"Expulse Undead",
	"Tiny Companion",
	"Shadow Vortex",
}
SpellDB[20] = {
	"Harmshield",
	"Word of Shadow",
	"Animate Dead",
	"Siphon Life",
	"Focus Makeshift Spellcaster's Empowering Essence",
	"Focus Mass Primitive Spellcaster's Empowering Essence",
	"Focus Mass Rudimentary Spellcaster's Empowering Essence",
	"Focus Mass Crude Spellcaster's Empowering Essence",
}
SpellDB[21] = {
	"Scent of Shadow",
	"Rapacious Subvention",
	"Shock of Poison",
	"Breath of the Dead",
}
SpellDB[22] = {
	"Leatherskin",
	"Screaming Terror",
	"Shadow Sight",
}
SpellDB[23] = {
	"Wuggan's Appraisal",
	"Reebo's Exorcism",
	"Rest the Dead",
	"Intensify Death",
}
SpellDB[24] = {
	"Reebo's Augury",
	"Wuggan's Discombobulation",
	"Wuggan's Extrication",
	"Reebo's Cleaning",
	"Haunting Corpse",
	"Resist Cold",
	"Major Shielding",
	"Focus Mass Makeshift Spellcaster's Empowering Essence",
}
SpellDB[25] = {
	"Panic the Dead",
}
SpellDB[26] = {
	"Renew Bones",
	"Spirit Tap",
}
SpellDB[27] = {
	"Eternities Torment",
	"Word of Spirit",
	"Dooming Darkness",
}
SpellDB[28] = {
	"Dismiss Undead",
	"Boil Blood",
}
SpellDB[29] = {
	"Summon Dead",
	"Vampiric Curse",
}
SpellDB[30] = {
	"Invoke Fear",
	"Focus Elementary Spellcaster's Empowering Essence",
}
SpellDB[31] = {
	"Beguile Undead",
	"Resist Disease",
	"Call of Bones",
}
SpellDB[32] = {
	"Torbas' Acid Blast",
	"Steelskin",
	"Surge of Enfeeblement",
}
SpellDB[33] = {
	"Wuggan's Greater Appraisal",
	"Reebo's Greater Exorcism",
	"Invoke Shadow",
	"Greater Shielding",
}
SpellDB[34] = {
	"Root",
	"Reebo's Greater Augury",
	"Wuggan's Greater Discombobulation",
	"Reebo's Greater Cleansing",
	"Venom of the Snake",
	"Focus Mass Elementary Spellcaster's Empowering Essence",
}
SpellDB[35] = {
	"Summon Corpse",
	"Scourge",
	"Augment Death",
}
SpellDB[36] = {
	"Chilling Embrace",
	"Word of Souls",
	"Counteract Disease",
}
SpellDB[37] = {
	"Scent of Darkness",
	"Nullify Magic",
}
SpellDB[38] = {
	"Shackle of Spirit",
	"Expel Undead",
}
SpellDB[39] = {
	"Dark Soul",
	"Malignant Dead",
	"Drain Spirit",
}
SpellDB[40] = {
	"Summon Companion",
	"Asystole",
	"Focus Modest Spellcaster's Empowering Essence",
}
SpellDB[41] = {
	"Dead Man Floating",
	"Arch Shielding",
}
SpellDB[42] = {
	"Incinerate Bones",
	"Ignite Bones",
}
SpellDB[43] = {
	"Corporeal Empathy",
	"Covetous Subversion",
	"Diamondskin",
}
SpellDB[44] = {
	"Bounce",
	"Cackling Bones",
	"Pact of Shadow",
	"Focus Mass Modest Spellcaster's Empowering Essence",
	"Form of Bleached Bone",
}
SpellDB[45] = {
	"Dead Men Floating",
	"Auspice",
}
SpellDB[46] = {
	"Banish Undead",
	"Paralyzing Earth",
	"Insidious Retrogression",
}
SpellDB[47] = {
	"Cajole Undead",
	"Cascading Darkness",
	"Ignite Blood",
}
SpellDB[48] = {
	"Invoke Death",
	"Drain Soul",
	"Lich",
}
SpellDB[49] = {
	"Torbas' Poison Blast",
	"Ward of Calliav",
	"Bond of Death",
}
SpellDB[50] = {
	"Improved Invisibility to Undead",
	"Envenomed Bolt",
	"Focus SImple Spellcaster's Empowering Essence",
}
SpellDB[51] = {
	"Dread of Night",
	"Splurt",
	"Sacrifice",
}
SpellDB[52] = {
	"Manaskin",
	"Defoliation",
	"Scent of Terris",
	"Degeneration",
	"Plague",
	"Comatose",
}
SpellDB[53] = {
	"Instill",
	"Annul Magic",
	"Minion of Shadows",
	"Convergence",
}
SpellDB[54] = {
	"Shield of the Magi",
	"Deflux",
	"Thrall of Bones",
	"Shadowbond",
	"Succession of Shadows",
	"Torbas' Venom Blast",
	"Imprecation",
	"Focus Simple Spellcaster's Empowering Essence",
}
SpellDB[55] = {
	"Augmentation of Death",
	"Chill Bones",
	"Skin of the Shadow",
	"Levant",
	"Infusion",
	"Conglaciation of Bone",
	"Focus Spellcaster's Empowering Essence",
	"Dark Rune",
}
SpellDB[56] = {
	"Trepidation",
	"Demi Lich",
	"Cessation of Cor",
	"Servant of Bones",
	"Sedulous Subversion",
	"Crippling Claudication",
	"Eidolon Voice",
	"Form of Mottled Bone",
}
SpellDB[57] = {
	"Exile Undead",
	"Vexing Modinia",
	"Conjure Corpse",
	"Imbue Nightmare",
	"Unholy Voice",
}
SpellDB[58] = {
	"Immobilize",
	"Quivering Veil of Xarn",
	"Pyrocruor",
	"Mind Wrack",
	"Imbue Disease",
	"Imbue Torment",
	"Guard of Calliav",
	"Reflect",
}
SpellDB[59] = {
	"Touch of Night",
	"Devouring Darkness",
	"Emissary of Thule",
	"Focus Mass Spellcaster's Empowering Essence",
}
SpellDB[60] = {
	"Gangrenous Touch of Zum'uul",
	"Arch Lich",
	"Death Peace",
	"Banishment of Shadows",
	"Enslave Death",
	"Trucidation",
	"Ancient Master of Death",
	"Ancient Lifebane",
	"Zevfeer's Theft of Vitae",
	"Funeral Pyre of Kelador",
	"Focus Refined Spellcaster's Empowering Essence",
}
SpellDB[61] = {
	"Touch of Mujaki",
	"Neurotoxin",
	"Shield of the Arcane",
	"Legacy of Zek",
	"Dark Plague",
	"Soul Orb",
	"Eidolon Bellow",
}
SpellDB[62] = {
	"Petrifying Earth",
	"Rune of Death",
	"Saryrn's Kiss",
	"Unholy Bellow",
}
SpellDB[63] = {
	"Greater Immobilize",
	"Force Shield",
	"Death's Silence",
	"Embracing Darkness",
	"Saryrn's Companion",
	"Horror",
}
SpellDB[64] = {
	"Shield of Maelin",
	"Seduction of Saryrn",
	"Touch of Death",
	"Protection of Calliav",
	"Focus Mass Refined Spellcaster's Empowering Essence",
}
SpellDB[65] = {
	"Blood of Thule",
	"Child of Bertoxxulous",
	"Word of Terris",
	"Destroy Undead",
	"Night Stalker",
	"Night Fire",
	"Night's Beckon",
	"Ancient Seduction of Chaos",
	"Focus Intricate Spellcaster's Empowering Essence",
}
SpellDB[66] = {
	"Eradicate Disease",
	"Acikin",
	"Shadow Guard",
	"Chaos Plague",
	"Eidolon Howl",
}
SpellDB[67] = {
	"Soulspike",
	"Grip of Mori",
	"Glyph of Darkness",
	"Lost Soul",
	"Dark Nightmare",
	"Unholy Howl",
}
SpellDB[68] = {
	"Fang of Death",
	"Scent of Midnight",
	"Desecrating Darkness",
	"Shadow of Death",
	"Call for Blood",
}
-- nice
SpellDB[69] = {
	"Dull Pain",
	"Dark Hold",
	"Dark Salve",
	"Bulwark of Calliav",
	"Pyre of Mori",
	"Shadow Orb",
	"Focus Mass Intricate Spellcaster's Empowering Essence",
	"Corath Venom",
}

SpellDB[70] = {
	"Chaos Venom",
	"Dark Possession",
	"Dark Assassin",
	"Word of Chaos",
	"Desolate Undead",
	"Ancient Curse of Mori",
	"Ancient Touch of Orshilak",
	"Focus Elaborate Spellcaster's Empowering Essence",
	"Dread Pyre",
	"Grave Pact",
	"Mind Flay",
	"Death Rune",
}
SpellDB[71] = {
	"Exhumer's Call",
	"Venin",
	"Shield of Darkness",
	"Severan's Rot",
	"Drink of Vitae",
	"Drain Life",
	"Umbra Orb",
}
SpellDB[72] = {
	"Sigil of the Unnatural",
	"Curse of Mortality",
	"Dyn'leth's Grasp",
	"Scent of Twilight",
	"Bonestitch Fetish",
	"Form of Restless Spirits",
}
SpellDB[73] = {
	"Bloodcurdling Shriek",
	"Spectral Guard",
	"Wraithskin",
	"Rimebone Shackles",
	"Chilling Renewal",
	"Pyre of the Fallen",
}
SpellDB[74] = {
	"Coruscating Darkness",
	"Ashengate Pyre",
	"Wilting Foliage",
	"Vakk'dra's Sickly Mists",
	"Otherside",
	"Aegis of Calliav",
	"Mind Dissection",
	"Focus Mass Elaborate Spellcaster's Empowering Essence",
}
SpellDB[75] = {
	"Demand For Blood",
	"Putrescent Servant",
	"Vakk'dra's Command",
	"Annihilate Undead",
	"Kedgefish Venom",
	"Focus Ornate Spellcaster's Empowering Essence",
	"Form of Rotting Flesh",
}
SpellDB[76] = {
	"Procure Corpse",
	"Ruinous Venin",
	"Bulwark of Shadows",
	"Eranon's Decay",
	"Siphon Essence",
	"Phantasmal Orb",
}
SpellDB[77] = {
	"Sigil of the Aberrant",
	"Relamar's Shade",
	"Anathema of Life",
	"Visziaj's Grasp",
	"Scent of Afterlight",
	"Bonestitch Charm",
	"Putrefaction",
}
SpellDB[78] = {
	"Spine-Chilling Shriek",
	"Spectral Ward",
	"Shadowskin",
	"Riftbone Manacles",
	"Wintry Revival",
	"Pyre of the Lifeless",
}
SpellDB[79] = {
	"Auroral Darkness",
	"Visziaj's Pallid Haze",
	"Spectralside",
	"Aegis of Kildrukaun",
	"Mental Vivisection",
	"Reaver's Pyre",
	"Focus Mass Ornate Spellcaster's Empowering Essence",
}
SpellDB[80] = {
	"Supplication of Blood",
	"Noxious Servant",
	"Visziaj's Command",
	"Venonscale Venom",
	"Splort",
	"Searing Shadow",
	"Focus Runed Spellcaster's Empowering Essence",
}
SpellDB[81] = {
	"Shield of the Void",
	"Reaper's Call",
	"Withering Venin",
	"Megrima's Decay",
	"Drain Essence",
	"	Finsternacht Orb",
}
SpellDB[82] = {
	"Bloodreaper's Shade",
	"Mortal Coil",
	"Fellid's Grasp",
	"Scent of Gloom",
	"Bonestitch Effigy",
	"Putrescence",
}
SpellDB[83] = {
	"Bone-Rattling Shriek",
	"Corpseskin",
	"Voidwhisper Manacles",
	"Icy Stitches",
	"Pyre of the Forgotten",
	"Withering Decay",
	"Bestow Undeath",
}
SpellDB[84] = {
	"Clawing Darkness",
	"Fellid's Pallid Haze",
	"Netherside",
	"Mind Decomposition",
	"Soul Reaper's Pyre",
	"Ignite Energy",
	"Necrotic Pustules",
	"Focus Mass Runed Spellcaster's Empowering Essence",
}
SpellDB[85] = {
	"Exigency for Blood",
	"Unliving Murderer",
	"Fellid's Command",
	"Slitheren Venom",
	"Splart",
	"Scorching Shadow",
	"Necrotize Ally",
	"Call Skeleton Swarm",
}
SpellDB[86] = {
	"Reaper's Beckon",
	"Shield of Dreams",
	"Blighted Venin",
	"Divert Essence",
	"Dunkelnacht Orb",
	"Folasar's Decay",
	"Burlabis' Swift Venom",
}
SpellDB[87] = {
	"Arachne's Grasp",
	"Aziad's Shade",
	"Bonestitch Manikin",
	"Cascading Deathshield",
	"Demise",
	"Fetidity",
	"Ninavero's Swift Deconstruction",
	"Scent of Doom",
	"Sigil of the Moribund",
}
SpellDB[88] = {
	"Bestow Unlife",
	"Dismay",
	"Gelid Mending",
	"Grimskin",
	"Soulbound Manacles",
	"Tenak's Flashblaze",
	"Pyre of the Bereft",
	"Sphere of Blight",
}
SpellDB[89] = {
	"Arachne's Pallid Haze",
	"Darkside",
	"Necrotic Boils",
	"Pyre of Nos",
	"Rilfed's Swift Sickness",
	"Scrapegoat",
	"Tenuous Darkness",
	"Thoughtburn",
	"Thought Flay",
}
SpellDB[90] = {
	"Arachne's Command",
	"Argendev's Venom",
	"Blistering Shadow",
	"Call Skeleton Crush",
	"Compel for Blood",
	"Energize Ally",
	"Ninavero's Swift Lifedraw",
	"Raised Assassin",
	"Scorch Bones",
	"Splirt",
}
SpellDB[91] = {
	"Reaper's Decree",
	"Shield of Bronze",
	"Decaying Venin",
	"Bleed Essence",
	"Dusternacht Orb",
	"Ulork's Decay",
	"Grip of Zargo",
	"Hyboram's Swift Venom",
	"Quivering Veil of Fal'Kaa",
}
SpellDB[92] = {
	"Ivrikdal's Grasp",
	"Vak'Ridel's Shade",
	"Bonemeld Fetish",
	"Cascading Bloodshield",
	"Doom",
	"Moritifcation",
	"Hral's Swift Deconstruction",
	"Scent of Nightfall",
	"Sigil of the Preternatural",
}
SpellDB[93] = {
	"Bestow Decay",
	"Chaotic Contagion",
	"Dread",
	"Chilled Mending",
	"Ghoulskin",
	"Shadeslither Manacles",
	"Brimtav's Flashblaze",
	"Pyre of the Piq'a",
	"Sphere of Withering",
}
SpellDB[94] = {
	"Ivrikdal's Pallid Haze",
	"Shadowside",
	"Necrotic Sores",
	"Pyre of Hazarak",
	"Prox's Swift Sickness",
	"Unwitting Sacrifice",
	"Viscous Darkness",
	"Ignite Potential",
	"Mind Abrasion",
}
SpellDB[95] = {
	"Ivrikdal's Command",
	"Naeya Venom",
	"Blazing Shadow",
	"Call Skeleton Host",
	"Provocation for Blood",
	"Empower Ally",
	"Hral's Swift Lifedraw",
	"Reborn Assassin",
	"Coruscate Bones",
	"Necrotizing Wounds",
}
SpellDB[96] = {
	"Reaper's Proclamation",
	"Shield of the Dauntless",
	"Dissolving Venin",
	"Plunder Essence",
	"Vollmondnacht Orb",
	"Wuran's Decay",
	"Grip of Zalikor",
	"Slaunk's Swift Venom",
	"Crippling Incapacity",
	"Pact of Fate",
}
SpellDB[97] = {
	"Halstor's Grasp",
	"Zalifur's Shade",
	"Bonefuse Fetish",
	"Termination",
	"Dissolution",
	"Itkari's Swift Deconstruction",
	"Scent of Dread",
	"Sigil of the Sundered",
	"Cascading Boneshield",
	"Shield of Fate",
	"Scourge of Fates",
}
SpellDB[98] = {
	"Shackle",
	"Bestow Mortality",
	"Chaotic Corruption",
	"Foreboding",
	"Algid Mending",
	"Zombieskin",
	"Deathclutch Manacles",
	"Osalur's Flashblaze",
	"Pyre of the Forsaken",
	"Sphere of Dissolution",
	"Phantasmal Ward",
	"Mirror",
	"Soulrip",
}
SpellDB[99] = {
	"Halstor's Pallid Haze",
	"Forsakenside",
	"Necrotic Cysts",
	"Pyre of Marnek",
	"Bora's Swift Sickness",
	"Conscripted Sacrifice",
	"Clutching Darkness",
	"Ignite Thoughts",
	"Mind Strip",
	"Aegis of Nefori",
	"Flesh to Poison",
}
SpellDB[100] = {
	"Halstor's Command",
	"Binaesa Venom",
	"Coruscating Shadow",
	"Call Skeleton Throng",
	"Impel for Blood",
	"Sanction Ally",
	"Itkari's Swift Lifedraw",
	"Unearthed Assassin",
	"Scintillate Bones",
	"Pernicious Wounds",
	"Binding of Itkari",
	"Dark Leech",
}
SpellDB[101] = {
	"Stormreaper's Proclamation",
	"Shield of the Pellarus",
	"Liquefying Venin",
	"Hemorrhage Essence",
	"Livianus' Decay",
	"Grip of Jabaum",
	"Serisaria's Swift Venom",
	"Dichotomic Paroxsym",
	"Pact of Destiny",
}
SpellDB[102] = {
	"Shield of Consequence",
	"Plexipharia's Grasp",
	"Miktokla's Shade",
	"Annihilation",
	"Liquefaction",
	"Marmat's Swit Deconstruction",
	"Sigil of the Doomscale",
	"Cascading Doomshield",
	"Malevolent Alliance",
}
SpellDB[103] = {
	"Bestow Doom",
	"Chaotic Liquefaction",
	"Dreadful Shriek",
	"Icy Mending",
	"Deadskin",
	"Darkwater Manacles",
	"Mazub's Flashblaze",
	"Pyre of the Lost",
	"Soulrend",
	"Echo of Dissolution",
}
SpellDB[104] = {
	"Aegis of Japac",
	"Plexipharia's Pallid Haze",
	"Forgottenside",
	"Pyre of Jorobb",
	"Ilsaria's Swift Sickness",
	"Grasping Darkness",
	"Ignite Synapses",
	"Mind Extraction",
	"Livianus' Grip of Decay",
	"Remote Sphere of Decay",
}
SpellDB[105] = {
	"Plexipharia's Command",
	"Glistenwing Venom",
	"Call Skeleton Mob",
	"Impose for Blood",
	"Imbue Ally",
	"Marmat's Swift Lifedraw",
	"Revived Assassin",
	"Combust Bones",
	"Mortiferous Wounds",
	"Smouldering Shadow",
}
SpellDB[106] = {
	"Shadereaper's Proclamation",
	"Shield of Scales",
	"Crippling Paraplegia",
	"Effluvial Venin",
	"Consume Essence",
	"Mourgis' Decay",
	"Grip of Kraz",
	"Nexona's Swift Venom",
	"Dissident Paroxysm",
}
SpellDB[107] = {
	"Shield of Order",
	"Scent of Extinction",
	"Bomoda's Grasp",
	"Adalora's Shade",
	"Inevitable End",
	"Effluvium",
	"Adalora's Swift Deconstruction",
	"Sigil of the Arcron",
	"Cascading Deathshield",
	"Malevolent Covenant",
}
SpellDB[108] = {
	"Bestow Relife",
	"Chaotic Effluvium",
	"Hair-Raising Shriek",
	"Algid Renewal",
	"Ashen Skin",
	"Helot Manacles",
	"Azeron's Flashblaze",
	"Pyre of the Fereth",
	"Soulsiphon",
	"Scourge of Destiny",
}
SpellDB[109] = {
	"Aegis of Zeklor",
	"Flesh to Venom",
	"Bomoda's Pallid Haze",
	"Contraside",
	"Pyre of the Shadewarden",
	"Hoshkar's Swift Sickness",
	"Gnawing Darkness",
	"Ignite Memories",
	"Mind Excoriation",
	"Remote Sphere of Blight",
}
SpellDB[110] = {
	"Binding of Mourgis",
	"Ashen Leech",
	"Bomoda's Command",
	"Polybiad Venom",
	"Call Skeleton Army",
	"Refute for Blood",
	"Infuse Ally",
	"Adalora's Swift Lifedraw",
	"Reliving Assassin",
	"Burn Bones",
	"Cytotoxic Wounds",
	"Burning Shadow",
	"Mourgis' Grip of Decay",
}
SpellDB[111] = {
	"Duskreaper's Proclamation",
	"Shield of Restless Ice",
	"Searing Venin",
	"Draw Essence",
	"Danvid's Decay",
	"Grip of Zorglim",
	"Vilefang's Swift Venom",
	"Quivering Veil of Neemzaq",
	"Composite Paroxysm",
}
SpellDB[112] = {
	"Shield of Destiny",
	"Scent of Mortality",
	"Tserrina's Grasp",
	"Oblivion",
	"Miasma",
	"Lexelan's Swift Deconstruction",
	"Sigil of Decay",
	"Cascading Dreadshield",
	"Tserrina's Shade",
}
SpellDB[113] = {
	"Bestow Dread",
	"Chaotic Miasma",
	"Nightmarish Shriek",
	"Icy Revival",
	"Frozen Skin",
	"Shadowbone Manacles",
	"Otatomik's Flashblaze",
	"Pyre of the Wretched",
	"Soulgouge",
	"Remote Sphere of Withering",
}
SpellDB[114] = {
	"Aegis of Orfur",
	"Dracnia's Pallid Haze",
	"Gloomside",
	"Pyre of Klraggek",
	"Lairsaf's Swift Sickness",
	"Tormenting Darkness",
	"Ignite Intellect",
	"Mind Erosion",
	"Malevolent Coalition",
}
SpellDB[115] = {
	"Frozen Leech",
	"Tserrina's Command",
	"Crystal Crawler Venom",
	"Call Skeleton Horde",
	"Assert for Blood",
	"Incite Ally",
	"Tserrina's Swift Lifedraw",
	"Char Bones",
	"Septic Wounds",
	"Broiling Shadow",
	"Restless Assassin",
	"Danvid's Grip of Decay",
}
SpellDB[116] = {
	"Thanatos' Proclamation",
	"Embalming Venin",
	"Fleshrot's Decay",
	"Maraud Essence",
	"Xenacious' Swift Venom",
	"Grip of Quietus",
	"Shield of Shadow",
	"Ecliptic Paroxysm",
}
SpellDB[117] = {
	"Shield of Inevitability",
	"Luclin's Conqueror",
	"Cascading Shadeshield",
	"Xetheg's Swift Deconstruction",
	"Sigil of Undeath",
	"Extinction",
	"The Protector's Grasp",
	"Scent of the Grave",
	"Decomposition",
	"Malevolent Conjunction",
}
SpellDB[118] = {
	"Lunatic Shriek",
	"Carrion Skin",
	"Penumbra Manacles",
	"Frigid Salubrity",
	"Pyre of the Neglected",
	"Chaotic Acridness",
	"Bestow Rot",
	"Thall Va Kelun's Flashblaze",
	"Soulflay",
	"Remote Sphere of Rot",
}
SpellDB[119] = {
	"Aegis of Rumblecrush",
	"Diabo Tatrua's Swift Sickness",
	"Zelnithak's Pallid Haze",
	"Lunaside",
	"Mind Atrophy",
	"Pyre of Va Xakra",
	"Harrowing Darkness",
	"Ignite Cognition",
	"Flesh to Toxin",
}
SpellDB[120] = {
	"Unrelenting Assassin",
	"Mistmoore's Command",
	"Hemorrhagic Venom",
	"Scalding Shadow",
	"Inspire Ally",
	"Call Skeleton Mass",
	"Xenacious' Swift Lifedraw",
	"Cremate Bones",
	"Proclamation for Blood",
	"Infected Wounds",
	"Twilight Leech",
	"Fleshrot's Grip of Decay",
}

-------------------------------------------------------------
SpellLines.LongDreadPyre = {
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
SpellLines.LongPyreOfMori = {
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
SpellLines.ShortPyreOfMori = {
	[88] = "Tenak's Flashblaze",
	[93] = "Brimtav's Flashblaze",
	[98] = "Osalur's Flashblaze",
	[103] = "Mazub's Flashblaze",
	[108] = "Azeron's Flashblaze",
	[113] = "Otatomik's Flashblaze",
	[118] = "Thall Va Kelun's Flashblaze",
}
SpellLines.SearingShadow = {
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
SpellLines.Ignite = {
	[84] = "Ignite Energy",
	[89] = "Thoughtburn",
	[94] = "Ignite Potential",
	[99] = "Ignite Thoughts",
	[104] = "Ignite Synapses",
	[109] = "Ignite Memories",
	[114] = "Ignite Intellect",
	[119] = "Ignite Cognition",
}
SpellLines.GripOfMori = {
	[67] = "Grip of Mori",
	[91] = "Grip of Zargo",
	[96] = "Grip of Zalikor",
	[101] = "Grip of Jabaum",
	[106] = "Grip of Kraz",
	[111] = "Grip of Zorglim",
	[116] = "Grip of Quietus",
}
SpellLines.LongEranonsDecay = {
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

SpellLines.ShortEranonsDecay = {
	[89] = "Rilfed's Swift Sickness",
	[94] = "Prox's Swift Sickness",
	[99] = "Bora's Swift Sickness",
	[104] = "Ilsaria's Swift Sickness",
	[109] = "Hoshkar's Swift Sickness",
	[114] = "Lairsaf's Swift Sickness",
	[119] = "Diabo Tatrua's Swift Sickness",
}

SpellLines.Corruption = {}

SpellLines.DarkLeech = {
	[65] = "Night Stalker",
	[100] = "Dark Leech",
	[110] = "Ashen Leech",
	[115] = "Frozen Leech",
	[120] = "Twilight Leech",
}

SpellLines.LongDynlethsGrasp = {
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

SpellLines.NecrotizingWounds = {
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

SpellLines.LongCurseOfMortality = {
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
SpellLines.ShortCurseOfMortality = {
	[87] = "Ninavero's Swift Deconstruction",
	[92] = "Hral's Swift Deconstruction",
	[97] = "Itkari's Swift Deconstruction",
	[102] = "Marmat's Swift Deconstruction",
	[107] = "Adalora's Swift Deconstruction",
	[112] = "Lexelan's Swift Deconstruction",
	[117] = "Xetheg's Swift Deconstruction",
}

SpellLines.VisziajsPallidHaze = {
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

SpellLines.LongKedgefishVenom = {
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

SpellLines.ShortKedgefishVenom = {
	[86] = "Burlabis' Swift Venom",
	[91] = "Hyboram's Swift Venom",
	[96] = "Slaunk's Swift Venom",
	[101] = "Serisaria's Swift Venom",
	[106] = "Nexona's Swift Venom",
	[111] = "Vilefang's Swift Venom",
	[116] = "Xenacious' Swift Venom",
}

SpellLines.DiseaseCombo = {
    [110] = "Mourgis' Grip of Decay",
    [115] = "Danvid's Grip of Decay",
    [120] = "Fleshrot's Grip of Decay"
}

return SpellLines, SpellDB
