local config = {}
-- The furthest out you want to engage a mob
config.maxDistanceToEngage = 100
-- Voidnecro mode, currently only Manual Pet Tank available.
config.mode = "Manual Pet Tank"
-- Minimum Mana % to cast dots, swarm pets,etc.
config.minDmgSpellManaPct = 10
-- Minimum amount of Dots on Mob before we start burns
config.minDotsForBurns = 5
-- Min Mana Pct for Swarm Pets
config.minSwarmPetManaPct = 10

config.minBloodProcManaPct = 10
-- Burn anytime it's availble?
config.burnAlways = false 
-- Wait for all abilities to come up first or just burn as soon as one is ready?
config.waitForAllBurns = true

-- Pet Tank Settings
config.useShortPetRune = true
config.usePetHeal = true
config.petHealPct = 60
config.usePetAegisAA = true
config.useFortificationOnCooldown = true
config.switchPetTargetOnAggro = true

-- Mana Regen Ability Settings
config.useDeathBloomOnCooldown = true
config.useBloodMagicForBurns = true
config.MindWrackManaMax = 60
config.minDeathBloomMana = 40

config.useScent = true

-- Aggro Settings
config.aggroFDPct = 80

return config