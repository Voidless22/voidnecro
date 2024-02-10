local mq = require("mq")
local ImGui = require("ImGui")
local argHandler = require("argHandler")
local ModeModule = require('modules.movementModule')
local MiscModule = require('./modules/miscModule')
local PetModule = require('./modules/petModule')
local CombatModule = require('./modules/combatModule')
local GuiModule = require('./modules/guiModule')

local spellLines = require('spellLines')
Config = require('config')
local icons = require 'mq/icons'


VNPaused = false



local running = true
Open, ShowUI = true, true
OpenConfig, ShowConfig = false, false



mq.imgui.init("VoidNecro", GuiModule.VNGuiLoop)

argHandler.VNInfo()
AbilitySet = AbilitySets[mq.TLO.Me.Level()]
cprint('Current Level Ability Set: %s', AbilitySet.Level)
MiscModule.checkNeededSpells()
MiscModule.LoadSpells()


local function checkForPetTank()
	if Config.General.Tank and not mq.TLO.Pet.Taunt() then
		mq.cmdf('/pet taunt on')
	elseif not Config.General.Tank and mq.TLO.Pet.Taunt() then
		mq.cmdf('/pet taunt off')
	end
end

local function checkForAbilityUpdates()
	if AbilitySet ~= AbilitySets[mq.TLO.Me.Level] then
		AbilitySet = AbilitySets[mq.TLO.Me.Level()]
		if not mq.TLO.Me.CombatState() == "COMBAT" then
			MiscModule.LoadSpells()
		end
	end
end

local medding = false
local function VNMain()
	mq.delay(100)
	if not VNPaused then
		checkForAbilityUpdates()
		if mq.TLO.Me.Pet() == "NO PET" and AbilitySet.warriorPet ~= 'N/A' or AbilitySet.roguePet ~= 'N/A' and mq.TLO.Me.PctMana > Config.Damage.manaMin then
			PetModule.PetSetup()
		end
		checkForPetTank()
		--MiscModule.BuffHandler()
		if Config.General.Mode == 1 then ModeModule.modeHandler("Chase") end
		if Config.General.Mode == 2 then ModeModule.modeHandler("Camp") end
		if mq.TLO.Me.PctMana() <= Config.General.MedAt and mq.TLO.Me.PctMana() < Config.General.DoneMedding 
		and not (mq.TLO.Navigation.Active() or mq.TLO.Me.Casting()) and not medding then
			medding = true
			if not mq.TLO.Me.Sitting() then
				mq.cmd('/sit')
			end
		end
		if medding and not mq.TLO.Me.Sitting() or mq.TLO.Me.PctMana() >= Config.General.DoneMedding then
			medding = false
			mq.cmd('/stand')
		end
		if not medding and CombatModule.AssistHandler() == true then
			while CombatModule.AssistHandler() == true do
				CombatModule.CombatHandler()
			end
		end

	end
end


mq.bind("/vn", argHandler.vnbind)


while running do
	mq.delay(250)
	VNMain()
end
