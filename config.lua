local Config = {

Mode = "Chase",
Tank = false,
autoAssist = true,
campRadius = 60,
assistPct = 99,
chaseDistance = 10,
burnAlways = false, 
waitForAllBurns = true,
doMelee = true,


minDmgSpellManaPct = 10,
stopDotsAt = 30,
minDotsForBurns = 2,
minSwarmPetManaPct = 10,
minBloodProcManaPct = 10,

useScent = true,
useSnareAA = true,
useEradicateAA = true,

useCC = true,
minMobsForCC = 3,
-- Burn anytime it's availble?
-- Wait for all abilities to come up first or just burn as soon as one is ready?

-- Pet Tank Settings
usePetAegisAA = true,
useLongPetRune = false,
useShortPetRune = false,
usePetHeal = false,
petHealPct = 60,
useFortificationOnCooldown = true,
switchPetTargetOnAggro = true,

-- Mana Regen Ability Settings
useDeathBloomOnCooldown = true,
useBloodMagicForBurns = true,
MindWrackManaMax = 60,
minDeathBloomMana = 40,




-- Aggro Settings
aggroFDPct = 80,

}

return Config