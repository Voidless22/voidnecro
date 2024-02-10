---@type Mq
local mq = require("mq")
local SpellDB = require('spellDB')

MiscModule = {}
-- this one works don't touch it or it'll blow up
MiscModule.neededSpells = {}

function MiscModule.WaitforCast(gem)
	mq.delay(100)
	if gem ~= nil then
		while not mq.TLO.Me.SpellReady(gem)() do
			mq.delay(100)
		end
	else
		if mq.TLO.Me.Casting() or mq.TLO.Me.SpellInCooldown() then
			print("Waiting for cast to finish")
			while mq.TLO.Me.Casting() or mq.TLO.Me.SpellInCooldown() do
				mq.delay(50)
			end
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

function MiscModule.hasBuff(spell)
	if mq.TLO.Target.Buff(spell)() then
		return true
	else
		cprint("Does not have %s", spell)
		return false
	end
end

function MiscModule.SuperCast(gem)
	MiscModule.WaitforCast()
	MiscModule.castGem(gem)
	MiscModule.WaitforCast()
end

-- this one works don't touch it or it'll blow up
function MiscModule.invis()
	return mq.TLO.Me.Invis()
end

-- Add Catches for all these fuckin toggles I want for some reason
-- otherwise
-- this one works don't touch it or it'll blow up
function MiscModule.CheckToggles()
	if Config.Damage.usescent and Config.Damage.scentgem ~= nil then
		AbilitySet.Spellbar[Config.Damage.scentgem] = AbilitySet.Scent.name
	end
	if Config.CC.usecc and Config.CC.useroot and Config.CC.rootgem ~= nil and AbilitySet.RootSpell ~= nil then
		AbilitySet.Spellbar[Config.CC.rootgem] = AbilitySet.RootSpell
	end
	if Config.CC.usecc and Config.CC.useignitebones and Config.CC.ignitegem ~= nil and AbilitySet.igniteBones ~= nil then
		AbilitySet.Spellbar[Config.CC.ignitegem] = AbilitySet.igniteBones
	end
	if Config.CC.usecc and Config.CC.usemez and Config.CC.mezgem ~= nil then
		if Config.CC.meztype == 'living' then
			AbilitySet.Spellbar[Config.CC.mezgem] = AbilitySet.LivingMez
		elseif Config.CC.meztype == 'undead' then
			AbilitySet.Spellbar[Config.CC.mezgem] = AbilitySet.UndeadMez
		end
	end
	if Config.Pet.uselongpetrune and Config.Pet.longrunegem ~= nil and AbilitySet.longPetRune ~= nil then
		AbilitySet.Spellbar[Config.Pet.longrunegem] = AbilitySet.longPetRune
	end
	if Config.Pet.useshortpetrune and Config.Pet.shortrunegem ~= nil and AbilitySet.shortPetRune ~= nil then
		AbilitySet.Spellbar[Config.Pet.shortrunegem] = AbilitySet.shortPetRune
	end
	if Config.Pet.usepetheal and Config.Pet.pethealgem ~= nil and AbilitySet.petHeal ~= nil then
		AbilitySet.Spellbar[Config.Pet.pethealgem] = AbilitySet.petHeal
	end
	if Config.Mana.usemindwrack and Config.Mana.mindwrackgem ~= nil and AbilitySet.mindWrack ~= nil then
		AbilitySet.Spellbar[Config.Mana.mindwrackgem] = AbilitySet.mindWrack
	end
	if Config.Feign.usefeign and Config.Feign.usespellfd and AbilitySet.FDSpell ~= nil then
		AbilitySet.Spellbar[Config.Feign.spellfdgem] = AbilitySet.FDSpell
	end
	MiscModule.LoadSpells()
end

function MiscModule.LoadSpells()
	local skippedGems = {}
	for i = 1, #AbilitySet.Spellbar do
		for index, value in pairs(MiscModule.neededSpells) do
			if value == AbilitySet.Spellbar[i] then
				cprint('Missing spell %s, skipping that gem.', value)
				skippedGems[i] = true
			else
				skippedGems[i] = false
			end
		end
		if mq.TLO.Me.Gem(i)() ~= mq.TLO.Spell(AbilitySet.Spellbar[i]).RankName() and not skippedGems[i] then
			if not CombatModule.AssistHandler() and not mq.TLO.Me.Invis() and not mq.TLO.Me.Moving() then
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

function MiscModule.ClearCursor()
	if mq.TLO.Cursor.ID() ~= nil then
		while mq.TLO.Cursor.ID() ~= nil do
			mq.cmd("/autoinventory")
			mq.delay(200)
		end
	end
end

function MiscModule.ReadyToCast()
	if not CombatModule.AssistHandler() and not mq.TLO.Me.Moving() and not MiscModule.invis() and not MiscModule.amIDead() then return true end
end

-- Add Pet and Group buffs
function MiscModule.BuffHandler()
	local isMemorized = false
	local buffGem
	if MiscModule.ReadyToCast() and mq.TLO.Me.PctMana() > Config.Damage.manaMin then

	end
end

function MiscModule.checkNeededSpells()
	for i = 1, mq.TLO.Me.Level() do
		for index, value in ipairs(SpellDB[i]) do
			if mq.TLO.Me.Book(mq.TLO.Spell(value).RankName())() == nil then
				table.insert(MiscModule.neededSpells, i, value)
				cprint('missing %s [%i]. Adding to Needed Spells', value, i)
			end
		end
	end
end

return MiscModule
