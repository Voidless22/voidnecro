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
---@type Icons
local icons = require 'mq/icons'



local petsetupdone = false
VNPaused = false
Burnnow = false



local running = true
Open, ShowUI = true, true
OpenConfig, ShowConfig = false, false
local window_flags = 0
local no_titlebar = true
local no_scrollbar = true
local no_resize = true
if no_titlebar then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoTitleBar) end
if no_scrollbar then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoScrollbar) end
if no_resize then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoResize) end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local lineCount = 0
local section_listbox = {
	items = { 'Quick Settings', 'Damage', 'CC', 'Pet', 'Mana', 'Feign' },
	selected = 1
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function insertSection(section)
	local i = 1
	for index, value in pairs(section) do
		if section_listbox.items[i] ~= index then
			section_listbox.items[i] = index
			i = i + 1
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function sectionHandler(section)
	if section ~= nil then
		insertSection(section)
	end

	imgui.SetCursorPos(10, 60)

	if imgui.BeginListBox("", ImVec2(150, 350)) then
		for i, item in pairs(section_listbox.items) do
			local _, clicked = imgui.Selectable(item, section_listbox.selected == i)
			imgui.Separator()
			if clicked then section_listbox.selected = i end
		end
	end
	imgui.EndListBox()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function DrawConfigWindow()
	ImGui.SetWindowSize(ImVec2(500, 500))
	ImGui.SameLine()
	ImGui.SetCursorPosX((imgui.GetWindowSize() / 2) - (imgui.CalcTextSize("VoidNecro Config") / 2))
	imgui.Text("VoidNecro Config %s", icons.FA_COG)
	imgui.Separator()
	sectionHandler()

	local section = section_listbox.items[section_listbox.selected]
	if section == 'Quick Settings' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.General) do
			imgui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.General[index] = not Config.General[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.General[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.General[index] = value
				end
			end
		end
	end
	if section == 'Damage' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.Damage) do
			imgui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(320)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.Damage[index] = not Config.Damage[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(320)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.Damage[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(320)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.Damage[index] = value
				end
			end
		end
	end
	if section == 'CC' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.CC) do
			imgui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.CC[index] = not Config.CC[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.CC[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.CC[index] = value
				end
			end
		end
	end
	if section == 'Mana' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.Mana) do
			imgui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.Mana[index] = not Config.Mana[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.Mana[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.Mana[index] = value
				end
			end
		end
	end
	if section == 'Pet' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.Pet) do
			imgui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.Pet[index] = not Config.Pet[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.Pet[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(300)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.Pet[index] = value
				end
			end
		end
	end
	if section == 'Feign' then
		imgui.SetCursorPosY(60)
		for index, value in pairs(Config.Feign) do
			imgui.SetCursorPosX(165)
			if type(value) == 'boolean' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.Checkbox("##" .. index, value)
				if clicked then
					Config.Feign[index] = not Config.Feign[index]
				end
			elseif type(value) == 'string' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.InputText("##" .. index, value)
				if clicked then
					Config.Feign[index] = value
				end
			elseif type(value) == 'number' then
				imgui.Text(index)
				imgui.SameLine()
				imgui.SetCursorPosX(260)
				local value, clicked = imgui.InputInt("##" .. index, value)
				if clicked then
					Config.Feign[index] = value
				end
			end
		end
	end

	local configX, configY = imgui.GetWindowSize()
	imgui.SetCursorPos((configX - imgui.CalcTextSize("Close")) - 10, configY - 25)
	local closeConfig = imgui.Button('Close')
	if closeConfig then
		OpenConfig = false
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function DrawMainWindow()
	ImGui.PushStyleColor(ImGuiCol.Button, 0.0, 0.0, 0.0, 0.0)
	ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 0.0, 0.0, 0.0, 0.0)
	ImGui.PushStyleColor(ImGuiCol.ButtonActive, 0.0, 0.0, 0.0, 0.0)

	local PosX = (imgui.GetIO().DisplaySize.x / 2) - (imgui.GetWindowSize() / 2)
	local PosY = 3 * (imgui.GetIO().DisplaySize.y / 4)

	local windowSizeX, windowSizeY = imgui.GetWindowSize()
	imgui.SetWindowPos('VoidNecro', PosX, PosY, ImGuiCond.Once)
	imgui.SetWindowSize('VoidNecro', 1024, 32)
	ImGui.SetCursorPosX((windowSizeX / 2) - (imgui.CalcTextSize("VoidNecro V0.1") / 2))
	ImGui.SetCursorPosY(windowSizeY / 4)
	imgui.Text("VoidNecro v0.1")
	ImGui.SetCursorPosX(425)
	ImGui.SetCursorPosY(0)
	ImGui.SetWindowFontScale(1.25)
	local ConfigButton = ImGui.Button(icons.FA_COG, 32, 32)
	ImGui.SetWindowFontScale(1)

	if ConfigButton then
		OpenConfig = not OpenConfig
	end
	ImGui.PopStyleColor(3)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------
ScribeCheck = false
GoGetSpells = false

local function scribeCheckPopup()
	if imgui.BeginPopupModal('Scribe Popup') then
		imgui.Text("You are missing the following spells:")
		if ScribeModule.neededSpells ~= nil then
			for i, v in pairs(ScribeModule.neededSpells) do
				imgui.Text('[%i] %s', i, v)
			end
		end
		imgui.Text("Would you like to get them now?")
		if imgui.Button("Yes") then
			GoGetSpells = true
			imgui.CloseCurrentPopup()
		end
		imgui.SameLine()
		if imgui.Button("No") then
			imgui.CloseCurrentPopup()
		end
		imgui.EndPopup()
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------
local function VNGuiLoop()
	if Open then
		Open, ShowUI = ImGui.Begin("VoidNecro", Open, window_flags)
		if ShowUI then
			DrawMainWindow()
		end
		ImGui.End()
	end
	if OpenConfig then
		OpenConfig, ShowConfig = ImGui.Begin("VoidNecro Config", OpenConfig, window_flags)
		if ShowConfig then
			DrawConfigWindow()
		end
		ImGui.End()
	end
	if ScribeCheck then
		imgui.OpenPopup('Scribe Popup')
		ScribeCheck = false
	end
	scribeCheckPopup()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------



mq.imgui.init("VoidNecro", VNGuiLoop)

ScribeModule.checkNeededSpells()
argHandler.VNInfo()
AbilitySet = AbilitySets[mq.TLO.Me.Level()]
cprint('Current Level Ability Set: %s', AbilitySet.Level)
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
		if Config.General.tank and not mq.TLO.Pet.Taunt() then
			mq.cmdf('/pet taunt on')
		elseif not Config.General.tank and mq.TLO.Pet.Taunt() then
			mq.cmdf('/pet taunt off')
		end


		if AbilitySet.Level ~= mq.TLO.Me.Level() then
			AbilitySet = AbilitySets[mq.TLO.Me.Level()]
			cprint('DING! You leveled up! New Ability Set: %s', AbilitySet.Level)
			if not MiscModule.inCombat() then
				MiscModule.LoadSpells()
			end
		end
		if GoGetSpells then
			ScribeModule.GetSpells()
		end
		local totalBuffs = 0
		for i = 1, #AbilitySet.Buffs do
			if mq.TLO.Me.Buff(AbilitySet.Buffs[i])() then
				totalBuffs = totalBuffs + 1
			end
		end
		if totalBuffs < #AbilitySet.Buffs then
			MiscModule.BuffHandler()
		end

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


mq.bind('/getspells', function() ScribeCheck = true end)
mq.bind("/vn", argHandler.vnbind)


while running do
	mq.delay(250)
	VNMain()
end
