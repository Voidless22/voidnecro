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
require('scribeModule')
require('spellLines')
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
AbilitySet = AbilitySets[mq.TLO.Me.Level()]
cprint('Current Level Ability Set: %s', AbilitySet.Level)



ScribeModule.checkNeededSpells()





argHandler.VNInfo()

mq.imgui.init("VoidNecro", VNInit)

MiscModule.LoadSpells()




if mq.TLO.Me.Pet() == "NO PET" and AbilitySet.warriorPet ~= 'N/A' or AbilitySet.roguePet ~= 'N/A' and not PetModule.NoReagent then
	while mq.TLO.Me.Pet() == "NO PET" and not PetModule.NoReagent do
		if not mq.TLO.FindItem('Bone Chips')() then
			cprint('No Bone Chips in inventory')
			PetModule.NoReagent = true
		else 
			PetModule.NoReagent = false
		end

	PetModule.PetSetup()
	mq.delay(2000)
end
end
petsetupdone = true
MiscModule.BuffHandler()

----------------------------------------------------------------------------------------------------------------------------------------------------------------



local function VNMain()
	mq.delay(100)
	if not VNPaused then

		if AbilitySet.Level ~= mq.TLO.Me.Level() then
			AbilitySet = AbilitySets[mq.TLO.Me.Level()]
			cprint('DING! You leveled up! New Ability Set: %s', AbilitySet.Level)
			MiscModule.LoadSpells()
		end
		MiscModule.BuffHandler()

		if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" and AbilitySet.warriorPet ~= 'N/A' or AbilitySet.roguePet ~= 'N/A' then
			if not mq.TLO.FindItem('Bone Chips')() then
				PetModule.NoReagent = true
			else 
				PetModule.NoReagent = false
			end
			PetModule.PetSetup()
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
