---@type Mq
local mq = require("mq")

require('scribeModule')

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

	for index, value in pairs(Config) do
		cprint(string.format("\ag[%s]: \aw[%s]", index, tostring(value)))
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function ArgHandler.setConfig(setting, argument)
	local trueArgumentAliases = { "on", "true", "On", "True", 1 }
	local falseArgumentAliases = { "off", "false", "Off", "False", 0 }

	cprint("Checking %s for validity.", argument)
	if tonumber(argument) ~= nil and tonumber(Config[setting]) ~= nil then
		Config[setting] = tonumber(argument)
		cprint("Setting %s to %s", setting, argument)
		return
	end
	for index, value in ipairs(trueArgumentAliases) do
		if argument == value then
			Config[setting] = true
		end
	end
	for index, value in ipairs(falseArgumentAliases) do
		if argument == value then
			Config[setting] = false
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------



ArgHandler.vnbind = function(...)
	local args = { ... }
	------------------------------------------------------------------
	if string.lower(args[1]) == 'reloadspells' then
		AbilitySet = AbilitySets[mq.TLO.Me.Level()]
		cprint('Current Level Ability Set: %s', AbilitySet.Level)
		MiscModule.LoadSpells()
		ScribeModule.checkNeededSpells()
	end
	if string.lower(args[1]) == 'getneededspells' then
		ScribeModule.checkNeededSpells()
		ScribeModule.StartScribing()
	
	end

	if args[1] == nil or args[1] == "Help" or args[1] == "help" then
		ArgHandler.VNInfo()
	elseif args[1] == "Pause" or args[1] == "pause" then
		VNPaused = true
		cprint("Pause: %s", tostring(VNPaused))
	elseif args[1] == "Unpause" or args[1] == "unpause" then
		VNPaused = false
		cprint("Pause: %s", tostring(VNPaused))
	elseif args[1] ~= nil and args[2] ~= nil then
		for index, value in pairs(Config) do
			if args[1] == string.lower(index) or args[1] == index then
				ArgHandler.setConfig(index, args[2])
			end
		end
	elseif args[1] == "config" or args[1] == "Config" then
		if args[2] == nil then
			ArgHandler.VNConfigInfo()
		else
			if args[2] ~= nil and args[3] ~= nil then
				for index, value in pairs(Config) do
					if args[2] == string.lower(index) or args[2] == index then
						ArgHandler.setConfig(index, args[3])
					end
				end
			end
		end
	elseif args[1] == "mode" or args[1] == "Mode" then
		if args[2] == nil then
			cprint("Current mode is: %s", Config.Mode)
		end
		Config.Mode = args[2]
		cprint("\atSetting VoidNecro Mode to %s", Config.Mode)
	elseif args[1] == "Autoassist" or args[1] == "autoassist" then
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
	elseif args[1] == "tank" or args[1] == "Tank" then
		if args[2] == nil then
			cprint("Currently Tank mode is set to %s", Config.Tank)
		end
		if args[2] == "1" or args[2] == "true" or args[2] == "on" then
			cprint("Turning Tank Mode on.")
			Config.Tank = true
			MiscModule.LoadSpells()
			mq.cmd('/pet taunt on')
		elseif args[2] == "0" or args[2] == "false" or args[2] == "off" then
			print("Turning Tank Mode off.")
			Config.Tank = false
			MiscModule.LoadSpells()
			mq.cmd('/pet taunt off')
		end
	elseif
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
