---@type Mq
local mq = require("mq")
require('./modules/modeModule')
require('./modules/burnModule')
require('./modules/miscModule')
require('./modules/petModule')
AbilityDB = require('abilityDB')
CombatModule = {}

function CombatModule.AssistHandler()
	if not Config.autoAssist then
		return
	end

	if mq.TLO.Group.MainAssist() ~= nil and mq.TLO.Group.MainAssist() ~= mq.TLO.Me.Name() then
		print("We have a main assist but it is not us.")
		if
			mq.TLO.Me.GroupAssistTarget.Distance() < Config.campRadius
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
				and mq.TLO.Me.XTarget(i).Distance() < Config.campRadius
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

----------------------------------------------------------------------------------------------------
function CombatModule.AggroHandler()
	for i = 1, mq.TLO.Me.XTarget() do
		if mq.TLO.Target.Name() == nil then
			return
		end

		if mq.TLO.Me.XTarget(i).PctAggro() > Config.aggroFDPct then
			MiscModule.activateAA(428)
			mq.delay(500)
			mq.cmd("/sit")
			mq.cmdf('/tar "%s"', mq.TLO.Pet.Target())
		end
	end
end

function CombatModule.ManaAAHandler()
	if
		mq.TLO.Me.PctMana() < Config.minDeathBloomMana
		and not Config.useDeathBloomOnCooldown
		and not mq.TLO.Me.Buff("Blood Magic")() == nil
	then
		if MiscModule.AAReady(7703) then
			MiscModule.WaitforCast()
			MiscModule.activateAA(7703)
			MiscModule.WaitforCast()
		end
	elseif Config.useDeathBloomOnCooldown and mq.TLO.Me.Buff("Blood Magic")() == nil then
		if MiscModule.AAReady(7703) then
			MiscModule.WaitforCast()
			MiscModule.activateAA(7703)
			MiscModule.WaitforCast()
		end
	end
end

function CombatModule.CCRoutine()
	local totalUndead = 0

	if mq.TLO.Me.XTarget() > Config.minMobsForCC then
		for i = 1, mq.TLO.Me.XTarget() do
			if not mq.TLO.Me.XTarget(i).FindBuff("spa root")() then
				if MiscModule.AAReady(431) and mq.TLO.Me.XTarget(i).LineOfSight() then
					mq.cmdf('/tar "%s"', mq.TLO.Me.XTarget(i)())
					mq.delay(750)
					MiscModule.activateAA(431)
				end
			end
			if mq.TLO.Me.XTarget(i).Body() == "Undead" then
				totalUndead = totalUndead + 1
			end
		end
		if totalUndead > 3 then
			if MiscModule.AAReady(903) then
				MiscModule.activateAA(903)
			elseif MiscModule.AAReady(70) then
				MiscModule.activateAA(70)
			end
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatModule.DebuffMob()
	if mq.TLO.Target.Name() == nil or mq.TLO.Target.PctHPs() < 20 or MiscModule.amIDead() then
		return
	end
	if
		not (MiscModule.hasBuff("Scent of Terris") or MiscModule.hasBuff("Scent of the Grave"))
		and not MiscModule.amIDead()
		and Config.useScent
	then
		MiscModule.WaitforCast()
		MiscModule.activateAA(AbilitySet["Scent"].AltNumber)
		MiscModule.WaitforCast()
	end
end

local function SuperCast(gem)
	MiscModule.WaitforCast()
	MiscModule.castGem(gem)
	MiscModule.WaitforCast()
 end

----------------------------------------------------------------------------------------------------
function CombatModule.SpellHandler()
	
	----------------------------------------------------------------------------------------------------
	for index, value in pairs(AbilitySet.FirstPrioritySpells) do
		if mq.TLO.Target.Name() == nil then CombatModule.AssistHandler() end
		local spellCategory = mq.TLO.Spell(value.name).Category()
		local hasBuffComponent = value.buffRecieved
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Damage Over Time' then
			if hasBuffComponent then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)
				end
			elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2))  then
				SuperCast(value.gem)

			end
----------------------------------------------------------------------------------------------------
		elseif spellCategory == 'Direct Damage' then
			if hasBuffComponent then
				if not mq.TLO.Me.Buff(value.buffRecievedName)() or not mq.TLO.Me.Song(value.buffRecievedName)() then
					SuperCast(value.gem)

				end
			else
				SuperCast(value.gem)

				end
----------------------------------------------------------------------------------------------------
		elseif spellCategory == 'Utility Detrimental' then
			if hasBuffComponent and mq.TLO.Spell(value.name).Duration() > '0' and not MiscModule.hasBuff(value.name) then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
					SuperCast(value.gem)

				end
			elseif hasBuffComponent and not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
				SuperCast(value.gem)

			else
				SuperCast(value.gem)

			end
		end
	end	
----------------------------------------------------------------------------------------------------
	for index, value in pairs(AbilitySet.SecondPrioritySpells) do
		local spellCategory = mq.TLO.Spell(value.name).Category()
		local hasBuffComponent = value.buffRecieved
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Damage Over Time' then
			if hasBuffComponent then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)

				end
			elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2))  then
				SuperCast(value.gem)

			end
		end
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Direct Damage' then
			if hasBuffComponent then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
					SuperCast(value.gem)

				end
			else
				SuperCast(value.gem)

				end
		end
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Utility Detrimental' then
			if hasBuffComponent and mq.TLO.Spell(value.name).Duration() > '0' and not MiscModule.hasBuff(value.name) then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
					SuperCast(value.gem)

				end
			elseif hasBuffComponent and not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
				SuperCast(value.gem)

			else
				SuperCast(value.gem)

			end
		end
	end
----------------------------------------------------------------------------------------------------
	for index, value in pairs(AbilitySet.LastPrioritySpells) do
		local spellCategory = mq.TLO.Spell(value.name).Category()
		local hasBuffComponent = value.buffRecieved
		if spellCategory == 'Damage Over Time' then
			if hasBuffComponent then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)

				end
			elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2))  then
				SuperCast(value.gem)

			end
		end
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Direct Damage' then
			if hasBuffComponent then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or not mq.TLO.Me.Song(value.buffRecievedName)) then
					SuperCast(value.gem)

				end
			else
				SuperCast(value.gem)

			end
		end
----------------------------------------------------------------------------------------------------
		if spellCategory == 'Utility Detrimental' then
			if hasBuffComponent and mq.TLO.Spell(value.name).Duration() > '0' and not MiscModule.hasBuff(value.name) then
				if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
					SuperCast(value.gem)

				end
			elseif hasBuffComponent and not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) then
				SuperCast(value.gem)

			else
				SuperCast(value.gem)

			end
		end
	end
----------------------------------------------------------------------------------------------------

end



function CombatModule.CheckForLOS()
    if mq.TLO.Target.Name() ~= nil then
        if not mq.TLO.Target.LineOfSight() then
            mq.cmd("/squelch /nav target")
            while mq.TLO.Navigation.Active() do
                mq.delay(100)
            end
        end
    end
end

function CombatModule.useEradicateAA()
if mq.TLO.Target.Name() ~= nil then
    if mq.TLO.Target.BuffCount() > 0 and MiscModule.AAReady(547)  then
        for i = 1, mq.TLO.Target.BuffCount() do
            if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Buff(i).SpellType() == "Beneficial" then
                MiscModule.WaitforCast()
                MiscModule.activateAA(547)
            end
        end
    end
end

end

function CombatModule.useSnareAA()
if MiscModule.AAReady(826) and mq.TLO.Target.Name() ~= nil then
    MiscModule.WaitforCast()
    MiscModule.activateAA(826)
end

end




function CombatModule.CombatHandler()
	
	while MiscModule.inCombat() and not VNPaused do
		if (mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and Config.autoAssist) or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
			CombatModule.AssistHandler()
		end
        CombatModule.CheckForLOS()
        if not mq.TLO.Pet.Combat() and mq.TLO.Target.Name() ~= nil then
			mq.cmd("/pet attack")
		end

		if Config.doMelee then
		mq.cmd('/face')
		mq.delay(100)
		mq.cmd('/nav target')
		while mq.TLO.Navigation.Active() do mq.delay(50) end
		mq.cmd('/attack on')

		end
        if Config.useCC and mq.TLO.Target.Name() ~= nil then
			CombatModule.CCRoutine()
		end
		CombatModule.AggroHandler()
		CombatModule.ManaAAHandler()

		if mq.TLO.Me.PctMana() > Config.minDmgSpellManaPct then
			if Config.Tank then
				PetModule.PetTankRoutine()
			end
            if Config.useScent and AbilitySet.Scent ~= 'N/A' then
                CombatModule.DebuffMob()
            end

            CombatModule.SpellHandler()

			if Config.burnAlways or MiscModule.isNamed then
				BurnModule.BurnRoutine()
			end
            if Config.useEradicateAA then
                CombatModule.useEradicateAA()
            end
            if Config.useSnareAA  then
                CombatModule.useSnareAA()
            end


		end
        
 
        end
       
	end


return CombatModule
