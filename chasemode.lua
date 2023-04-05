---@type Mq
local mq = require('mq')
require('aliases')
require('routines')
local config = require('config')


local function chaseMode()

    while config.mode == 'Chase' do
        PetRoutines.petSetup('Chase')
        PrimaryRoutines.LoadSpells('Chase')
        
        mq.delay(100)
    end


end


