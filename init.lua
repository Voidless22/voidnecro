---@type Mq
local mq = require("mq")
---@type ImGui
local imgui = require("ImGui")
local config = require("config")
local petsetupdone = false
require("routines")

local Open, ShowUI = true, true

local modeMenuPopup
local chaseMode 
local availableModes = {
	"Manual No Pet Tank",
	"Manual Pet Tank",
	"Chase",
}

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
	imgui.SetWindowSize("VoidNecro", 512, 32, ImGuiCond.Always)
	ImGui.SetCursorPosY(7)
	ImGui.SetCursorPosX(225)
	ImGui.Text("VoidNecro")
	ImGui.SetCursorPos(20,8)
	ImGui.SameLine()
	local modeButtonName = 'Mode: ..'
	modeMenuPopup = ImGui.Button('Mode: ' .. config.mode)
end

local function VNInit()
	local window_flags = bit32.bor(ImGuiWindowFlags.NoTitleBar, ImGuiWindowFlags.NoResize, ImGuiWindowFlags.NoScrollbar)
	Open, ShowUI = ImGui.Begin("VoidNecro", Open, window_flags)

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
	imgui.PushStyleVar(ImGuiStyleVar.WindowBorderSize, 4)
	imgui.PushStyleVar(ImGuiStyleVar.WindowRounding, 12)
	imgui.PushStyleColor(ImGuiCol.WindowBg,0,0,0,255)
	imgui.PushStyleColor(ImGuiCol.Text,0,121,0,255)
	imgui.PushStyleColor(ImGuiCol.Border,0,121,0,255)
	imgui.PushStyleColor(ImGuiCol.Button,0,0,0,0)
if modeMenuPopup then
	ImGui.OpenPopup('Modes')
end

		if ImGui.BeginPopup('Modes') then
			-- You can use selectables, or any widget, really.
		
			if ImGui.MenuItem('Chase') then
				-- Also menu Items.
			end
		
			-- End the popup
			ImGui.EndPopup()
		end


	---------------------------------------------------AUTOMATION STUFF------------------------------------------------------------
	mq.delay(100)
	if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" then
		PetRoutines.PetSetup(config.mode)
		petsetupdone = true
	end

	if Aliases.inCombat() then
		PrimaryRoutines.CombatHandler()
	end
	if not Aliases.invis() or Aliases.inCombat() then
		PrimaryRoutines.BuffRoutine()
	end

	if
		mq.TLO.Group.MainAssist() ~= nil
		and not mq.TLO.Group.MainAssist.OtherZone()
		and not mq.TLO.Group.MainAssist.Offline()
	then
		if
			config.mode == "Chase"
			and mq.TLO.Group.MainAssist.Distance() > config.chaseDistance
			and not mq.TLO.Me.Casting()
		then
			mq.cmdf("/squelch /nav id %i", mq.TLO.Group.MainAssist.ID())
			while mq.TLO.Navigation.Active() do
				mq.delay(50)
			end
		end
		if mq.TLO.Group.MainAssist.Sitting() then
			while mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Me.Casting() and not Aliases.inCombat() do
				if not mq.TLO.Me.Sitting() then
					mq.delay(math.random(500, 2000))

					mq.cmd("/sit")
				end
			end
		end
	end
	if mq.TLO.Me.Dead() then
		print("You are dead.")
		while mq.TLO.Me.Dead() do
			mq.delay(1000)
		end
		---------------------------------------------------------------------------------------------------------------------------------
	end
	imgui.PopStyleVar(2)
	imgui.PopStyleColor(4)
end
