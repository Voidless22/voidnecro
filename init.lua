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
math.randomseed(os.clock() * 100000000000)

Burnnow = false

function cprint(s, ...)
return print('\ag[VoidNecro] '.. string.format(s,...))
end

local vnprefix = '\ag[VoidNecro]'

local function VNInfo()
	cprint('\a-gWelcome to [\agVoidNecro]')
	cprint('\atAvailable commands:')
	cprint('\aomode:\awSet the mode of VoidNecro. Currently only Chase and Camp are available.')
	cprint('\aoautoassist: \awSet if voidnecro will auto assist the main assist. If you are the main assist, toggles auto target selecting. (1/0, true/false, on/off)')
	cprint('\aotank:\awSet if VoidNecro will tank. (1/0, true/false, on/off)')
	cprint('\aoCurrent Settings:\aw Mode: %s, Auto Assist: %s, Tank: %s', config.Mode, config.autoAssist, config.Tank)
	cprint(' \a-g Type"\ag/vn config\a-g" to see more configurable options.')
end
local function VNConfigInfo()
	print('\ag[Available Configurable Options:] Type "/vn *option* *value*" to change the value.')

	cprint('\at[General]')
	cprint('[assistPct]: %i', config.assistPct)
	cprint('[chaseDistance] %i', config.chaseDistance)
	cprint('[campRadius]: %i', config.campRadius)
	cprint('[Mode]: %s', config.Mode)
	cprint('[autoAssist]: %s', config.autoAssist)
	cprint('[Tank]: %s', config.Tank)

	cprint('\ar[Combat and Burns]')
	cprint('[minDotsForBurns]: %i', config.minDotsForBurns)
	cprint('[stopDotsAt]: %i', config.stopDotsAt)
	cprint('[burnAlways]: %s', config.burnAlways)
	cprint('[waitForAllBurns]: %s', config.waitForAllBurns)
	cprint('[useScent]: %s', config.useScent)
	cprint('[aggroFDPct]: %i', config.aggroFDPct)

	cprint('\a-u[Mana]')
	cprint('[minDmgSpellManaPct]: %i', config.minDmgSpellManaPct)
	cprint('[minBloodProcManaPct]: %i', config.minBloodProcManaPct)
	cprint('[minSwarmPetManaPct]: %i', config.minSwarmPetManaPct)
	cprint('[useDeathBloomOnCooldown]: %s', config.useDeathBloomOnCooldown)
	cprint('[MindWrackManaMax]: %i', config.MindWrackManaMax)
	cprint('[minDeathBloomMana]: %i', config.minDeathBloomMana)

	print('\ao[Pet]')
	cprint('[useShortPetRune]: %s', config.useShortPetRune)
	cprint('[usePetHeal]: %s', config.usePetHeal)
	cprint('[petHealPct]: %i', config.petHealPct)
	cprint('[usePetAegisAA]: %s', config.usePetAegisAA)
	cprint('[useFortificationOnCooldown]: %s', config.useFortificationOnCooldown)
	cprint('[switchPetTargetOnAggro]: %s', config.switchPetTargetOnAggro)



end


local vnbind = function(...)
	local args = { ... }

	if args[1] == nil or args[1] == 'Help' or args[1] == 'help' then 
	VNInfo() 
	end

	if args[1] == "config" or args[1] == "Config" then
		VNConfigInfo()
	end
	if args[1] == "mode" or args[1] == "Mode" then
		if args[2] == nil then
			cprint("Current mode is: %s", config.Mode)
		end
		config.Mode = args[2]
		cprint('\atSetting VoidNecro Mode to %s', config.Mode)
	end

	if args[1] == "Autoassist" or args[1] == "autoassist" then
		if args[2] == nil then
			cprint("Currently auto assisting is is: %s", config.autoAssist)
		end
		if args[2] == "1" or args[2] ==  "true" or args[2] ==  "on" then
			print('Turning Auto Assist on.')
			config.autoAssist = true
		elseif args[2] == "0" or args[2] ==  "false" or args[2] ==  "off" then
			print('Turning Auto Assist off.')
			config.autoAssist = false
		end
	end
	if args[1] == "tank" or args[1] == "Tank" then
		if args[2] == nil then
			cprint("Currently Tank mode is set to %s", config.Tank)
		end
		if args[2] == "1" or args[2] ==  "true" or args[2] ==  "on" then
			print('Turning Tank Mode on.')
			config.Tank = true
		elseif args[2] == "0" or args[2] ==  "false" or args[2] ==  "off" then
			print('Turning Tank Mode off.')
			config.Tank = false
		end
	end
	if args[1] == 'burnnow' or args[1] == 'BurnNow' or args[1] == 'Burnnow' or args[1] == 'burn' or args[1] == 'Burn' then
		Burnnow = true
		CombatRoutines.BurnRoutine()
	end
end

mq.bind("/vn", vnbind)

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


VNInfo()

mq.imgui.init("VoidNecro", VNInit)

PrimaryRoutines.LoadSpells(config.Tank)
PetRoutines.PetSetup(config.Tank)
petsetupdone = true

while Open do
	mq.delay(100)
	if petsetupdone == true and mq.TLO.Me.Pet() == "NO PET" then
		PetRoutines.PetSetup(config.Tank)
		petsetupdone = true
	end

	if Aliases.inCombat() then
		PrimaryRoutines.CombatHandler()
	end

	------------------------------------------------------------------
	if mq.TLO.Group.MainAssist() ~= nil then
		------------------------------------------------------------------
		if
			(config.Mode == "Chase" or config.Mode == "chase")
			and not mq.TLO.Group.MainAssist.OtherZone()
			and not mq.TLO.Group.MainAssist.Offline()
		then
			if mq.TLO.Group.MainAssist.Distance() > config.chaseDistance and not mq.TLO.Me.Casting() then
				mq.cmdf("/squelch /nav id %i", mq.TLO.Group.MainAssist.ID())
				while mq.TLO.Navigation.Active() do
					mq.delay(50)
				end
			end
		end

		if config.Mode == "Camp" or config.Mode == "camp" then
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

			local campRadiusX1 = baseCampLoc[2] + config.campRadius
			local campRadiusY1 = baseCampLoc[1] + config.campRadius

			local campRadiusX2 = baseCampLoc[2] - config.campRadius
			local campRadiusY2 = baseCampLoc[1] - config.campRadius

			if (campRadiusY1 < currentLoc[1]) or (campRadiusY2 > currentLoc[1]) then
				mq.cmdf("/squelch /nav locyx %i %i", newCampY, newCampX)
				campOffset = nil
			end
			if (campRadiusX1 < currentLoc[2]) or (campRadiusX2 > currentLoc[2]) then
				mq.cmdf("/squelch /nav locyx %i %i", newCampY, newCampX)
				campOffset = nil
			end
		end

		------------------------------------------------------------------
		if mq.TLO.Group.MainAssist.Sitting() and not mq.TLO.Group.MainAssist() == mq.TLO.Me.Name() then
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
