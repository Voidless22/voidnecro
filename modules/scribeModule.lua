
local mq = require('mq')
local SpellDB = require('spellDB')


scribeModule = {}

scribeModule.neededSpells = {}



function scribeModule.checkNeededSpells()
    for i = 1, mq.TLO.Me.Level() do
        for index, value in ipairs(SpellDB[i]) do
            if mq.TLO.Me.Book(mq.TLO.Spell(value).RankName())() == nil then
                table.insert(scribeModule.neededSpells, i, value)
                cprint('missing %s [%i]. Adding to Needed Spells', value, i)
            end
        end
    end
  
end


return scribeModule
