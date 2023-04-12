---@type Mq
local mq = require("mq")
require('./modules/modeModule')
require('./modules/burnModule')
require('./modules/miscModule')
require('./modules/petModule')
AbilitySets = require('abilitySets')
CombatModule = {}

function CombatModule.AssistHandler()
	if not Config.General.autoassist then
		return
	end

	if mq.TLO.Group.MainAssist() ~= nil and mq.TLO.Group.MainAssist() ~= mq.TLO.Me.Name() then
		print("We have a main assist but it is not us.")
		if
			mq.TLO.Me.GroupAssistTarget.Distance() < Config.General.campradius
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
				and mq.TLO.Me.XTarget(i).Distance() < Config.General.campradius
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
	if Config.Feign.usefeign then
		for i = 1, mq.TLO.Me.XTarget() do
			if mq.TLO.Target.Name() == nil then return end

			if mq.TLO.Me.XTarget(i).PctAggro() > Config.Feign.aggrofdpct then
				if type(AbilitySet.FD) == 'number' then
					if MiscModule.AAReady(AbilitySet.FD) then
						MiscModule.activateAA(AbilitySet.FD)
						mq.delay(1000)
						mq.cmd('/stand')
					end
				elseif Config.Feign.usespellfd then
					for i = 1, mq.TLO.Me.NumGems() do
						if mq.TLO.Me.Gem(i).Name() == AbilitySet.FD then
							SuperCast(i)
							mq.delay(1000)
							mq.cmd('/stand')
						end
					end
				end
			end
		end
	end
end

function CombatModule.ManaHandler()
	if AbilitySet.deathBloom == 'N/A' and AbilitySet.bloodMagic == 'N/A' then
		return
	elseif Config.Mana.usebloodmagic and (mq.TLO.Me.PctMana() < Config.Mana.bloodmagicmanapct and Config.Mana.usebloodmagicwhen == "% Based") or Config.Mana.usebloodmagicwhen == 'on cooldown' or (Config.Mana.usebloodmagicwhen == 'Named Only' and MiscModule.isNamed()) then
		if MiscModule.AAReady(AbilitySet.bloodMagic) then
			MiscModule.activateAA(AbilitySet.bloodMagic)
		end
		
	elseif Config.Mana.usedeathbloom and (mq.TLO.Me.PctMana() < Config.Mana.deathbloommanapct and Config.Mana.usedeathbloomwhen == "% Based") or Config.Mana.usedeathbloom == 'on cooldown' or (Config.Mana.usedeathbloomwhen == 'Named Only' and MiscModule.isNamed()) then
		if MiscModule.AAReady(AbilitySet.deathBloom) then
			MiscModule.activateAA(AbilitySet.deathBloom)
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatModule.DebuffMob()
	if mq.TLO.Target.Name() == nil or mq.TLO.Target.PctHPs() < 20 or MiscModule.amIDead() then
		return
	end
	if type(AbilitySet.Scent) == "number" then
		local AASpell = mq.TLO.Me.AltAbility(AbilitySet.Scent).Spell()
		if not (MiscModule.hasBuff(AASpell)) and not MiscModule.amIDead() then
			MiscModule.WaitforCast()
			MiscModule.activateAA(AbilitySet.Scent)
			MiscModule.WaitforCast()
		end
	elseif type(AbilitySet.Scent) == 'string' then
		for i = 1, mq.TLO.Me.NumGems() do
			if mq.TLO.Me.Gem(i).Name() == AbilitySet.Scent then
				SuperCast(i)
				mq.delay(1000)
				mq.cmd('/stand')
			end
		end
	end
end

function SuperCast(gem)
	MiscModule.WaitforCast()
	MiscModule.castGem(gem)
	MiscModule.WaitforCast()
end

function CombatModule.CCRoutine()
	if Config.CC.usecc and (Config.CC.usemez or Config.CC.useroot or Config.CC.usepunt) and mq.TLO.Me.XTarget() > Config.CC.minmobsforcc then
		if not mq.TLO.Me.XTarget() > Config.CC.minmobsforaoecc then
			for index, value in AbilitySet.SingleCCPriority do
				if value == 'Mez' then
					for i = 1, mq.TLO.Me.XTarget() do
						if mq.TLO.Me.XTarget(i) ~= mq.TLO.Me.GroupAssistTarget() and mq.TLO.Me.XTarget(i).PctHPs() > Config.CC.mincchp then
							if mq.TLO.Target.Body() == 'Undead' and Config.CC.meztype == 'Undead' then
								if type(AbilitySet.UndeadMez) == 'number' and MiscModule.AAReady(AbilitySet.UndeadMez) then
									MiscModule.WaitforCast()
									MiscModule.activateAA(AbilitySet.SingleMez)
									MiscModule.WaitforCast()
								end
							elseif type(AbilitySet.UndeadMez == 'string') then
								if not mq.TLO.Me.SpellReady(AbilitySet.UndeadMez)() then return end
								for i = 1, mq.TLO.Me.NumGems() do
									if mq.TLO.Me.Gem(i).Name() == AbilitySet.UndeadMez then
										SuperCast(i)
										return
									end
								end
							end
						elseif mq.TLO.Target.Body ~= 'Undead' and Config.CC.meztype == 'Living' then
							if type(AbilitySet.LivingMez) == 'number' and MiscModule.AAReady(AbilitySet.LivingMez) then
								MiscModule.WaitforCast()
								MiscModule.activateAA(AbilitySet.LivingMez)
								MiscModule.WaitforCast()
							end
						elseif type(AbilitySet.LivingMez == 'string') then
							if not mq.TLO.Me.SpellReady(AbilitySet.LivingMez)() then return end
							for i = 1, mq.TLO.Me.NumGems() do
								if mq.TLO.Me.Gem(i).Name() == AbilitySet.LivingMez then
									SuperCast(i)
									return
								end
							end
						end
					end
				end
				if value == 'Punt' then
					for i = 1, mq.TLO.Me.XTarget() do
						if mq.TLO.Me.XTarget(i) ~= mq.TLO.Me.GroupAssistTarget() and mq.TLO.Me.XTarget(i).PctHPs() >= Config.CC.mincchp then
							if type(AbilitySet.Punt) == 'number' and MiscModule.AAReady(AbilitySet.Punt) then
								MiscModule.WaitforCast()
								MiscModule.activateAA(AbilitySet.Punt)
								MiscModule.WaitforCast()
							end
						elseif type(AbilitySet.Punt == 'string') then
							if not mq.TLO.Me.SpellReady(AbilitySet.Punt)() then return end
							for i = 1, mq.TLO.Me.NumGems() do
								if mq.TLO.Me.Gem(i).Name() == AbilitySet.Punt then
									SuperCast(i)
									return
								end
							end
						end
					end
				end
				if value == 'Root' then
					for i = 1, mq.TLO.Me.XTarget() do
						if mq.TLO.Me.XTarget(i) ~= mq.TLO.Me.GroupAssistTarget() and mq.TLO.Me.XTarget(i).PctHPs() >= Config.CC.mincchp then
							if type(AbilitySet.Root) == 'number' and MiscModule.AAReady(AbilitySet.Root) then
								MiscModule.WaitforCast()
								MiscModule.activateAA(AbilitySet.Root)
								MiscModule.WaitforCast()
							end
						elseif type(AbilitySet.Root == 'string') then
							if not mq.TLO.Me.SpellReady(AbilitySet.Root)() then return end
							for i = 1, mq.TLO.Me.NumGems() do
								if mq.TLO.Me.Gem(i).Name() == AbilitySet.Root then
									SuperCast(i)
									return
								end
							end
						end
					end
				end
			end
		end
	end
end

----------------------------------------------------------------------------------------------------
function CombatModule.SpellHandler()
	----------------------------------------------------------------------------------------------------
	if AbilitySet.FirstPrioritySpells ~= 'N/A' and mq.TLO.Me.PctMana() > Config.Damage.mindmgspellmanapct then
		for index, value in pairs(AbilitySet.FirstPrioritySpells) do
			if mq.TLO.Me.PctMana() < Config.Damage.mindmgspellmanapct then return end

			if Config.General.tank and (value.gem == 7 or value.gem == 9) then return end

			if mq.TLO.Target.Name() == nil then CombatModule.AssistHandler() end
			local spellCategory = mq.TLO.Spell(value.name).Category()
			local hasBuffComponent = value.buffRecieved
			----------------------------------------------------------------------------------------------------
			if spellCategory == 'Damage Over Time' then
				if hasBuffComponent then
					if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
						SuperCast(value.gem)
					end
				elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)
				end
				----------------------------------------------------------------------------------------------------
			elseif spellCategory == 'Direct Damage' or spellCategory == 'Taps' then
				if hasBuffComponent then
					if not mq.TLO.Me.Buff(value.buffRecievedName)() or not mq.TLO.Me.Song(value.buffRecievedName)() then
						SuperCast(value.gem)
					end
				else
					SuperCast(value.gem)
				end
				----------------------------------------------------------------------------------------------------
			elseif spellCategory == 'Utility Detrimental' then
				if hasBuffComponent and mq.TLO.Spell(value.name).Duration.Seconds() > 0 and not MiscModule.hasBuff(value.name) then
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
	end
	----------------------------------------------------------------------------------------------------
	if AbilitySet.SecondPrioritySpells ~= 'N/A' and mq.TLO.Me.PctMana() > Config.Damage.mindmgspellmanapct then
		for index, value in pairs(AbilitySet.SecondPrioritySpells) do
			if mq.TLO.Me.PctMana() < Config.Damage.mindmgspellmanapct then return end
			if Config.General.tank and (value.gem == 7 or value.gem == 9) then return end

			local spellCategory = mq.TLO.Spell(value.name).Category()
			local hasBuffComponent = value.buffRecieved
			----------------------------------------------------------------------------------------------------
			if spellCategory == 'Damage Over Time' then
				if hasBuffComponent then
					if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
						SuperCast(value.gem)
					end
				elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)
				end
			end
			----------------------------------------------------------------------------------------------------
			if spellCategory == 'Direct Damage' or spellCategory == 'Taps' then
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
	end
	----------------------------------------------------------------------------------------------------
	if AbilitySet.LastPrioritySpells ~= 'N/A' and mq.TLO.Me.PctMana() > Config.Damage.mindmgspellmanapct then
		for index, value in pairs(AbilitySet.LastPrioritySpells) do
			if mq.TLO.Me.PctMana() < Config.Damage.mindmgspellmanapct then return end
			if Config.General.tank and (value.gem == 7 or value.gem == 9) then return end

			local spellCategory = mq.TLO.Spell(value.name).Category()
			local hasBuffComponent = value.buffRecieved
			if spellCategory == 'Damage Over Time' then
				if hasBuffComponent then
					if not (mq.TLO.Me.Buff(value.buffRecievedName) or mq.TLO.Me.Song(value.buffRecievedName)) or not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
						SuperCast(value.gem)
					end
				elseif not (MiscModule.hasBuff(value.name) or MiscModule.hasBuff(value.altName1) or MiscModule.hasBuff(value.altName2)) then
					SuperCast(value.gem)
				end
			end
			----------------------------------------------------------------------------------------------------
			if spellCategory == 'Direct Damage' or spellCategory == 'Taps' then
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
	if mq.TLO.Target.Name() ~= nil and mq.TLO.Me.Level() >= 100 then
		if mq.TLO.Target.BuffCount() > 0 and MiscModule.AAReady(547) then
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
	if MiscModule.AAReady(826) and mq.TLO.Target.Name() ~= nil and mq.TLO.Me.Level() >= 70 then
		MiscModule.WaitforCast()
		MiscModule.activateAA(826)
	end
end

function CombatModule.CombatHandler()
	while MiscModule.inCombat() and not VNPaused do
		if (mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and Config.General.autoassist) or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
			CombatModule.AssistHandler()
		end
		CombatModule.CheckForLOS()

		if not mq.TLO.Pet.Combat() and mq.TLO.Target.Name() ~= nil then
			mq.cmd("/pet attack")
		end

		if Config.Damage.domelee then
			mq.cmd('/face')
			mq.delay(100)
			if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Distance() > 5 then
				mq.cmd('/nav target')
				while mq.TLO.Navigation.Active() do mq.delay(50) end
			end
			mq.cmd('/attack on')
		end
		if Config.CC.usecc and mq.TLO.Target.Name() ~= nil then
			CombatModule.CCRoutine()
		end
		CombatModule.AggroHandler()
		CombatModule.ManaHandler()

		if mq.TLO.Me.PctMana() > Config.Damage.mindmgspellmanapct then
			if Config.General.tank then
				PetModule.PetTankRoutine()
			end

			if Config.Damage.usescent and AbilitySet.Scent ~= 'N/A' then
				CombatModule.DebuffMob()
			end

			CombatModule.SpellHandler()

			if (Config.General.burnalways or MiscModule.isNamed or Burnnow) and AbilitySet.TotalBurnAbilities ~= 0 then
				BurnModule.BurnRoutine()
			end
			if Config.Damage.useerradicateaa then
				CombatModule.useEradicateAA()
			end
			if Config.Damage.usesnareaa then
				CombatModule.useSnareAA()
			end
		end
	end
end

return CombatModule
