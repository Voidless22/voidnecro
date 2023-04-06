---@type Mq
local mq = require("mq")
---@type ImGui
local imgui = require("ImGui")
local config = require("config")
local petsetupdone = false
require("routines")

local Open, ShowUI = true, true

--- Voidnecro minimal todo
--- Pet managment
--- Buffing
--- Mana Managment
--- Combat Rotations -- Done
--- Burns -- Done
--- Other Modes: currently only doing Manual Tank
--- UI
--- Settings

local baseCampLoc
local campOffsetMin = 5
local campOffsetMax = 15

local currentLoc = {}
local campOffset 
local newCampY 
local newCampX

math.randomseed(os.clock()*100000000000)


local setmode = function (...)
	local argTable = { ... }
	local args = ''
for _, value in pairs(argTable) do
	args = args .. value .. ' '
end
args = string.sub(args,1,-2)
	printf('setting mode to "%s"', args)
config.mode = args
end

mq.bind('/vnmode', setmode)


local function VNGuiInit()
	imgui.Text("Welcome to voidnecro v0.001")
end

local function VNInit()
	Open, ShowUI = ImGui.Begin("VoidNecro", Open)
	if ShowUI then
		VNGuiInit()
	end
	ImGui.End()
end

mq.imgui.init("VoidNecro", VNInit)

PrimaryRoutines.LoadSpells()
PetRoutines.PetSetup(config.mode)
petsetupdone = true

while Open do
	mq.delay(100)
	if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" then
		PetRoutines.PetSetup(config.mode)
		petsetupdone = true
	end

	if Aliases.inCombat()  then
		PrimaryRoutines.CombatHandler()
	end

	------------------------------------------------------------------
	if mq.TLO.Group.MainAssist() ~= nil then
		------------------------------------------------------------------
		if config.mode == "Chase" and not mq.TLO.Group.MainAssist.OtherZone() and not mq.TLO.Group.MainAssist.Offline() then
		if mq.TLO.Group.MainAssist.Distance() > config.chaseDistance and not mq.TLO.Me.Casting() then
			mq.cmdf("/squelch /nav id %i", mq.TLO.Group.MainAssist.ID())
			while mq.TLO.Navigation.Active() do
				mq.delay(50)
			end
		
		end
	end
	
		if config.mode == "Camp" then
			if baseCampLoc == nil then
				baseCampLoc = {}
				baseCampLoc[1] = mq.TLO.Me.Y()
				baseCampLoc[2] = mq.TLO.Me.X()
				printf('this is basecamp:%i, %i', baseCampLoc[1], baseCampLoc[2])
			end

			if campOffset == nil then
				campOffset = math.random(campOffsetMin,campOffsetMax)
			end

			 currentLoc[1] = mq.TLO.Me.Y()
			 currentLoc[2] = mq.TLO.Me.X()

             newCampY = baseCampLoc[1] + campOffset
             newCampX = baseCampLoc[2] + campOffset


			local campRadiusX1 = baseCampLoc[2] + config.campRadius
			local campRadiusY1 = baseCampLoc[1] + config.campRadius 

			local campRadiusX2 = baseCampLoc[2] - config.campRadius
			local campRadiusY2 = baseCampLoc[1] - config.campRadius

			if (campRadiusY1 < currentLoc[1]) or (campRadiusY2 > currentLoc[1]) then
           	 	mq.cmdf('/squelch /nav locyx %i %i', newCampY, newCampX)
				campOffset = nil
			end
			if (campRadiusX1 < currentLoc[2]) or (campRadiusX2 > currentLoc[2]) then
				mq.cmdf('/squelch /nav locyx %i %i', newCampY, newCampX)
			campOffset = nil
		end
			
		end

		------------------------------------------------------------------
		if mq.TLO.Group.MainAssist.Sitting() then
			while mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Me.Casting() do
				if not mq.TLO.Me.Sitting() then
					mq.cmd("/sit")
					mq.delay(500)
				end
			end
		end
		------------------------------------------------------------------
	end
	------------------------------------------------------------------
	if mq.TLO.Me.Dead() then
		print("You are dead.")
		while mq.TLO.Me.Dead() do
			mq.delay(1000)
		end
	end
end


