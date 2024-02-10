---@type Mq
local mq = require('mq')


local Abilities = require('abilitySets')


local baseCampLoc
local campOffsetMin = 5
local campOffsetMax = 15

local currentLoc = {}
local campOffset
local newCampY
local newCampX
math.randomseed(os.clock() * 100000000000)


MovementModule = {}

-- Working Currently

function MovementModule.modeHandler(mode)
    if mode == "Chase" then
        if mq.TLO.Group.MainAssist.ID() ~= nil and not (mq.TLO.Group.MainAssist.OtherZone() or mq.TLO.Group.MainAssist.Offline() or mq.TLO.Group.MainAssist() == mq.TLO.Me.Name())
        then
            if mq.TLO.Group.MainAssist.Distance() > tonumber(Config.General.ChaseDistance) and not mq.TLO.Me.Casting() then
                mq.cmdf("/squelch /nav id %i", mq.TLO.Group.MainAssist.ID())
                while mq.TLO.Navigation.Active() do
                    mq.delay(50)
                end
            end
        end
    end
    if mode == "Camp" then
        if baseCampLoc == nil then
            baseCampLoc = {}
            baseCampLoc[1] = mq.TLO.Me.Y()
            baseCampLoc[2] = mq.TLO.Me.X()
            cprint("this is basecamp:%i, %i", baseCampLoc[1], baseCampLoc[2])
        end

        if campOffset == nil then
            campOffset = math.random(campOffsetMin, campOffsetMax)
        end

        currentLoc[1] = mq.TLO.Me.Y()
        currentLoc[2] = mq.TLO.Me.X()

        newCampY = baseCampLoc[1] + campOffset
        newCampX = baseCampLoc[2] + campOffset

        local campRadiusX1 = baseCampLoc[2] + Config.General.CampRadius
        local campRadiusY1 = baseCampLoc[1] + Config.General.CampRadius

        local campRadiusX2 = baseCampLoc[2] - Config.General.CampRadius
        local campRadiusY2 = baseCampLoc[1] - Config.General.CampRadius

        if (campRadiusY1 < currentLoc[1]) or (campRadiusY2 > currentLoc[1]) then
            mq.cmdf("/squelch /nav locyx %i %i", newCampY, newCampX)
            campOffset = nil
        end
        if (campRadiusX1 < currentLoc[2]) or (campRadiusX2 > currentLoc[2]) then
            mq.cmdf("/squelch /nav locyx %i %i", newCampY, newCampX)
            campOffset = nil
        end
    end
end


return MovementModule
