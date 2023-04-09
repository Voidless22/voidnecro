---@type Mq
local mq = require("mq")



local ArgHandler = {}


function cprint(s, ...)
	return print("\ag[VoidNecro] " .. string.format(s, ...))
end

local vnprefix = "\ag[VoidNecro]"
----------------------------------------------------------------------------------------------------------------------------------------------------------------
function ArgHandler.VNInfo()
	cprint("\a-gWelcome to [\agVoidNecro]")
	cprint("\atAvailable commands:")
	cprint("\aomode:\awSet the mode of VoidNecro. Currently only Chase and Camp are available.")
	cprint(
		"\aoautoassist: \awSet if voidnecro will auto assist the main assist. If you are the main assist, toggles auto target selecting. (1/0, true/false, on/off)"
	)
	cprint("\aotank:\awSet if VoidNecro will tank. (1/0, true/false, on/off)")
	cprint("\aoCurrent Settings:\aw Mode: %s, Auto Assist: %s, Tank: %s", Config.Mode, Config.autoAssist, Config.Tank)
	cprint("\a-g for Pausing, type /vn pause or /vn unpause ")
	cprint(' \a-g Type"\ag/vn Config\a-g" to see more Configurable options.')
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
 function ArgHandler.VNConfigInfo()
	print('\ag[Available Configurable Options:] Type "/vn *option* *value*" to change the value.')

	cprint("\at[General]")
	cprint("[assistPct]: %i", Config.assistPct)
	cprint("[chaseDistance] %i", Config.chaseDistance)
	cprint("[campRadius]: %i", Config.campRadius)
	cprint("[Mode]: %s", Config.Mode)
	cprint("[autoAssist]: %s", Config.autoAssist)
	cprint("[Tank]: %s", Config.Tank)

	cprint("\ar[Combat and Burns]")
	cprint("[minDotsForBurns]: %i", Config.minDotsForBurns)
	cprint("[stopDotsAt]: %i", Config.stopDotsAt)
	cprint("[burnAlways]: %s", Config.burnAlways)
	cprint("[waitForAllBurns]: %s", Config.waitForAllBurns)
	cprint("[useScent]: %s", Config.useScent)
	cprint("[aggroFDPct]: %i", Config.aggroFDPct)
	cprint("[useSnareAA]: %s", Config.useSnareAA)
	cprint("[useEradicateAA]: %s", Config.useEradicateAA)
	cprint("[useCC]: %s", Config.useCC)
	cprint("[minMobsForCC]: %i", Config.minMobsForCC)
	cprint("\a-u[Mana]")
	cprint("[minDmgSpellManaPct]: %i", Config.minDmgSpellManaPct)
	cprint("[minBloodProcManaPct]: %i", Config.minBloodProcManaPct)
	cprint("[minSwarmPetManaPct]: %i", Config.minSwarmPetManaPct)
	cprint("[useDeathBloomOnCooldown]: %s", Config.useDeathBloomOnCooldown)
	cprint("[MindWrackManaMax]: %i", Config.MindWrackManaMax)
	cprint("[minDeathBloomMana]: %i", Config.minDeathBloomMana)

	print("\ao[Pet]")
	cprint("[useShortPetRune]: %s", Config.useShortPetRune)
	cprint("[usePetHeal]: %s", Config.usePetHeal)
	cprint("[petHealPct]: %i", Config.petHealPct)
	cprint("[usePetAegisAA]: %s", Config.usePetAegisAA)
	cprint("[useFortificationOnCooldown]: %s", Config.useFortificationOnCooldown)
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function ArgHandler.checkArgs(argument)
	local acceptedConfigArgs = { "on", "off", "true", "false", "On", "Off", "True", "False" }
	cprint("Checking %s for validity.", argument)
	if type(argument) == "number" then
		return 
	end
	for index, value in ipairs(acceptedConfigArgs) do
		if argument == "on" or "off" or "true" or "false" or "On" or "Off" or "True" or "False" then
			return true
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------



ArgHandler.vnbind = function(...)
	local args = { ... }
	------------------------------------------------------------------
	if args[1] == nil or args[1] == "Help" or args[1] == "help" then
		ArgHandler.VNInfo()
	end
	if args[1] == "Pause" or args[1] == "pause" then
		VNPaused = true
		cprint("Pause: %s", tostring(VNPaused))
	end
	if args[1] == "Unpause" or args[1] == "unpause" then
		VNPaused = false
		cprint("Pause: %s", tostring(VNPaused))
	end

	------------------------------------------------------------------
	if args[1] == "config" or args[1] == "Config" then
		if args[2] == nil then
			ArgHandler.VNConfigInfo()
		else
			if ArgHandler.checkArgs(args[3]) then
				for index, value in pairs(Config) do
					if args[2] == string.lower(index) or args[2] == index then
						Config[index] = args[3]
						cprint("\atSetting %s to %s", args[2], args[3])
					end
				end
			else
				cprint("\arInvalid argument in command.")
			end
		end
	end

	if args[1] == "mode" or args[1] == "Mode" then
		if args[2] == nil then
			cprint("Current mode is: %s", Config.Mode)
		end
		Config.Mode = args[2]
		cprint("\atSetting VoidNecro Mode to %s", Config.Mode)
	end
	------------------------------------------------------------------
	if args[1] == "Autoassist" or args[1] == "autoassist" then
		if args[2] == nil then
			cprint("Currently auto assisting is is: %s", Config.autoAssist)
		end
		if args[2] == "1" or args[2] == "true" or args[2] == "on" then
			cprint("Turning Auto Assist on.")
			Config.autoAssist = true
		elseif args[2] == "0" or args[2] == "false" or args[2] == "off" then
			cprint("Turning Auto Assist off.")
			Config.autoAssist = false
		end
	end
	------------------------------------------------------------------
	if args[1] == "tank" or args[1] == "Tank" then
		if args[2] == nil then
			cprint("Currently Tank mode is set to %s", Config.Tank)
		end
		if args[2] == "1" or args[2] == "true" or args[2] == "on" then
			cprint("Turning Tank Mode on.")
			Config.Tank = true
		elseif args[2] == "0" or args[2] == "false" or args[2] == "off" then
			print("Turning Tank Mode off.")
			Config.Tank = false
		end
	end
	------------------------------------------------------------------
	if
		args[1] == "burnnow"
		or args[1] == "BurnNow"
		or args[1] == "Burnnow"
		or args[1] == "burn"
		or args[1] == "Burn"
	then
		Burnnow = true
		BurnModule.BurnRoutine()
		Burnnow = false
	end


end



return ArgHandler