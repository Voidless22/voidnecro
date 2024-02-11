local mq = require("mq")
require('modules.movementModule')
require('./modules/miscModule')
require('./modules/petModule')
AbilitySets = require('abilitySets')
CombatModule = {}

function CombatModule.AssistHandler()
	if not Config.General.Autoassist then
		return
	end

	if mq.TLO.Group.MainAssist() ~= nil and mq.TLO.Group.MainAssist() ~= mq.TLO.Me.Name() then
		local assistAtHP = Config.General.AssistPct
		local assistRange = Config.General.AssistRange
		if mq.TLO.Me.GroupAssistTarget.ID() == 0 then return false end
		if mq.TLO.Me.GroupAssistTarget.ID() ~= 0 and mq.TLO.Target.ID() ~= mq.TLO.Me.GroupAssistTarget.ID() and mq.TLO.Me.GroupAssistTarget.Type() == 'NPC' then
			--cprint(mq.TLO.Me.GroupAssistTarget.Name())
			mq.TLO.Me.GroupAssistTarget.DoTarget()
		end
		if mq.TLO.Target() ~= nil and mq.TLO.Target.PctHPs() <= assistAtHP
			and mq.TLO.Target.Name() == mq.TLO.Me.GroupAssistTarget.Name() and not mq.TLO.Group.MainAssist.Dead()
			and mq.TLO.Target.Distance() <= assistRange then
			--cprint('Engaging %s', mq.TLO.Target.Name())
			return true
		end
	else
		--cprint("Found no targets")
		return false
	end
	if mq.TLO.Group.MainAssist() == nil or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
		print("Looks like we're main assist, better find a good target.") -- If we are the main assist though... pick a mob any mob(but only if they're in radius)
		for i = 1, mq.TLO.Me.XTarget() do
			if
				mq.TLO.Me.XTarget(i).Aggressive()
				and mq.TLO.Me.XTarget(i).Distance() < Config.General.CampRadius
				and (mq.TLO.Me.XTarget(i + 1).Name() == nil or mq.TLO.Me.XTarget(i)())
			then
				if mq.TLO.Target.Name() ~= mq.TLO.Me.XTarget(i).Name() then
					mq.cmdf('/mqtarget npc "%s"', mq.TLO.Me.XTarget(i).Name())
					CombatModule.CheckForLOS()
					if mq.TLO.Target.Name() == mq.TLO.Me.XTarget(i).Name() then
						return
					end
				end
			end
		end
	end
end

function CombatModule.SpellHandler()
	for priority = 1, 3 do
		for index, spell in pairs(AbilitySet.CombatSpells) do
			if spell ~= nil and mq.TLO.Target.Name() ~= nil and mq.TLO.Me.PctMana() >= Config.Damage.manaMin and mq.TLO.Target.CurrentHPs() >= Config.Damage.stopdotsat then
				if spell.priority == priority then
					if mq.TLO.Target.ID() == 0 then return end
					if spell.buffRecieved then
						if not mq.TLO.Me.Buff(spell.buffRecievedName)() or not mq.TLO.Me.Song(spell.buffRecievedName)() then
							if mq.TLO.Spell(spell.name).Duration.TotalSeconds() > 0 and not MiscModule.hasBuff(spell.name) then
								MiscModule.SuperCast(spell.gem)
							else
								if mq.TLO.Spell(spell.name).Duration.TotalSeconds() == 0 then
									MiscModule.SuperCast(spell.gem)
								end
							end
						end
					elseif not spell.buffRecieved then
						if mq.TLO.Spell(spell.name).Duration.TotalSeconds() > 0 and not MiscModule.hasBuff(spell.name) then
							MiscModule.SuperCast(spell.gem)
						else
							if mq.TLO.Spell(spell.name).Duration.TotalSeconds() == 0 then
								MiscModule.SuperCast(spell.gem)
							end
						end
					end
				end
			end
		end
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

function CombatModule.CombatHandler()
	-- While in combat and not paused
	if not VNPaused then
		--	cprint("starting combat handler")
		CombatModule.CheckForLOS()

		if not mq.TLO.Pet.Combat() and mq.TLO.Target.Name() ~= nil then
			mq.cmd("/pet attack")
		end

		if Config.Damage.domelee == true and not mq.TLO.Me.Combat() then
			mq.cmd('/nav target')
			while mq.TLO.Navigation.Active() do mq.delay(50) end
			mq.cmd('/face')
			mq.delay(100)
			mq.cmd('/attack on')
		end

		if mq.TLO.Target.Name() ~= nil then
			CombatModule.SpellHandler()
		end
		if (mq.TLO.Target.Name() ~= mq.TLO.Me.GroupAssistTarget() and Config.General.Autoassist) or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
			CombatModule.AssistHandler()
		end
	end
end

return CombatModule
