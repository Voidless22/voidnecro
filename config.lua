local config = {
-- The furthest out you want to engage a mob
campRadius = 60,
-- Voidnecro mode, currently only Manual Tank available.
Mode = "Chase",
Tank = true,
autoAssist = true,
-- Minimum Mana % to cast dots, swarm pets,etc.
minDmgSpellManaPct = 10,
-- Minimum amount of Dots on Mob before we start burns
minDotsForBurns = 2,
-- Min Mana Pct for Swarm Pets
minSwarmPetManaPct = 10,

stopDotsAt = 30,

useSnareAA = true,
useEradicateAA = true,

minBloodProcManaPct = 10,
-- Burn anytime it's availble?
burnAlways = false, 
-- Wait for all abilities to come up first or just burn as soon as one is ready?
waitForAllBurns = true,

-- Pet Tank Settings
useShortPetRune = true,
usePetHeal = true,
petHealPct = 60,
usePetAegisAA = true,
useFortificationOnCooldown = true,
switchPetTargetOnAggro = true,

-- Mana Regen Ability Settings
useDeathBloomOnCooldown = true,
useBloodMagicForBurns = true,
MindWrackManaMax = 60,
minDeathBloomMana = 40,

useScent = true,

minMobsForCC = 3,
useCC = true,
-- Aggro Settings
aggroFDPct = 80,
assistPct = 99,

chaseDistance = 10
}

return config