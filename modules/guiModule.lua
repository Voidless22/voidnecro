local mq = require('mq')
local ImGui = require('ImGui')
local icons = require 'mq/icons'

local window_flags = 0
local no_titlebar = true
local no_scrollbar = true
local no_resize = true
if no_titlebar then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoTitleBar) end
if no_scrollbar then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoScrollbar) end
if no_resize then window_flags = bit32.bor(window_flags, ImGuiWindowFlags.NoResize) end



GuiModule = {}


----------------------------------------------------------------------------------------------------------------------------------------------------------------
local section_listbox = {
	items = { 'Quick Settings', 'Damage', 'CC' },
	selected = 1
}

function GuiModule.sectionHandler(section)
	ImGui.SetCursorPos(10, 60)

	if ImGui.BeginListBox("", ImVec2(150, 350)) then
		for i, item in pairs(section_listbox.items) do
			local _, clicked = ImGui.Selectable(item, section_listbox.selected == i)
			ImGui.Separator()
			if clicked then section_listbox.selected = i end
		end
	end
	ImGui.EndListBox()
end
local modes = { "Chase", "Camp" }
local current_mode_id = 1

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function GuiModule.DrawConfigWindow()
	ImGui.SetWindowSize(500, 500)
	ImGui.SameLine()
	ImGui.SetCursorPosX((ImGui.GetWindowSize() / 2) - (ImGui.CalcTextSize("VoidNecro Config") / 2))
	--ImGui.Text("VoidNecro Config %s", icons.FA_COG)
	ImGui.Separator()
	GuiModule.sectionHandler()


	local section = section_listbox.items[section_listbox.selected]
	if section == 'Quick Settings' then
		ImGui.SetCursorPosY(60)
		for index, value in pairs(Config.General) do
			ImGui.SetCursorPosX(165)
			if type(value) == 'boolean' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(260)
				local value, clicked = ImGui.Checkbox("##" .. index, value)
				if clicked then
					Config.General[index] = not Config.General[index]
				end
				-- hardcoded dropdown selection for mode 
			elseif index == 'Mode' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(260)
				current_mode_id = ImGui.Combo("Mode", current_mode_id, function (id) return modes[id] end, #modes)
				--local value, clicked = ImGui.InputText("##" .. index, value)
				if Config.General[index] ~= current_mode_id then
					Config.General[index] = current_mode_id
				end

			elseif type(value) == 'number' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(260)
				local value, clicked = ImGui.InputInt("##" .. index, value)
				if clicked then
					Config.General[index] = value
				end
			end
		end
	end
	if section == 'Damage' then
		ImGui.SetCursorPosY(60)
		for index, value in pairs(Config.Damage) do
			ImGui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(320)
				local value, clicked = ImGui.Checkbox("##" .. index, value)
				if clicked then
					Config.Damage[index] = not Config.Damage[index]
				end
			elseif type(value) == 'string' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(320)
				local value, clicked = ImGui.InputText("##" .. index, value)
				if clicked then
					Config.Damage[index] = value
				end
			elseif type(value) == 'number' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(320)
				local value, clicked = ImGui.InputInt("##" .. index, value)
				if clicked then
					Config.Damage[index] = value
				end
			end
		end
	end
	if section == 'CC' then
		ImGui.SetCursorPosY(60)
		for index, value in pairs(Config.CC) do
			ImGui.SetCursorPosX(165)

			if type(value) == 'boolean' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(300)
				local value, clicked = ImGui.Checkbox("##" .. index, value)
				if clicked then
					Config.CC[index] = not Config.CC[index]
				end
			elseif type(value) == 'string' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(300)
				local value, clicked = ImGui.InputText("##" .. index, value)
				if clicked then
					Config.CC[index] = value
				end
			elseif type(value) == 'number' then
				ImGui.Text(index)
				ImGui.SameLine()
				ImGui.SetCursorPosX(300)
				local value, clicked = ImGui.InputInt("##" .. index, value)
				if clicked then
					Config.CC[index] = value
				end
			end
		end
	end



	local configX, configY = ImGui.GetWindowSize()
	ImGui.SetCursorPos((configX - ImGui.CalcTextSize("Close")) - 10, configY - 25)
	local closeConfig = ImGui.Button('Close')
	if closeConfig then
		OpenConfig = not OpenConfig
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
function GuiModule.DrawMainWindow()
	ImGui.PushStyleColor(ImGuiCol.Button, 0.0, 0.0, 0.0, 0.0)
	ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 0.0, 0.0, 0.0, 0.0)
	ImGui.PushStyleColor(ImGuiCol.ButtonActive, 0.0, 0.0, 0.0, 0.0)

	local PosX = (ImGui.GetIO().DisplaySize.x / 2) - (ImGui.GetWindowSize() / 2)
	local PosY = 3 * (ImGui.GetIO().DisplaySize.y / 4)

	local windowSizeX, windowSizeY = ImGui.GetWindowSize()
	ImGui.SetWindowPos('VoidNecro', PosX, PosY, ImGuiCond.Once)
	ImGui.SetWindowSize('VoidNecro', 1024, 32)
	ImGui.SetCursorPosX((windowSizeX / 2) - (ImGui.CalcTextSize("VoidNecro V0.1") / 2))
	ImGui.SetCursorPosY(windowSizeY / 4)
	ImGui.Text("VoidNecro v0.1")
	ImGui.SetCursorPosX(425)
	ImGui.SetCursorPosY(0)
	ImGui.SetWindowFontScale(1.25)
	local ConfigButton = ImGui.Button(icons.FA_COG, 32, 32)
	ImGui.SetWindowFontScale(1)

	if ConfigButton then
		OpenConfig = true
	end
	ImGui.PopStyleColor(3)
end

function GuiModule.VNGuiLoop()
	if Open then
		Open, ShowUI = ImGui.Begin("VoidNecro", Open, window_flags)
		if ShowUI then
			GuiModule.DrawMainWindow()
		end
		ImGui.End()
	end
	if OpenConfig then
		OpenConfig, ShowConfig = ImGui.Begin("VoidNecro Config", OpenConfig, window_flags)
		if ShowConfig then
			GuiModule.DrawConfigWindow()
		end
		ImGui.End()
	end
end

return GuiModule
