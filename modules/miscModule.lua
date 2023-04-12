---@type Mq
local mq = require("mq")

MiscModule = {}
-- this one works don't touch it or it'll blow up

function MiscModule.WaitforCast(gem)
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
-- this one works don't touch it or it'll blow up

function MiscModule.castGem(gem)
	cprint("Casting:-- %s -- Gem: %s", mq.TLO.Me.Gem(gem).RankName(), gem)
	mq.cmdf("/cast %i", gem)
	MiscModule.WaitforCast()
end
-- this one works don't touch it or it'll blow up

function MiscModule.AAReady(altnumber)
	if mq.TLO.Me.AltAbilityReady(altnumber)() then
		return true
	else
		return false
	end
end

-- this one works don't touch it or it'll blow up

function MiscModule.amIDead()
	if mq.TLO.Me.Dead() then
		print("I am dead")
		return true
	else
		return false
	end
end

-- this one works don't touch it or it'll blow up

function MiscModule.hasBuff(spell)
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

-- this one works don't touch it or it'll blow up

function MiscModule.activateItem(item)
	MiscModule.WaitforCast()
	cprint("Activating Item %s", item)
	if mq.TLO.Me.ItemReady(item) then
		mq.cmdf('/useitem "%s"', item)
		MiscModule.WaitforCast()
		mq.delay(50)
	end
end
-- this one works don't touch it or it'll blow up
function MiscModule.activateAA(altnumber)
	MiscModule.WaitforCast()
	cprint("Activating AA %s", mq.TLO.Me.AltAbility(altnumber).Name())
	while MiscModule.AAReady(altnumber) == true do
		mq.cmdf("/alt activate %s", altnumber)
		mq.delay(250)
	end
end
-- this one works don't touch it or it'll blow up

function MiscModule.invis()
	return mq.TLO.Me.Invis()
end


-- This one works don't touch it it might blow up
function MiscModule.inCombat()
	local mainAssistTarget = mq.TLO.Me.GroupAssistTarget()
	local radius = Config.General.campradius
	local combatState = mq.TLO.Me.CombatState()
	local petinCombat = mq.TLO.Pet.Combat()

	if mq.TLO.Me.XTarget() > 0 then
		for i = 1, mq.TLO.Me.XTarget() do
			if
				mq.TLO.Me.XTarget(i).Distance() < radius
				and mq.TLO.Me.XTarget(i).Aggressive()
				and not MiscModule.invis()
			then
				return true
			end
		end
	else
		return false
	end
end

-- No idea if this works 
function MiscModule.isNamed()
	if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Named() == true then
		return true
	else
		return false
	end
end

-- Does this work either?

function MiscModule.checkForSit()
	if
		mq.TLO.Group.MainAssist ~= nil
		and mq.TLO.Group.MainAssist.Sitting()
		and not mq.TLO.Group.MainAssist() == mq.TLO.Me.Name()
	then
		while mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Me.Casting() do
			if not mq.TLO.Me.Sitting() then
				mq.cmd("/sit")
				mq.delay(500)
			end
		end
	end
end


-- Add Catches for all these fuckin toggles I want for some reason
-- otherwise
-- this one works don't touch it or it'll blow up


function MiscModule.LoadSpells()
	local skippedGems = {}
	for i = 1, #AbilitySet.Spellbar do
		for index, value in pairs(ScribeModule.neededSpells) do
				if value == AbilitySet.Spellbar[i] then
					cprint('Missing spell %s, skipping that gem.', value)
					skippedGems[i] = true
				end
		end
		if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(AbilitySet.Spellbar[i]).RankName() and not skippedGems[i] then
			if not MiscModule.inCombat() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
				if mq.TLO.Cursor.ID() ~= nil then
					while mq.TLO.Cursor.ID() ~= nil do
						mq.cmd("/autoinventory")
						mq.delay(200)
					end
				end
				cprint("memorizing %s", AbilitySet.Spellbar[i])
				mq.cmdf('/memspell %i "%s"', i, AbilitySet.Spellbar[i])
				mq.delay(200)
				while mq.TLO.Window("SpellBookWnd").Open() do
					mq.delay(50)
				end
			end
		end
	end
end

-- Add Pet and Group buffs
function MiscModule.BuffHandler()
	local isMemorized = false 
	local buffGem
if not MiscModule.inCombat() and not MiscModule.invis() and not MiscModule.amIDead() and mq.TLO.Me.PctMana() > Config.Damage.mindmgspellmanapct then
	for index, value in ipairs(AbilitySet.Buffs) do
		if not mq.TLO.Me.Buff(value)() then
			for i=1, mq.TLO.Me.NumGems() do
				if mq.TLO.Me.Gem(i).Name() == value then isMemorized = true buffGem = i end
			end
			if isMemorized then 
				mq.cmdf('/tar %s', mq.TLO.Me.Name())
				mq.delay(100)
				MiscModule.WaitforCast()
				MiscModule.castGem(buffGem)
				MiscModule.WaitforCast()
			else
			mq.cmdf('/memspell 8 "%s"', value)
			while mq.TLO.Me.Gem(8).Name() ~= mq.TLO.Spell(value).RankName() do mq.delay(100) end
				MiscModule.WaitforCast()
				MiscModule.castGem(8)
				MiscModule.WaitforCast()

			end


		end
	end
end

end


return MiscModule
