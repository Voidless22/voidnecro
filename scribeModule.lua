---@type Mq
local mq = require('mq')
local SpellDB = require('spellDB')
ScribeModule = {}
ScribeModule.neededSpells = {}

ScribeModule.SpellZones = {
    ['poknowledge'] = {
        ['start'] = 1,
        ['end'] = 90
    }
}


function ScribeModule.scribeSpells()
    for index, value in pairs(ScribeModule.neededSpells) do
        if mq.TLO.FindItem(value)() then
            mq.cmdf('/itemnotify "Spell: %s" rightmouseup', value)
            mq.delay(100)
            while not mq.TLO.Me.Book(value)() do
                mq.delay(50)
            end
            table.remove(ScribeModule.neededSpells, index)
        end
    end
    if ScribeModule.neededSpells ~= {} then
        ScribeModule.GetSpells()
    end
end

function ScribeModule.pokSpells(level, spell)
    if level >= 1 and level <= 25 then
        local NPC = 'Heretic_Drahur'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
    if level >= 26 and level <= 50 then
        local NPC = 'Heretic_Elirev'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
    if level >= 51 and level <= 60 then
        local NPC = 'Heretic_Edalith'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
    if level >= 61 and level <= 70 then
        local NPC = 'Heretic_Ceikon'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
    if level >= 71 and level <= 80 then
        local NPC = 'Heretic_Niraf'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
    if level >= 81 and level <= 90 then
        local NPC = 'Heretic_Lartman'
        if mq.TLO.Merchant.Open()  == nil then
            mq.cmdf('/nav spawn %s', NPC)
            while mq.TLO.Navigation.Active() do mq.delay(500) end
            mq.cmdf('/target %s', NPC)
            mq.delay(2000)
            mq.cmdf('/usetarget')
            mq.delay(10000)
        end
        mq.TLO.Merchant.SelectItem(spell)
        mq.delay(1000)
        mq.TLO.Merchant.Buy(1)
        mq.delay(1000)
        if mq.TLO.Me.FreeInventory(1)() < 3 then
            mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
            ScribeModule.scribeSpells()
        end
    end
end

function ScribeModule.GetSpells()
    for level, spell in pairs(ScribeModule.neededSpells) do
        if level >= 1 and level <= 90 then
            if mq.TLO.Zone.ShortName() ~= 'poknowledge' then
                cprint('Moving to PoK for spells 1 through 90.')
                mq.cmd('/travelto poknowledge')
                while mq.TLO.Zone.ShortName() ~= 'poknowledge' do
                    mq.delay(5000)
                end
            end
            ScribeModule.pokSpells(level, spell)
        end
    end
end

function ScribeModule.GetToHomeBase()
    while mq.TLO.Zone.ShortName ~= 'guildlobby' or mq.TLO.Zone.ShortName ~= 'poknowledge' or mq.TLO.Zone.ShortName ~= 'guildhall' do
        if not MiscModule.inCombat() and not MiscModule.invis() and not MiscModule.amIDead() then
            cprint('Not in Home Base. Moving to Home Base')
            if MiscModule.AAReady(511) then
                MiscModule.WaitforCast()
                MiscModule.activateAA(511)
                MiscModule.WaitforCast()
            elseif MiscModule.AAReady(331) then
                MiscModule.WaitforCast()
                MiscModule.activateAA(331)
                MiscModule.WaitforCast()
            end
        end
    end
end

function ScribeModule.checkNeededSpells()
    for i = 1, mq.TLO.Me.Level() do
        for index, value in ipairs(SpellDB[i]) do
            if mq.TLO.Me.Book(mq.TLO.Spell(value).RankName())() == nil then
                table.insert(ScribeModule.neededSpells, i, value)
                cprint('missing %s [%i]. Adding to Needed Spells', value, i)
            end
        end
    end
end

function ScribeModule.StartScribeProcess()
    ScribeModule.checkNeededSpells()
    if ScribeModule.neededSpells ~= {} then
        ScribeModule.GetToHomeBase()
    end
end

return ScribeModule
