--- @type Mq
local mq = require('mq')

--- @type ImGui
require 'ImGui'

local ICON = require('lib.icons')

local openGUI = true
local shouldDrawGUI = true

local searchText = ""

local function DrawMainWindow()
    if not openGUI then return end
    openGUI, shouldDrawGUI = ImGui.Begin('Example Icon App', openGUI)
    if shouldDrawGUI then

        searchText = ImGui.InputText("Filter Icons", searchText, 100)
        searchText = trim(searchText)

        for key, value in pairs(ICON) do
            if string.len(searchText) <= 0 or string.match(key, searchText) then
                ImGui.Text(string.format('%s : %s', value, key))
            end
        end

    end
    ImGui.End()
end

function trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
 end

mq.imgui.init('Icon Example', DrawMainWindow)

while openGUI do
    mq.delay(1000)
end