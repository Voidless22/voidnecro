---@type Mq
local mq = require('mq')

local Config = require('config')


PetModule = {}


PetModule.NoReagent = false


function PetModule.PetSetup(mode)
	local isMemorized = false
	local petGem
	if not MiscModule.inCombat() and not MiscModule.invis() and not MiscModule.amIDead() then
		if mq.TLO.Me.Pet() == "NO PET" and not PetModule.NoReagent then
			while mq.TLO.Me.Pet() == "NO PET" do
				for i = 1, mq.TLO.Me.NumGems() do
					if mq.TLO.Me.Gem(i).Name() == AbilitySet.warriorPet then
						isMemorized = true
						petGem = i
					end
				end
				if isMemorized then
					mq.cmdf('/tar %s', mq.TLO.Me.Name())
					mq.delay(100)
					MiscModule.WaitforCast()
					MiscModule.castGem(petGem)
					MiscModule.WaitforCast()
				else
					mq.cmdf('/memspell 8 "%s"', AbilitySet.warriorPet)
					while mq.TLO.Me.Gem(8).Name() ~= mq.TLO.Spell(AbilitySet.warriorPet).RankName() do mq.delay(100) end
					MiscModule.WaitforCast()
					MiscModule.castGem(8)
					MiscModule.WaitforCast()
				end
			end
		else
			MiscModule.LoadSpells()
		end
	end
end

----------------------------------------------------------------------------------------------------
function PetModule.PetTankRoutine()
	if mq.TLO.Me.Pet() == "NO PET" then
		return
	end

	mq.delay(100)
	if
		mq.TLO.Target.Name() == nil or MiscModule.amIDead() or (not MiscModule.AAReady(441) and not MiscModule.AAReady(3707) and not MiscModule.AAReady(766)) then
		return
	end
	if mq.TLO.Pet.PctHPs() < Config.Pet.pethealpct and Config.Pet.usepetheal then
		mq.cmd("/stopcast")
		MiscModule.castGem(9)
		MiscModule.WaitforCast()
	end
	if mq.TLO.Pet.PctHPs() < Config.Pet.pethealpct and Config.Pet.usemendcompanion then
		mq.cmd("/stopcast")
		if MiscModule.AAReady(58) then
			MiscModule.activateAA(58)
			MiscModule.WaitforCast()
		end
	end
	if mq.TLO.Me.SpellReady(7)() and Config.Pet.useshortpetrune then
		mq.cmd("/stopcast")
		MiscModule.castGem(7)
		MiscModule.WaitforCast()
	end
	if MiscModule.AAReady(441) and mq.TLO.Me.CurrentMana() > 7000 and Config.Pet.usepetaegisaa then
		mq.cmd("/stopcast")
		MiscModule.activateAA(441)
		MiscModule.WaitforCast()
	end
	if Config.Pet.usefortification and MiscModule.AAReady(3707) and (Config.Pet.usefortificationwhen == 'on cooldown' or (Config.Pet.usefortificationwhen == 'Named Only' and MiscModule.isNamed())) then
		mq.cmd("/stopcast")
		MiscModule.activateAA(3707)
		MiscModule.WaitforCast()
	end
	if mq.TLO.Target.Named() then
		if MiscModule.AAReady(3707) then
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
