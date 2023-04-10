---@type Mq
local mq = require("mq")


MiscModule = {}






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

function MiscModule.castGem(gem)
	cprint("Casting:-- %s -- Gem: %s", mq.TLO.Me.Gem(gem).RankName(), gem)
	mq.cmdf("/cast %i", gem)
	MiscModule.WaitforCast()
end
function MiscModule.AAReady(altnumber)
	if mq.TLO.Me.AltAbilityReady(altnumber)() then
		return true
	else
		return false
	end
end
function MiscModule.amIDead()
	if mq.TLO.Me.Dead() then
		print("I am dead")
		return true
	else
		return false
	end
end

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


function MiscModule.activateItem(item)
	MiscModule.WaitforCast()
	cprint("Activating Item %s", item)
	if mq.TLO.Me.ItemReady(item) then
		mq.cmdf('/useitem "%s"', item)
		MiscModule.WaitforCast()
		mq.delay(50)
	end
end
function MiscModule.activateAA(altnumber)
	MiscModule.WaitforCast()
	cprint("Activating AA %s", mq.TLO.Me.AltAbility(altnumber).Name())
	while MiscModule.AAReady(altnumber) == true do
		mq.cmdf("/alt activate %s", altnumber)
		mq.delay(250)
	end
end

function MiscModule.invis()
	return mq.TLO.Me.Invis()
end

function MiscModule.inCombat()
	local mainAssistTarget = mq.TLO.Me.GroupAssistTarget()
	local radius = Config.campRadius
	local combatState = mq.TLO.Me.CombatState()
	local petinCombat = mq.TLO.Pet.Combat()

	if mq.TLO.Me.XTarget() > 0 then
		for i = 1, mq.TLO.Me.XTarget() do
			if mq.TLO.Me.XTarget(i).Distance() < radius and mq.TLO.Me.XTarget(i).Aggressive() and not MiscModule.invis()
			then
				return true
			end
		end
	else
	return false
	end

end
function MiscModule.isNamed()
	if mq.TLO.Target.Name() ~= nil and mq.TLO.Target.Named() == true then
		return true
	else
		return false
	end
end

function MiscModule.checkForSit()
    if mq.TLO.Group.MainAssist ~= nil and mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
        while mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Me.Casting() do
            if not mq.TLO.Me.Sitting() then
                mq.cmd("/sit")
                mq.delay(500)
            end
        end
    end
end


function MiscModule.LoadSpells()
	for i = 1, mq.TLO.Me.NumGems() do
		if not Config.Tank then
		if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(AbilitySet.Spellbar[i]).RankName() then
			if not MiscModule.inCombat() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
				if mq.TLO.Cursor.ID() ~= nil then 
					while mq.TLO.Cursor.ID() ~= nil do
						mq.cmd('/autoinventory') 
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
		else
			if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(AbilitySet.TankSpellBar[i]).RankName() then
				if not MiscModule.inCombat() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
					if mq.TLO.Cursor.ID() ~= nil then 
						while mq.TLO.Cursor.ID() ~= nil do
							mq.cmd('/autoinventory') 
							mq.delay(200)
						end
					end
						cprint("memorizing %s", AbilitySet.TankSpellBar[i])
						mq.cmdf('/memspell %i "%s"', i, AbilitySet.TankSpellBar[i])
						mq.delay(200)
						while mq.TLO.Window("SpellBookWnd").Open() do
							mq.delay(50)
						end
					end
				end
		end

	end
end

return MiscModule