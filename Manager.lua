loadstring(game:HttpGet("https://raw.githubusercontent.com/Ap-Aileron/SpectrumClient/refs/heads/main/UIManger.lua"))();

-- FUNCTIONS SECTION {

local player = game:GetService("Players").LocalPlayer
local clickGui = script.Parent.ClickGUI

-- Create Module table to store all functions and events
local Module = {
	Events = {}
}

-- FUNCTIONS SECTION 

-- Check if a module has rounded corners
local function isRounded(name, header)
	local module = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules:FindFirstChild(name)
	if module:FindFirstChildWhichIsA("Frame") then
		return true
	else
		return false
	end
end

-- Connect click event to a module
local function connectClickEvent(moduleName, moduleFrame, header)
	moduleFrame.title.MouseButton1Click:Connect(function()
		print(moduleName .. " was clicked!")

		local isEnabled = moduleFrame.BackgroundColor3 == Color3.fromRGB(163, 184, 252)

		if moduleName == "ClickGUI" then
			Module.Disable(moduleName, header)
			Module.Remove(moduleName, "arraylist")
			player.PlayerGui.main.ClickGUI.Visible = false
			return
		end

		if isEnabled then
			Module.Disable(moduleName, header)
			Module.Remove(moduleName, "arraylist")
		else
			Module.Enable(moduleName, header)
			Module.Add(moduleName, "arraylist")
		end

		if Module.Events[moduleName] then
			Module.Events[moduleName](not isEnabled)
		end
	end)

	print("Click event connected for module: " .. moduleName)
end

-- Add a module to the GUI
function Module.Add(name, location, header, rounded)
	print("Module.Add() Has been called...")
	print("    Module Location Set To: ".. location)
	print("    Module Header Set To: ".. (header or "None"))

	local module

	if location == "arraylist" then
		local frame = game.ReplicatedStorage:WaitForChild("array")
		module = frame:Clone()
		module.Parent = player.PlayerGui.main.arraylist.Modules
		module.Name = name
		print("    Module Frame Created")
		local title = module:WaitForChild("title")
		title.Text = name
		print("    Module Name Created")

		local titleLength = #name
		local fontSize = 14
		local titleWidth = titleLength * fontSize + 44 
		module.Size = UDim2.new(0, titleWidth, 0, 44)  
		print("    Module Size Calculated")
		print("Module ".. name.. " Has Been Created & Added To ArrayList")

	elseif location == "clickgui" then
		if not header then
			warn("Header is required for clickgui location. Module.Add() Failed")
			return nil
		end

		if rounded == true then
			local frame = game.ReplicatedStorage:WaitForChild("clickRounded")
			module = frame:Clone()
			module.Parent = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules
			module.Name = name
			print("    Module Frame Created")
			local title = module:WaitForChild("title")
			title.Text = name
		else
			local frame = game.ReplicatedStorage:WaitForChild("click")
			module = frame:Clone()
			module.Parent = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules
			module.Name = name
			print("    Module Frame Created")
			local title = module:WaitForChild("title")
			title.Text = name
		end
		print("    Module Name Created")

		connectClickEvent(name, module, header)
	else 
		warn("Unknown Location. Module.Add() Failed") 
		return nil
	end

	return module
end

-- Remove a module from the GUI
function Module.Remove(name, location, header)
	print("Module.Remove() Has Been Called...")
	print("    Name Of Module To Remove: ".. name)
	print("    Location Of Module: ".. location)
	if header then
		print("    Header Of Module: ".. header)
	end

	if Module.Events[name] then
		Module.Events[name] = nil
	end

	if location == "arraylist" then
		local module = player.PlayerGui.main.arraylist.Modules:FindFirstChild(name)
		if module then
			module:Destroy()
			print("    Module Has Been Found & Destroyed")
		else
			warn("    Module Was Not Found In The First Place")
		end
	elseif location == "clickgui" then
		if not header then
			warn("Header is required for clickgui location. Module.Remove() Failed")
			return
		end

		local module = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules:FindFirstChild(name)
		if module then
			module:Destroy()
			print("    Module Has Been Found & Destroyed")
		else
			warn("    Module Was Not Found In The First Place")
		end
	end
end

-- Enable a module in the GUI
function Module.Enable(name, header)
	print("Module.Enable() Has Been Called...")
	print("    Name Of Module To Enable: ".. name)

	if not header then
		warn("Header is required. Module.Enable() Failed")
		return
	end

	local module = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules:FindFirstChild(name)
	if not module then
		warn("Module not found: " .. name .. " in header: " .. header)
		return
	end

	module.BackgroundColor3 = Color3.fromRGB(163, 184, 252)

	if isRounded(name, header) then
		module:FindFirstChildWhichIsA("Frame").BackgroundColor3 = Color3.fromRGB(163, 184, 252)
	end
end

-- Disable a module in the GUI
function Module.Disable(name, header)
	print("Module.Disable() Has Been Called...")
	print("    Name Of Module To Disable: ".. name)

	if not header then
		warn("Header is required. Module.Disable() Failed")
		return
	end

	local module = player.PlayerGui.main.ClickGUI:FindFirstChild(header).ModuleFrame.Modules:WaitForChild(name)
	if not module then
		warn("Module not found: " .. name .. " in header: " .. header)
		return
	end

	module.BackgroundColor3 = Color3.fromRGB(90, 90, 90)

	if isRounded(name, header) then
		module:FindFirstChildWhichIsA("Frame").BackgroundColor3 = Color3.fromRGB(90, 90, 90)
	end
end

-- Register a callback function for when a module is toggled
function Module.OnToggle(moduleName, callback)
	if type(callback) == "function" then
		Module.Events[moduleName] = callback
		print("Registered click callback for module: " .. moduleName)
	else
		warn("Invalid callback provided for module: " .. moduleName)
	end
end

-- Initialize the modules
Module.Add("Aura", "clickgui", "Combat", false)
Module.Disable("Aura", "Combat")

Module.Add("Aimbot", "clickgui", "Combat", false)
Module.Disable("Aimbot", "Combat")

Module.Add("Reach", "clickgui", "Combat", true)
Module.Disable("Reach", "Combat")

Module.Add("Speed", "clickgui", "Player", false)
Module.Disable("Speed", "Player")

Module.Add("Flight", "clickgui", "Player", true)
Module.Disable("Flight", "Player")

Module.Add("ClickGUI", "clickgui", "Visual", true)
Module.Disable("ClickGUI", "Visual")

-- Example of how to register a module toggle callback
-- Uncomment to use:
--[[
Module.OnToggle("Aura", function(isEnabled)
	if isEnabled then
		print("Aura has been enabled! Add your custom functionality here.")
	else
		print("Aura has been disabled! Revert any changes here.")
	end
end)
--]]

-- Return the Module table to use in other scripts if needed
return Module

