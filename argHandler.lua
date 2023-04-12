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
	cprint("\aoCurrent Settings:\aw Mode: %s, Auto Assist: %s, Tank: %s", Config.General.mode, Config.General.autoAssist,
		Config.General.Tank)
	cprint("\a-g for Pausing, type /vn pause or /vn unpause ")
	cprint(' \a-g Type"\ag/vn Config\a-g" to see more Configurable options.')
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function ArgHandler.VNConfigInfo()
	print('\ag[Available Configurable Options:] Type "/vn *option* *value*" to change the value.')

	for index, value in pairs(Config) do
		cprint(index)
		for i, v in pairs(Config[index]) do
			cprint("\a-g%s: \aw%s", i, v)
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function ArgHandler.setConfig(section, option, uservalue)
	local trueArgumentAliases = { "on", "true", "On", "True", 1 }
	local falseArgumentAliases = { "off", "false", "Off", "False", 0 }
	local modes = {'Camp', 'Chase', 'camp', 'Chase'}

	cprint("Checking %s for validity.", uservalue)
	if tonumber(uservalue) ~= nil and tonumber(section[option]) ~= nil then
		section[option][uservalue] = tonumber(uservalue)
		cprint("Setting %s to %s", option, uservalue)
		return
	end
	if option == 'mode' then
	for index, value in ipairs(modes) do
		if value == string.lower(uservalue) or value == uservalue then
			section[option] = uservalue
		end
	end
end
	for index, value in ipairs(trueArgumentAliases) do
		if uservalue == value then
			section[option] = true
		end
	end
	for index, value in ipairs(falseArgumentAliases) do
		if uservalue == value then
			section[option] = false
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------

local singleArgs = { 'open', 'show', 'close', 'hide', 'help', 'pause', 'unpause', 'reloadspells', 'getneededspells',
	'burn', 'burnnow', }

ArgHandler.vnbind = function(...)
	local args = { ... }
	if args[1] == 'open' or args[1] == 'show' then
		Open = true
		return
	end
	if args[1] == 'close' or args[1] == 'hide' then
		Open = false
		return
	end
	if args[1] == nil or args[1] == "Help" or args[1] == "help" then
		ArgHandler.VNInfo()
		Open = true
	else
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
		end
		if args[1] == "Pause" or args[1] == "pause" then
			VNPaused = not VNPaused
			cprint("Pause: %s", tostring(VNPaused))
		end
		if args[1] == "Unpause" or args[1] == "unpause" then
			VNPaused = false
			cprint("Pause: %s", tostring(VNPaused))
		end
		if args[1] == "config" or args[1] == "Config" then
			if args[2] == nil then
				ArgHandler.VNConfigInfo()
				OpenConfig = true
			else
				if args[2] ~= nil and args[3] ~= nil then
					local category = { Config.General, Config.Damage, Config.Pet, Config.Feign, Config.Mana, Config.CC}
					local option = args[2]
					local uservalue = args[3]
					for index, section in ipairs(category) do
						if section[option] ~= nil then
							ArgHandler.setConfig(section, option, uservalue)
							return
						end
					end

				end
			end
		end
		if args[1] ~= nil and args[2] ~= nil then
			local category = { Config.General, Config.Damage, Config.Pet, Config.Feign, Config.Mana, Config.CC}
			local option =args[1]
			local uservalue = args[2]
			for index, section in ipairs(category) do
				if section[option] ~= nil then
					ArgHandler.setConfig(section, option, uservalue)
					return
				end
			end
		end
		if args[1] == "burnnow"
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

end



return ArgHandler
