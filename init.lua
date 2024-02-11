local mq = require("mq")
local ImGui = require("ImGui")
local argHandler = require("argHandler")
local ModeModule = require('modules.movementModule')
local MiscModule = require('./modules/miscModule')
local PetModule = require('./modules/petModule')
local CombatModule = require('./modules/combatModule')
local GuiModule = require('./modules/guiModule')
Config = require('config')
local icons = require 'mq/icons'

VNPaused = false
local medding = false
local running = true
-- GUI flags
Open, ShowUI = true, true
OpenConfig, ShowConfig = false, false


local function handleMovement()
	if Config.General.Mode == 1 then ModeModule.modeHandler("Chase") end
	if Config.General.Mode == 2 then ModeModule.modeHandler("Camp") end
end

-- Self Explanitory
local function checkForPetTank()
	if Config.General.Tank and not mq.TLO.Pet.Taunt() then
		mq.cmdf('/pet taunt on')
	elseif not Config.General.Tank and mq.TLO.Pet.Taunt() then
		mq.cmdf('/pet taunt off')
	end
end
-- Refresh spellset on leveling/deleveling
local function checkForAbilityUpdates()
	if AbilitySet ~= AbilitySets[mq.TLO.Me.Level] then
		AbilitySet = AbilitySets[mq.TLO.Me.Level()]
		if not mq.TLO.Me.CombatState() == "COMBAT" then
			MiscModule.LoadSpells()
		end
	end
end

local function handleMedding()
			-- Is our mana less/equal to our Mmedding point, or less than our medding max:
			if (mq.TLO.Me.PctMana() <= Config.General.MedAt or mq.TLO.Me.PctMana() < Config.General.DoneMedding) then
				-- If we aren't already medding:
				if not medding then
					-- If we aren't sitting and not moving/casting then sit and set medding to true
					if not mq.TLO.Me.Sitting() and not (mq.TLO.Navigation.Active() or mq.TLO.Me.Casting()) then
						mq.cmd('/sit')
					end
					medding = true
				end
				-- else if we're set to be medding, but either not sitting or our mana is at/greater than max:
			elseif medding and not mq.TLO.Me.Sitting() or mq.TLO.Me.PctMana() >= Config.General.DoneMedding then
				-- Switch medding to false and stand up
				medding = false
				mq.cmd('/stand')
			end
end

local function VNMain()
	mq.delay(100)
	if not VNPaused then
		checkForAbilityUpdates()
		-- Make sure we have a pet
		if mq.TLO.Me.Pet() == "NO PET" and AbilitySet.warriorPet ~= 'N/A' or AbilitySet.roguePet ~= 'N/A' and mq.TLO.Me.PctMana > Config.Damage.manaMin then
			PetModule.PetSetup()
		end
		checkForPetTank()
		--MiscModule.BuffHandler()
		--
		-- runs camp/chase functionality based on config value
		handleMovement()
		handleMedding()
		-- If we aren't medding and we've got a mob to assist on:
		if not medding and CombatModule.AssistHandler() == true then
			-- While we're in combat and have a target, start up the combat handler
			while CombatModule.AssistHandler() == true and mq.TLO.Target.Name() ~= nil do
				CombatModule.CombatHandler()
			end
		end
	end
end
-------------------------------------------------------------------------------------------
----------------------------------Execution starts here------------------------------------
-------------------------------------------------------------------------------------------
-- ImGui window init
mq.imgui.init("VoidNecro", GuiModule.VNGuiLoop)

-- Info in CLI on start
argHandler.VNInfo()
-- Set Ability set to the proper level on start
AbilitySet = AbilitySets[mq.TLO.Me.Level()]
cprint('Current Level Ability Set: %s', AbilitySet.Level)
-- Look for any spells missing from book, save them in needed spells table
MiscModule.checkNeededSpells()
-- load spellbar for level
-- TODO: add a way to mem alternative spells should a spell in the table not be scribed
MiscModule.LoadSpells()


mq.bind("/vn", argHandler.vnbind)


while running do
	mq.delay(250)
	VNMain()
end
