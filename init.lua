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
--- Other Modes: currently only doing manual pet tank
--- UI
--- Settings

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

	if Aliases.inCombat() then
		PrimaryRoutines.CombatHandler()
	end

	if mq.TLO.Group.MainAssist() ~= nil then
		if
			config.mode == "Chase"
			and mq.TLO.Group.MainAssist.Distance() > config.chaseDistance
			and not mq.TLO.Me.Casting()
		then
			mq.cmdf("/squelch /nav id %i", mq.TLO.Group.MainAssist.ID())
			while mq.TLO.Navigation.Active() do
				mq.delay(50)
			end
			if mq.TLO.Group.MainAssist.Sitting() then
				while mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Me.Casting() do
					if not mq.TLO.Me.Sitting() then
						mq.cmd("/sit")
						mq.delay(500)
					end
				end
			end
		end
	end

	if mq.TLO.Me.Dead() then
		print("You are dead.")
		while mq.TLO.Me.Dead() do
			mq.delay(1000)
		end
	end
end
