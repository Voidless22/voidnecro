---@type Mq
local mq = require("mq")
local config = require("config")

Aliases = {}

function Aliases.CombatPreChecks()
	if mq.TLO.Target.Name() == nil or Aliases.amIDead() or mq.TLO.Me.XTarget() < 1 then
		return false
	else
		return true
	end
end

function Aliases.castGem(gem)
	cprint("Casting:-- %s -- Gem: %s", mq.TLO.Me.Gem(gem).RankName(), gem)
	mq.cmdf("/cast %i", gem)
	Aliases.WaitforCast()
end

function Aliases.AAReady(altnumber)
	if mq.TLO.Me.AltAbilityReady(altnumber)() then
		return true
	else
		return false
	end
end
function Aliases.activateItem(item)
	Aliases.WaitforCast()
	cprint("Activating Item %s", item)
	if mq.TLO.Me.ItemReady(item) then
		mq.cmdf('/useitem "%s"', item)
		Aliases.WaitforCast()
		mq.delay(50)
	end
end

function Aliases.activateAA(altnumber)
	Aliases.WaitforCast()
	cprint("Activating AA %s", mq.TLO.Me.AltAbility(altnumber).Name())
	while Aliases.AAReady(altnumber) == true do
		mq.cmdf("/alt activate %s", altnumber)
		mq.delay(250)
	end
end

function Aliases.invis()
	return mq.TLO.Me.Invis()
end

function Aliases.inCombat()
	local mainAssistTarget = mq.TLO.Me.GroupAssistTarget()
	local radius = config.campRadius
	local combatState = mq.TLO.Me.CombatState()
	local petinCombat = mq.TLO.Pet.Combat()

	if mq.TLO.Me.XTarget() > 0 then
		for i = 1, mq.TLO.Me.XTarget() do
			if not mq.TLO.Me.XTarget(i).Aggressive() then return false end
			if (mq.TLO.Me.XTarget(i).Distance() < radius and mq.TLO.Me.XTarget(i).Aggressive() and not Aliases.invis())
				or combatState == "COMBAT"
				or petinCombat
			then
				if not mq.TLO.Group.MainAssist() then
					mq.cmd('/assist main')
				end
				return true
			end
		end
	end
	return false
end

function Aliases.checkForAssist()
	local maTarget = mq.TLO.Me.GroupAssistTarget()
	if maTarget ~= nil and maTarget.Distance() < config.campRadius and maTarget.PctHPs() <= config.assistPct then
		return true
	else
		return false
	end
end

function Aliases.isNamed()
	if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Named() == true then
		return true
	else
		return false
	end
end
function Aliases.hasBuff(spell)
	if mq.TLO.Target.Buff(spell)() then
		cprint("Has spell %s", spell)
		mq.delay(100)
		return true
	else
		cprint("Does not have %s", spell)
		mq.delay(100)
		return false
	end
end

function Aliases.WaitforCast(gem)
	mq.delay(100)
	if gem ~= nil then
		while not mq.TLO.Me.SpellReady(gem)() do
			mq.delay(100)
		end
	end
	if mq.TLO.Me.Casting() or mq.TLO.Me.SpellInCooldown() then
		print("Waiting for cast to finish")
		while mq.TLO.Me.Casting() or mq.TLO.Me.SpellInCooldown() do
			mq.delay(50)
		end
	end
end

function Aliases.amIDead()
	if mq.TLO.Me.Dead() then
		print("I am dead")
		return true
	else
		return false
	end
end

-----------------------------------------------------
function Aliases.checkDotCount(count)
	local currentDotcount = 0
	for _, dot in pairs(Abilities.Dots) do
		if Aliases.hasBuff(dot.name) and dot.priority < 3 then
			currentDotcount = currentDotcount + 1
		end
	end
	if currentDotcount >= count then
		return true
	else
		return false
	end
end
-----------------------------------------------------
function Aliases.checkBurnAAs()
	for _, aa in pairs(Abilities.BurnAAs) do
		if not Aliases.AAReady(aa) then
			cprint(
				"We can't burn yet! %s is on cooldown(and probably others as well).",
				mq.TLO.Me.AltAbility(aa).Name()
			)
			return false
		end
	end
	return true
end
-----------------------------------------------------
function Aliases.checkBurnItems()
	for _, item in pairs(Abilities.BurnItems) do
		if not mq.TLO.Me.ItemReady(item)() then
			cprint("We can't burn yet! %s is on cooldown(and probably others as well).", item)
			return false
		end
	end
	return true
end
