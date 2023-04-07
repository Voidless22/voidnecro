---@type Mq
local mq = require("mq")
require("abilityDB")
require("aliases")
local config = require("config")
CombatRoutines = {}
PrimaryRoutines = {}
PetRoutines = {}
CombatRoutines.doBurns = false
CombatRoutines.areBurnsReady = nil
CombatRoutines.totalDotsActive = 0
CombatRoutines.totalAbilitiesUp = 0
CombatRoutines.minDotsDone = nil
local burnsActive = false

function CombatRoutines.CCRoutine()
	local totalUndead = 0

	if mq.TLO.Me.XTarget() > config.minMobsForCC then
		for i = 1, mq.TLO.Me.XTarget() do
			if not mq.TLO.Me.XTarget(i).FindBuff("spa root")() then
				if Aliases.AAReady(431) and mq.TLO.Me.XTarget(i).LineOfSight() then
					mq.cmdf('/tar "%s"', mq.TLO.Me.XTarget(i)())
					mq.delay(750)
					Aliases.activateAA(431)
				end
			end
			if mq.TLO.Me.XTarget(i).Body() == "Undead" then
				totalUndead = totalUndead + 1
			end
		end
		if totalUndead > 3 then
			if Aliases.AAReady(903) then
				Aliases.activateAA(903)
			elseif Aliases.AAReady(70) then
				Aliases.activateAA(70)
			end
		end
	end
end

----------------------------------------------------------------------------------------------------

function PetRoutines.PetSetup(mode)
	local warriorPet = "Luclin's Conqueror"
	local roguePet = "Unrelenting Assassin"
	if not Aliases.inCombat() and not mq.TLO.Me.Invis() and not Aliases.amIDead() then
		if mq.TLO.Me.Pet() == "NO PET" then
			print("You have no pet! Summoning one.")

			if config.Tank then
				mq.cmd("/stand")
				print("In Pet Tank mode, loading Warrior Pet Stuff.")
				mq.cmdf('/memspell 8 "%s"', warriorPet)
				while mq.TLO.Me.Gem(8)() ~= warriorPet do
					mq.delay(50)
				end
				mq.cmd('/memspell 7 "Cascading Shadeshield"')
				while mq.TLO.Me.Gem(7)() ~= "Cascading Shadeshield" do
					mq.delay(50)
				end
				mq.cmd('/memspell 9 "Frigid Salubrity"')
				while mq.TLO.Me.Gem(9)() ~= "Frigid Salubrity" do
					mq.delay(50)
				end

				Aliases.WaitforCast(8)
				Aliases.castGem(8)
				Aliases.WaitforCast()
				print("Turning Pet Taunt on since we are in Pet Tank mode.")
				mq.cmd("/pet taunt on")
			else
				print("Not in a tank mode, loading Rogue Pet.")
				mq.cmdf('/memspell 8 "%s"', roguePet)
				while mq.TLO.Me.Gem(8)() ~= roguePet do
					mq.delay(50)
				end
				Aliases.WaitforCast(8)
				Aliases.castGem(8)
				Aliases.WaitforCast()
				print("Turning Pet Taunt off since we aren't in a tank mode.")
				mq.cmd("/pet taunt off")
			end
		end
	end
	if mq.TLO.Me.Pet() ~= "NO PET" and not mq.TLO.Pet.Buff("Sigil of Undeath")() then
		print("Buffing Pet Haste")
		mq.cmd('/memspell 8 "Sigil of Undeath"')
		while mq.TLO.Me.Gem(8)() ~= "Sigil of Undeath" do
			mq.delay(50)
		end
		Aliases.WaitforCast(8)
		Aliases.castGem(8)

		Aliases.WaitforCast(8)
	end

	print("Done with pet setup routine, rememorizing Gem 8 for combat.")
	mq.cmdf('/memspell 8 "%s"', Abilities.Spellbar[8])
end
----------------------------------------------------------------------------------------------------
function PetRoutines.PetTankRoutine()
	if mq.TLO.Me.Pet() == "NO PET" then
		return
	end

	mq.delay(100)
	if
		mq.TLO.Target.Name() == nil
		or Aliases.amIDead()
		or (not Aliases.AAReady(441) and not Aliases.AAReady(3707) and not Aliases.AAReady(766))
	then
		return
	end
	if mq.TLO.Pet.PctHPs() < 50 and config.usePetHeal then
		print("Stoping casting if we are and healing pet!")
		mq.cmd("/stopcast")
		Aliases.castGem(9)
		Aliases.WaitforCast()
	end
	if mq.TLO.Me.SpellReady(7)() and config.useShortPetRune then
		print("Stoping casting if we are and casting rune on pet!")
		mq.cmd("/stopcast")
		Aliases.castGem(7)
		Aliases.WaitforCast()
	end
	if Aliases.AAReady(441) and mq.TLO.Me.CurrentMana() > 7000 and config.usePetAegisAA then
		mq.cmd("/stopcast")
		Aliases.activateAA(441)
		Aliases.WaitforCast()
	end
	if Aliases.AAReady(3707) and config.useFortificationOnCooldown then
		mq.cmd("/stopcast")
		Aliases.activateAA(3707)
		Aliases.WaitforCast()
	end
	if mq.TLO.Target.Named() then
		if Aliases.AAReady(3707) then
			print("NAMED! Activating our long cooldown pet AAs.")
			mq.cmd("/stopcast")
			Aliases.activateAA(3707)
			Aliases.WaitforCast()
		end

		if Aliases.AAReady(766) then
			mq.cmd("/stopcast")
			Aliases.activateAA(766)
			Aliases.WaitforCast()
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatRoutines.DebuffMob()
	if mq.TLO.Target.Name() == nil or mq.TLO.Target.PctHPs() < 20 or Aliases.amIDead() then
		return
	end
	if
		not (Aliases.hasBuff("Scent of Terris") or Aliases.hasBuff("Scent of the Grave"))
		and not Aliases.amIDead()
		and config.useScent
	then
		Aliases.WaitforCast()
		Aliases.activateAA(Abilities["Scent"].AltNumber)
		Aliases.WaitforCast()
	end
end

----------------------------------------------------------------------------------------------------
function CombatRoutines.CheckDots()
	if mq.TLO.Me.PctMana() > config.minDmgSpellManaPct then
		for _, dot in ipairs(Abilities.Dots) do
			if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.PctHPs() > config.stopDotsAt then
				if config.Tank and (dot.name == "Pyre of the Neglected" or dot.name == "Ignite Cognition") then
					return
				end
				if mq.TLO.Target.Name() == nil then
					return
				end

				if
					not (Aliases.hasBuff(dot.name) and mq.TLO.Target.Buff(dot.name).CasterName() == mq.TLO.Me.Name())
					or (
						mq.TLO.Target.Buff(dot.name).Duration.TotalSeconds() < 6
						and mq.TLO.Target.Buff(dot.name).CasterName() == mq.TLO.Me.Name()
					)
				then
					local gem = dot.gem
					if dot.priority > 2 and mq.TLO.Me.SpellReady(10)() then
						if not mq.TLO.Me.Song("Chaotic Power X")() then
							gem = 10
						else
							gem = dot.gem
						end
					elseif dot.priority == 1 then
						gem = dot.gem
					end

					Aliases.WaitforCast()
					Aliases.castGem(gem)
				end
			end
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatRoutines.AggroHandler()
	for i = 1, mq.TLO.Me.XTarget() do
		if mq.TLO.Target.Name() == nil then
			return
		end

		if mq.TLO.Me.XTarget(i).PctAggro() > config.aggroFDPct then
			Aliases.activateAA(428)
			mq.delay(500)
			mq.cmd("/sit")
			mq.cmdf('/tar "%s"', mq.TLO.Pet.Target())
		end
	end
	return
end
----------------------------------------------------------------------------------------------------
function CombatRoutines.BloodProcCheck()
	if mq.TLO.Me.Song("Chaotic Power X")() then
		return
	else
		if mq.TLO.Target.Name() == nil then
			return
		end
		if mq.TLO.Me.PctMana() > config.minBloodProcManaPct then
			Aliases.WaitforCast()
			Aliases.castGem(10)
			Aliases.WaitforCast()
		end
	end
end
----------------------------------------------------------------------------------------------------
function CombatRoutines.SwarmPetHandler()
	if mq.TLO.Target.Name() == nil or Aliases.amIDead() then
		return
	elseif mq.TLO.Me.SpellReady("11")() and mq.TLO.Me.PctMana() > config.minSwarmPetManaPct then
		Aliases.WaitforCast()
		Aliases.castGem(11)
		Aliases.WaitforCast()
	end
end
----------------------------------------------------------------------------------------------------
function CombatRoutines.CheckMindWrack()
	if mq.TLO.Target.Name() == nil or Aliases.amIDead() or mq.TLO.Me.Buff("Mind Atrophy Recourse")() then
		return
	else
		if mq.TLO.Me.SpellReady("12")() then
			Aliases.WaitforCast()
			Aliases.castGem(12)
			mq.delay(100)
			Aliases.WaitforCast()
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatRoutines.BurnRoutine()
	if
		config.waitForAllBurns
		and not (Aliases.checkBurnAAs() and Aliases.checkDotCount(config.minDotsForBurns) and Aliases.checkBurnItems())
	then
		return
	else
		if
			(config.burnAlways or Burnnow)
			and not (Aliases.amIDead() and mq.TLO.Target.Name() == nil and mq.TLO.Target.PctHPs() < 40)
		then
			--- Activate all Burn AAs
			for _, aa in pairs(Abilities.BurnAAs) do
				if Aliases.AAReady(aa) then
					Aliases.activateAA(aa)
					mq.delay(250)
				end
			end
			for _, item in pairs(Abilities.BurnItems) do
				if mq.TLO.Me.ItemReady(item) then
					Aliases.activateItem(item)
					mq.delay(250)
				end
			end
		else
			return
		end
	end
	Burnnow = false
end

function CombatRoutines.ManaAAHandler()
	if
		mq.TLO.Me.PctMana() < config.minDeathBloomMana
		and not config.useDeathBloomOnCooldown
		and not mq.TLO.Me.Buff("Blood Magic")() == nil
	then
		if Aliases.AAReady(7703) then
			Aliases.WaitforCast()
			Aliases.activateAA(7703)
			Aliases.WaitforCast()
		end
	elseif config.useDeathBloomOnCooldown and mq.TLO.Me.Buff("Blood Magic")() == nil then
		if Aliases.AAReady(7703) then
			Aliases.WaitforCast()
			Aliases.activateAA(7703)
			Aliases.WaitforCast()
		end
	end
end

----------------------------------------------------------------------------------------------------

function PrimaryRoutines.AssistHandler()
	if not config.autoAssist then
		return
	end

	if mq.TLO.Group.MainAssist() ~= nil and mq.TLO.Group.MainAssist() ~= mq.TLO.Me.Name() then
		print("We have a main assist but it is not us.")
		if
			mq.TLO.Me.GroupAssistTarget.Distance() < config.campRadius
			and mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget()
			and mq.TLO.Me.GroupAssistTarget.LineOfSight()
		then
			mq.cmdf('/mqtarget npc "%s"', mq.TLO.Me.GroupAssistTarget())
		end
	end
	if mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
		print("Looks like we're main assist, better find a good target.") -- If we are the main assist though... pick a mob any mob(but only if they're in radius)
		for i = 1, mq.TLO.Me.XTarget() do
			if
				mq.TLO.Me.XTarget(i).Aggressive()
				and mq.TLO.Me.XTarget(i).Distance() < config.campRadius
				and (mq.TLO.Me.XTarget(i + 1).Name() == nil or mq.TLO.Me.XTarget(i)())
			then
				if mq.TLO.Target.Name() ~= mq.TLO.Me.XTarget(i).Name() then
					mq.cmdf('/mqtarget npc "%s"', mq.TLO.Me.XTarget(i).Name())
					if mq.TLO.Target.Name() == mq.TLO.Me.XTarget(i).Name() then
						break
					end
				end
			end
		end
	end
end

function PrimaryRoutines.CombatHandler()
	while Aliases.inCombat() and not VNPaused do
		if (mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and config.autoAssist) or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
			PrimaryRoutines.AssistHandler()
		end
		mq.delay(250)

		if mq.TLO.Target.Name() ~= nil then
			if not mq.TLO.Target.LineOfSight() then
				mq.cmd("/squelch /nav target")
				while mq.TLO.Navigation.Active() do
					mq.delay(100)
				end
			end
		end
		if config.useEradicateAA and Aliases.AAReady(547) and mq.TLO.Target.Name() ~= nil then
			if mq.TLO.Target.BuffCount() > 0 then
				for i = 1, mq.TLO.Target.BuffCount() do
					if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Buff(i).SpellType() == "Beneficial" then
						Aliases.WaitforCast()
						Aliases.activateAA(547)
					end
				end
			end
		end

		if config.useSnareAA and Aliases.AAReady(826) and mq.TLO.Target.Name() ~= nil then
			Aliases.WaitforCast()
			Aliases.activateAA(826)
		end
		if config.useCC and mq.TLO.Target.Name() ~= nil then
			CombatRoutines.CCRoutine()
		end
		CombatRoutines.AggroHandler()
		CombatRoutines.ManaAAHandler()

		if mq.TLO.Me.PctMana() < config.MindWrackManaMax and mq.TLO.Target.Name() ~= nil then
			CombatRoutines.CheckMindWrack()
		end

		mq.delay(1000)
		if not mq.TLO.Pet.Combat() and mq.TLO.Target.Name() ~= nil then
			mq.cmd("/pet attack")
		end

		if mq.TLO.Me.PctMana() > config.minDmgSpellManaPct then
			if config.Tank then
				PetRoutines.PetTankRoutine()
			end

			CombatRoutines.DebuffMob()

			if config.burnAlways or Aliases.isNamed then
				CombatRoutines.BurnRoutine()
			end

			CombatRoutines.BloodProcCheck()
			CombatRoutines.SwarmPetHandler()
			CombatRoutines.CheckDots()
		end
	end
end

----------------------------------------------------------------------------------------------------
function PrimaryRoutines.LoadSpells(tankmode)
	for i = 1, mq.TLO.Me.NumGems() do
		if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(Abilities.Spellbar[i]).RankName() then
			if not Aliases.inCombat() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
				if
					tankmode == true
					and (
						Abilities.Spellbar[i] == "Pyre of the Neglected"
						or Abilities.Spellbar[i] == "Ignite Cognition"
					)
				then
					return
				else
					cprint("memorizing %s", Abilities.Spellbar[i])
					mq.cmdf('/memspell %i "%s"', i, Abilities.Spellbar[i])
					mq.delay(200)
					while mq.TLO.Window("SpellBookWnd").Open() do
						mq.delay(50)
					end
				end
			end
		end
	end
end
----------------------------------------------------------------------------------------------------
