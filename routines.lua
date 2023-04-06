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
----------------------------------------------------------------------------------------------------

function PetRoutines.PetSetup(mode)
	local warriorPet = "Luclin's Conqueror"
	local roguePet = "Unrelenting Assassin"
	if not Aliases.inCombat() and not mq.TLO.Me.Invis() and not Aliases.amIDead() then
		if mq.TLO.Me.Pet() == "NO PET" then
			print("You have no pet! Summoning one.")

			if mode == "Manual Tank" or mode("Auto Tank") then
				print("In Pet Tank mode, loading Warrior Pet Stuff.")
				mq.cmdf('/memspell 8 "%s"', warriorPet)
				while mq.TLO.Me.Gem(8)() ~= warriorPet do
					mq.delay(50)
				end
				mq.cmd('/memspell 7 "Cascading Shadeshield"')
				while mq.TLO.Me.Gem(8)() ~= warriorPet do
					mq.delay(50)
				end
				mq.cmd('/memspell 9 "Frigid Salubrity"')
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
	if mq.TLO.Pet.PctHPs() < 50 then
		print("Stoping casting if we are and healing pet!")
		mq.cmd("/stopcast")
		Aliases.castGem(9)
		Aliases.WaitforCast()
	end
	if mq.TLO.Me.SpellReady(7)() then
		print("Stoping casting if we are and casting rune on pet!")
		mq.cmd("/stopcast")
		Aliases.castGem(7)
		Aliases.WaitforCast()
	end
	if Aliases.AAReady(441) and mq.TLO.Me.CurrentMana() > 7000 then
		mq.cmd("/stopcast")
		Aliases.activateAA(441)
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
		not Aliases.hasBuff("Scent of Terris")
		or not Aliases.hasBuff("Scent of the Grave") and not Aliases.amIDead()
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
			if mq.TLO.Target.Name() ~= nil and  mq.TLO.Target.PctHPs() > config.stopDotsAt then
				if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.BuffCount() > config.minDotsForBurns then
					CombatRoutines.BurnRoutine()
				end
				CombatRoutines.AggroHandler()
				if
					(config.mode == "Manual Tank" or config.mode == "Auto Tank")
					and (dot.name == "Pyre of the Neglected" or dot.name == "Ignite Cognition")
				then
					return
				end
				if mq.TLO.Target.Name() == nil then
					return
				end

				if not Aliases.hasBuff(dot.name) or mq.TLO.Target.Buff(dot.name).Duration.TotalSeconds() < 6 then
					local gem = dot.gem
					if dot.priority > 2 and mq.TLO.Me.SpellReady(10)() then
						if not mq.TLO.Me.Song("Chaotic Power X")() then
							gem = 10
						else
							gem = dot.gem
						end
					elseif dot.priority == 1 then
						gem = dot.gem
						mq.delay(250)
					end

					Aliases.WaitforCast()
					Aliases.castGem(gem)
					mq.delay(100)
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
			mq.cmd("/sit")
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatRoutines.BurnRoutine()
	if config.burnAlways or (Aliases.checkBurnAAs() and Aliases.checkDotCount(config.minDotsForBurns) and Aliases.checkBurnItems()) then
			 if not Aliases.amIDead() and mq.TLO.Target.Name() ~= nil then
				if mq.TLO.Target.PctHPs() > 40 then
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
			 end

	else
		return
	end
end
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
	if config.mode == "Manual" or config.mode == "Manual Tank" then
		return
	end

	if mq.TLO.Group.MainAssist() ~= nil and mq.TLO.Group.MainAssist() ~= mq.TLO.Me.Name() then
		print("We have a main assist but it is not us.")
		if
			mq.TLO.Me.GroupAssistTarget.Distance() < config.campRadius
			and mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and mq.TLO.Me.GroupAssistTarget.LineOfSight()
		then
			mq.cmdf('/mqtarget npc "%s"', mq.TLO.Me.GroupAssistTarget())
			
		end
	elseif mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then -- If we are the main assist though... pick a mob any mob(but only if they're in radius)
		for i = 1, mq.TLO.Me.XTarget() do
			if
				mq.TLO.Me.XTarget(i).Distance() < config.campRadius
				and mq.TLO.Me.XTarget(i).LineOfSight()
				and mq.TLO.Target.Name() == nil
			then
				if mq.TLO.Target.Aggressive() then
					mq.cmdf('/tar "%s"', mq.TLO.Me.XTarget(i).Name())
				end
			end
		end
	end
end

function PrimaryRoutines.CombatHandler()
	while Aliases.inCombat() do
		if mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and not string.find(config.mode, 'Manual') then
			PrimaryRoutines.AssistHandler()
		end
		mq.delay(250)
		if not mq.TLO.Target.LineOfSight() then
			mq.cmd("/squelch /nav target")
			while mq.TLO.Navigation.Active() do
				mq.delay(100)
			end
		end

		CombatRoutines.AggroHandler()
		CombatRoutines.ManaAAHandler()

		mq.delay(1000)
		if not mq.TLO.Pet.Combat() then
			mq.cmd("/pet attack")
		end

		if mq.TLO.Me.PctMana() > config.minDmgSpellManaPct then
			if config.mode == "Manual Tank" or config.mode == "Auto Tank" then
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
function PrimaryRoutines.LoadSpells(set)
	for i = 1, mq.TLO.Me.NumGems() do
		if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(Abilities.Spellbar[i]).RankName() then
			if not Aliases.inCombat() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
				if
					set == "Pet Tank"
					and (
						Abilities.Spellbar[i] == "Pyre of the Neglected"
						or Abilities.Spellbar[i] == "Ignite Cognition"
					)
				then
					return
				else
					printf("memorizing %s", Abilities.Spellbar[i])
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
