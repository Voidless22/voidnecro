---@type Mq
local mq = require("mq")
require("abilitySets")

BurnModule = {}
-----------------------------------------------------
function BurnModule.checkBurnAAs()
	if AbilitySet.BurnAAs ~= "N/A" then
		for _, aa in pairs(AbilitySet.BurnAAs) do
			if not MiscModule.AAReady(aa) then
				cprint(
					"We can't burn yet! %s is on cooldown(and probably others as well).",
					mq.TLO.Me.AltAbility(aa).Name()
				)
				return false
			end
		end
	end

	return true
end
-----------------------------------------------------
function BurnModule.checkBurnItems()
	if AbilitySet.BurnItems ~= "N/A" then
		for _, item in pairs(AbilitySet.BurnItems) do
			if not mq.TLO.Me.ItemReady(item)() then
				cprint("We can't burn yet! %s is on cooldown(and probably others as well).", item)
				return false
			end
		end
		return true
	end
end
-----------------------------------------------------
function BurnModule.checkDotCount(count)
	local currentDotcount = 0
	if AbilitySet.FirstPrioritySpells ~= "N/A" then
		for _, dot in pairs(AbilitySet.FirstPrioritySpells) do
			if MiscModule.hasBuff(dot.name) and dot.priority == 1 then
				currentDotcount = currentDotcount + 1
			end
		end
	end
	if AbilitySet.SecondPrioritySpells ~= "N/A" then
		for _, dot in pairs(AbilitySet.SecondPrioritySpells) do
			if MiscModule.hasBuff(dot.name) and dot.priority == 2 then
				currentDotcount = currentDotcount + 1
			end
		end
	end
	if AbilitySet.LastPrioritySpells ~= "N/A" then
		for _, dot in pairs(AbilitySet.LastPrioritySpells) do
			if MiscModule.hasBuff(dot.name) and dot.priority == 3 then
				currentDotcount = currentDotcount + 1
			end
		end
		if currentDotcount >= count then
			return true
		else
			return false
		end
	end
end
function BurnModule.BurnRoutine()
	if
		Config.waitForAllBurns
		and not (
			BurnModule.checkBurnAAs()
			and BurnModule.checkDotCount(Config.minDotsForBurns)
			and BurnModule.checkBurnItems()
		)
	then
		return
	else
		if
			(Config.burnAlways or Burnnow)
			and not (MiscModule.amIDead() and mq.TLO.Target.Name() == nil and mq.TLO.Target.PctHPs() < 40)
		then
			--- Activate all Burn AAs
			for _, aa in pairs(AbilitySet.BurnAAs) do
				if MiscModule.AAReady(aa) then
					MiscModule.activateAA(aa)
					mq.delay(250)
				end
			end
			for _, item in pairs(AbilitySet.BurnItems) do
				if mq.TLO.Me.ItemReady(item) then
					MiscModule.activateItem(item)
					mq.delay(250)
				end
			end
		else
			return
		end
	end
	Burnnow = false
end

return BurnModule