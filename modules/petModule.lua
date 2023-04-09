
---@type Mq
local mq = require('mq')





PetModule = {}

function PetModule.PetSetup(mode)
	local warriorPet = "Luclin's Conqueror"
	local roguePet = "Unrelenting Assassin"
	if not MiscModule.inCombat() and not MiscModule.invis() and not MiscModule.amIDead() then
		if mq.TLO.Me.Pet() == "NO PET" then
			print("You have no pet! Summoning one.")

			if Config.Tank then
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

				MiscModule.WaitforCast(8)
				MiscModule.castGem(8)
				MiscModule.WaitforCast()
				print("Turning Pet Taunt on since we are in Pet Tank mode.")
				mq.cmd("/pet taunt on")
			else
				print("Not in a tank mode, loading Rogue Pet.")
				mq.cmdf('/memspell 8 "%s"', roguePet)
				while mq.TLO.Me.Gem(8)() ~= roguePet do
					mq.delay(50)
				end
				MiscModule.WaitforCast(8)
				MiscModule.castGem(8)
				MiscModule.WaitforCast()
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
		MiscModule.WaitforCast(8)
		MiscModule.castGem(8)

		MiscModule.WaitforCast(8)
	end

	print("Done with pet setup routine, rememorizing Gem 8 for combat.")
	mq.cmdf('/memspell 8 "%s"', Abilities.Spellbar[8])
end


----------------------------------------------------------------------------------------------------
function PetModule.PetTankRoutine()
	if mq.TLO.Me.Pet() == "NO PET" then
		return
	end

	mq.delay(100)
	if
		mq.TLO.Target.Name() == nil
		or MiscModule.amIDead()
		or (not MiscModule.AAReady(441) and not MiscModule.AAReady(3707) and not MiscModule.AAReady(766))
	then
		return
	end
	if mq.TLO.Pet.PctHPs() < 50 and Config.usePetHeal then
		print("Stoping casting if we are and healing pet!")
		mq.cmd("/stopcast")
		MiscModule.castGem(9)
		MiscModule.WaitforCast()
	end
	if mq.TLO.Me.SpellReady(7)() and Config.useShortPetRune then
		print("Stoping casting if we are and casting rune on pet!")
		mq.cmd("/stopcast")
		MiscModule.castGem(7)
		MiscModule.WaitforCast()
	end
	if MiscModule.AAReady(441) and mq.TLO.Me.CurrentMana() > 7000 and Config.usePetAegisAA then
		mq.cmd("/stopcast")
		MiscModule.activateAA(441)
		MiscModule.WaitforCast()
	end
	if MiscModule.AAReady(3707) and Config.useFortificationOnCooldown then
		mq.cmd("/stopcast")
		MiscModule.activateAA(3707)
		MiscModule.WaitforCast()
	end
	if mq.TLO.Target.Named() then
		if MiscModule.AAReady(3707) then
			print("NAMED! Activating our long cooldown pet AAs.")
			mq.cmd("/stopcast")
			MiscModule.activateAA(3707)
			MiscModule.WaitforCast()
		end

		if MiscModule.AAReady(766) then
			mq.cmd("/stopcast")
			MiscModule.activateAA(766)
			MiscModule.WaitforCast()
		end
	end
end
