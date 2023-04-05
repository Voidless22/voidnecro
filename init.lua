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

PetRoutines.PetSetup()
petsetupdone = true
PrimaryRoutines.LoadSpells()

while Open do
	mq.delay(100)
	if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" then
		PetRoutines.PetSetup()
	end

	if Aliases.inCombat() or mq.TLO.Pet.Combat() then
		PrimaryRoutines.CombatHandler()
	end

	if mq.TLO.Me.Dead() then
		print("You are dead.")
		while mq.TLO.Me.Dead() do
			mq.delay(1000)
		end
	end
end
