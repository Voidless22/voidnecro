---@type Mq
local mq = require('mq')

local Config = require('config')


PetModule = {}


PetModule.NoReagent = false


function PetModule.PetSetup()
	local isMemorized = false
	local petGem
	if not CombatModule.AssistHandler() and not MiscModule.invis() and not mq.TLO.Me.Dead() then
		if not mq.TLO.FindItem('Bone Chips')() then
			PetModule.NoReagent = true
		else
			PetModule.NoReagent = false
		end
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
					MiscModule.WaitforCast(petGem)
					MiscModule.castGem(petGem)
					MiscModule.WaitforCast()
				else
					mq.cmdf('/memspell 8 "%s"', AbilitySet.warriorPet)
					while mq.TLO.Me.Gem(8).Name() ~= mq.TLO.Spell(AbilitySet.warriorPet).RankName() do mq.delay(100) end
					MiscModule.WaitforCast(8)
					MiscModule.castGem(8)
					MiscModule.WaitforCast()
				end
			end
		else
			MiscModule.LoadSpells()
		end
		MiscModule.LoadSpells()

	end
end

----------------------------------------------------------------------------------------------------

return PetModule
