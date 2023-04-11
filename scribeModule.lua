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


function ScribeModule.StartScribing()
    local currentZoneSpells = ScribeModule.neededSpells
    local currentZoneNPC

    if mq.TLO.Me.Level() >= 1 and mq.TLO.Me.Level() <= 90 then
        if mq.TLO.Zone.ShortName() ~= 'poknowledge' then
            mq.cmd('/travelto poknowledge')
            while mq.TLO.Navigation.Active() do mq.delay(2000) end
        end
        if currentZoneSpells ~= {} then
            for index, value in pairs(currentZoneSpells) do
                if index >= 1 and index <= 25 then
                    currentZoneNPC = 'Heretic_Drahur'
                elseif index >= 26 and index <= 50 then
                    currentZoneNPC = 'Heretic_Elirev'
                elseif index >= 51 and index <= 60 then
                    currentZoneNPC = 'Heretic_Edalith'
                elseif index >= 61 and index <= 70 then
                    currentZoneNPC = 'Heretic_Ceikon'
                elseif index >= 71 and index <= 80 then
                    currentZoneNPC = 'Heretic_Niraf'
                elseif index >= 81 and index <= 90 then
                    currentZoneNPC = 'Heretic_Lartman'
                end

                mq.cmdf('/nav spawn %s', currentZoneNPC)
                while mq.TLO.Navigation.Active() do mq.delay(2000) end
                mq.cmdf('/tar %s', currentZoneNPC)
                mq.delay(500)
                if mq.TLO.Me.FreeInventory() < #currentZoneSpells then
                    cprint('Not enough inventory space to scribe. Stopping')
                    return
                else
                    mq.cmd('/usetarget')
                    mq.delay(500)
                    for index, value in pairs(currentZoneSpells) do
                        if mq.TLO.FindItem(value)() then
                            break
                        end
                        mq.cmdf('/invoke ${Merchant.SelectItem[%s]}', value)
                        mq.delay(1000)
                        mq.cmdf('/invoke ${Merchant.Buy[1]}', value)
                        mq.delay(1000)
                    end
                    mq.cmd('/notify MerchantWnd MW_Done_Button leftmouseup')
                    mq.delay(1000)
                    for index, value in pairs(currentZoneSpells) do
                        if mq.TLO.FindItem(value)() then
                            mq.cmdf('/itemnotify "Spell: %s" rightmouseup', value)
                            mq.delay(100)
                            while not mq.TLO.Me.Book(value)() do
                                mq.delay(50)
                            end
                        end
                    end
                end
            end
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
            if mq.TLO.Me.Book(value)() == nil then
                table.insert(ScribeModule.neededSpells, i, value)
                cprint('missing %s. Adding to Needed Spells', value)
            end
        end
    end
end

function ScribeModule.StartScribeProcess()
    ScribeModule.checkNeededSpells()
    if neededSpells ~= {} then
        ScribeModule.GetToHomeBase()
    end
end

return ScribeModule
