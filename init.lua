---@type Mq
local mq = require("mq")
---@type ImGui
local imgui = require("ImGui")
local argHandler = require("argHandler")
require('./modules/modeModule')
require('./modules/burnModule')
require('./modules/miscModule')
require('./modules/petModule')
require('./modules/combatModule')
 Config = require('config')


local petsetupdone = false

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

VNPaused = false


Burnnow = false



----------------------------------------------------------------------------------------------------------------------------------------------------------------

mq.bind("/vn", argHandler.vnbind)

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function VNGuiInit()
	imgui.Text("Welcome to voidnecro v0.001")
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function VNInit()
	Open, ShowUI = ImGui.Begin("VoidNecro", Open)
	if ShowUI then
		VNGuiInit()
	end
	ImGui.End()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------

argHandler.VNInfo()

mq.imgui.init("VoidNecro", VNInit)

MiscModule.LoadSpells()
PetModule.PetSetup(Config.Tank)
petsetupdone = true

----------------------------------------------------------------------------------------------------------------------------------------------------------------



local function VNMain()
	AbilitySet = AbilityDB[MiscModule.levelStrings[mq.TLO.Me.Level()]..'Abilities']
	mq.delay(100)
	if not VNPaused then

	if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" and not (AbilitySet.warriorPet == 'N/A' or AbilitySet.roguePet == 'N/A') then
		PetModule.PetSetup(Config.Tank)
		petsetupdone = true
	end
	ModeModule.checkForCamp()
	ModeModule.checkForChase()

if MiscModule.inCombat() then
	CombatModule.CombatHandler()
end


end
end


while Open do
mq.delay(100)
VNMain()
mq.doevents()
end
