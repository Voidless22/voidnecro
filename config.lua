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
useSpellFD = false,

-- CC Settings --
useCC = true,
minMobsForCC = 2,
minMobsForAoeCC = 3,
minCCHP = 99,
useMez = false,
mezType = 'Living',
useRoot = true,
usePunt = true,
useAoECC = true,
useIgniteBones = true,




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
holdBloodMagicForBurns = true,
MindWrackManaMax = 60,
minDeathBloomMana = 40,
minBloodMagicMana = 15,




-- Aggro Settings
useFeign = true,
aggroFDPct = 80,

}

return Config