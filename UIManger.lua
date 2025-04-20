-- GUI Recreation Script
-- This script will recreate the GUI based on the provided properties

-- Create the main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "main"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the arraylist frame
local arraylist = Instance.new("Frame")
arraylist.Name = "arraylist"
arraylist.Parent = screenGui
arraylist.Visible = true
arraylist.Active = false
arraylist.Selectable = false
arraylist.AnchorPoint = Vector2.new(0, 0)
arraylist.ZIndex = 1
arraylist.BorderSizePixel = 0
arraylist.Size = UDim2.new(0, 255, 0, 907)
arraylist.ClipsDescendants = false
arraylist.BorderColor3 = Color3.fromRGB(0, 0, 0)
arraylist.LayoutOrder = 0
arraylist.Rotation = 0
arraylist.Transparency = 1
arraylist.BackgroundTransparency = 1
arraylist.Position = UDim2.new(0.844882727, 0, 0.0189274512, 0)
arraylist.AutomaticSize = Enum.AutomaticSize.None
arraylist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the ClickGUI frame
local clickGUI = Instance.new("Frame")
clickGUI.Name = "ClickGUI"
clickGUI.Parent = screenGui
clickGUI.Visible = true
clickGUI.Active = false
clickGUI.Selectable = false
clickGUI.AnchorPoint = Vector2.new(0, 0)
clickGUI.ZIndex = 1
clickGUI.BorderSizePixel = 0
clickGUI.Size = UDim2.new(0, 1788, 0, 919)
clickGUI.ClipsDescendants = false
clickGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
clickGUI.LayoutOrder = 0
clickGUI.Rotation = 0
clickGUI.Transparency = 1
clickGUI.BackgroundTransparency = 1
clickGUI.Position = UDim2.new(0.0202557985, 0, 0.0367793851, 0)
clickGUI.AutomaticSize = Enum.AutomaticSize.None
clickGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

-- Create the Combat frame
local combat = Instance.new("Frame")
combat.Name = "Combat"
combat.Parent = clickGUI
combat.Visible = true
combat.Active = false
combat.Selectable = false
combat.AnchorPoint = Vector2.new(0, 0)
combat.ZIndex = 1
combat.BorderSizePixel = 0
combat.Size = UDim2.new(0, 265, 0, 835)
combat.ClipsDescendants = false
combat.BorderColor3 = Color3.fromRGB(0, 0, 0)
combat.LayoutOrder = 0
combat.Rotation = 0
combat.Transparency = 1
combat.BackgroundTransparency = 1
combat.Position = UDim2.new(0.0430648774, 0, 0.0391730145, 0)
combat.AutomaticSize = Enum.AutomaticSize.None
combat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the ModuleFrame for Combat
local combatModuleFrame = Instance.new("Frame")
combatModuleFrame.Name = "ModuleFrame"
combatModuleFrame.Parent = combat
combatModuleFrame.Visible = true
combatModuleFrame.Active = false
combatModuleFrame.Selectable = false
combatModuleFrame.AnchorPoint = Vector2.new(0, 0)
combatModuleFrame.ZIndex = 1
combatModuleFrame.BorderSizePixel = 0
combatModuleFrame.Size = UDim2.new(0, 265, 0, 732)
combatModuleFrame.ClipsDescendants = false
combatModuleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatModuleFrame.LayoutOrder = 0
combatModuleFrame.Rotation = 0
combatModuleFrame.Transparency = 1
combatModuleFrame.BackgroundTransparency = 1
combatModuleFrame.Position = UDim2.new(0, 0, 0.0694610775, 0)
combatModuleFrame.AutomaticSize = Enum.AutomaticSize.None
combatModuleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Create the HeaderFrame for Combat
local combatHeaderFrame = Instance.new("Frame")
combatHeaderFrame.Name = "HeaderFrame"
combatHeaderFrame.Parent = combat
combatHeaderFrame.Visible = true
combatHeaderFrame.Active = false
combatHeaderFrame.Selectable = false
combatHeaderFrame.AnchorPoint = Vector2.new(0, 0)
combatHeaderFrame.ZIndex = 1
combatHeaderFrame.BorderSizePixel = 0
combatHeaderFrame.Size = UDim2.new(0, 265, 0, 58)
combatHeaderFrame.ClipsDescendants = false
combatHeaderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatHeaderFrame.LayoutOrder = 0
combatHeaderFrame.Rotation = 0
combatHeaderFrame.Transparency = 1
combatHeaderFrame.BackgroundTransparency = 1
combatHeaderFrame.Position = UDim2.new(0, 0, 0, 0)
combatHeaderFrame.AutomaticSize = Enum.AutomaticSize.None
combatHeaderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the HeaderSecondary for Combat
local combatHeaderSecondary = Instance.new("Frame")
combatHeaderSecondary.Name = "HeaderSecondary"
combatHeaderSecondary.Parent = combatHeaderFrame
combatHeaderSecondary.Visible = true
combatHeaderSecondary.Active = false
combatHeaderSecondary.Selectable = false
combatHeaderSecondary.AnchorPoint = Vector2.new(0, 0)
combatHeaderSecondary.ZIndex = 1
combatHeaderSecondary.BorderSizePixel = 0
combatHeaderSecondary.Size = UDim2.new(0, 265, 0, 34)
combatHeaderSecondary.ClipsDescendants = false
combatHeaderSecondary.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatHeaderSecondary.LayoutOrder = 0
combatHeaderSecondary.Rotation = 0
combatHeaderSecondary.Transparency = 0
combatHeaderSecondary.BackgroundTransparency = 0
combatHeaderSecondary.Position = UDim2.new(0, 0, 0.408052891, 0)
combatHeaderSecondary.AutomaticSize = Enum.AutomaticSize.None
combatHeaderSecondary.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create the HeaderMain for Combat
local combatHeaderMain = Instance.new("Frame")
combatHeaderMain.Name = "HeaderMain"
combatHeaderMain.Parent = combatHeaderFrame
combatHeaderMain.Visible = true
combatHeaderMain.Active = false
combatHeaderMain.Selectable = false
combatHeaderMain.AnchorPoint = Vector2.new(0, 0)
combatHeaderMain.ZIndex = 1
combatHeaderMain.BorderSizePixel = 0
combatHeaderMain.Size = UDim2.new(0, 265, 0, 58)
combatHeaderMain.ClipsDescendants = false
combatHeaderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatHeaderMain.LayoutOrder = 0
combatHeaderMain.Rotation = 0
combatHeaderMain.Transparency = 0
combatHeaderMain.BackgroundTransparency = 0
combatHeaderMain.Position = UDim2.new(0, 0, 0, 0)
combatHeaderMain.AutomaticSize = Enum.AutomaticSize.None
combatHeaderMain.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create UICorner for Combat HeaderMain
local combatHeaderMainCorner = Instance.new("UICorner")
combatHeaderMainCorner.Name = "UICorner"
combatHeaderMainCorner.Parent = combatHeaderMain
combatHeaderMainCorner.CornerRadius = UDim.new(1, 0)

-- Create TextLabel for Combat
local combatTextLabel = Instance.new("TextLabel")
combatTextLabel.Name = "TextLabel"
combatTextLabel.Parent = combatHeaderFrame
combatTextLabel.Visible = true
combatTextLabel.TextWrapped = true
combatTextLabel.LineHeight = 1
combatTextLabel.Active = false
combatTextLabel.Selectable = false
combatTextLabel.TextTransparency = 0
combatTextLabel.TextStrokeTransparency = 1
combatTextLabel.AnchorPoint = Vector2.new(0, 0)
combatTextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
combatTextLabel.Font = Enum.Font.Unknown
combatTextLabel.TextXAlignment = Enum.TextXAlignment.Center
combatTextLabel.ZIndex = 1
combatTextLabel.BorderSizePixel = 0
combatTextLabel.Size = UDim2.new(0, 200, 0, 50)
combatTextLabel.RichText = false
combatTextLabel.TextSize = 14
combatTextLabel.ClipsDescendants = false
combatTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatTextLabel.Text = "Combat"
combatTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
combatTextLabel.LayoutOrder = 0
combatTextLabel.Rotation = 0
combatTextLabel.Transparency = 1
combatTextLabel.BackgroundTransparency = 1
combatTextLabel.Position = UDim2.new(0.120754719, 0, 0.068965517, 0)
combatTextLabel.AutomaticSize = Enum.AutomaticSize.None
combatTextLabel.TextYAlignment = Enum.TextYAlignment.Center
combatTextLabel.TextScaled = true
combatTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the Player frame
local player = Instance.new("Frame")
player.Name = "Player"
player.Parent = clickGUI
player.Visible = true
player.Active = false
player.Selectable = false
player.AnchorPoint = Vector2.new(0, 0)
player.ZIndex = 1
player.BorderSizePixel = 0
player.Size = UDim2.new(0, 265, 0, 835)
player.ClipsDescendants = false
player.BorderColor3 = Color3.fromRGB(0, 0, 0)
player.LayoutOrder = 0
player.Rotation = 0
player.Transparency = 1
player.BackgroundTransparency = 1
player.Position = UDim2.new(0.234899327, 0, 0.0391730145, 0)
player.AutomaticSize = Enum.AutomaticSize.None
player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the ModuleFrame for Player
local playerModuleFrame = Instance.new("Frame")
playerModuleFrame.Name = "ModuleFrame"
playerModuleFrame.Parent = player
playerModuleFrame.Visible = true
playerModuleFrame.Active = false
playerModuleFrame.Selectable = false
playerModuleFrame.AnchorPoint = Vector2.new(0, 0)
playerModuleFrame.ZIndex = 1
playerModuleFrame.BorderSizePixel = 0
playerModuleFrame.Size = UDim2.new(0, 265, 0, 732)
playerModuleFrame.ClipsDescendants = false
playerModuleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerModuleFrame.LayoutOrder = 0
playerModuleFrame.Rotation = 0
playerModuleFrame.Transparency = 1
playerModuleFrame.BackgroundTransparency = 1
playerModuleFrame.Position = UDim2.new(0, 0, 0.0694610775, 0)
playerModuleFrame.AutomaticSize = Enum.AutomaticSize.None
playerModuleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Create the HeaderFrame for Player
local playerHeaderFrame = Instance.new("Frame")
playerHeaderFrame.Name = "HeaderFrame"
playerHeaderFrame.Parent = player
playerHeaderFrame.Visible = true
playerHeaderFrame.Active = false
playerHeaderFrame.Selectable = false
playerHeaderFrame.AnchorPoint = Vector2.new(0, 0)
playerHeaderFrame.ZIndex = 1
playerHeaderFrame.BorderSizePixel = 0
playerHeaderFrame.Size = UDim2.new(0, 265, 0, 58)
playerHeaderFrame.ClipsDescendants = false
playerHeaderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerHeaderFrame.LayoutOrder = 0
playerHeaderFrame.Rotation = 0
playerHeaderFrame.Transparency = 1
playerHeaderFrame.BackgroundTransparency = 1
playerHeaderFrame.Position = UDim2.new(0, 0, 0, 0)
playerHeaderFrame.AutomaticSize = Enum.AutomaticSize.None
playerHeaderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the HeaderSecondary for Player
local playerHeaderSecondary = Instance.new("Frame")
playerHeaderSecondary.Name = "HeaderSecondary"
playerHeaderSecondary.Parent = playerHeaderFrame
playerHeaderSecondary.Visible = true
playerHeaderSecondary.Active = false
playerHeaderSecondary.Selectable = false
playerHeaderSecondary.AnchorPoint = Vector2.new(0, 0)
playerHeaderSecondary.ZIndex = 1
playerHeaderSecondary.BorderSizePixel = 0
playerHeaderSecondary.Size = UDim2.new(0, 265, 0, 34)
playerHeaderSecondary.ClipsDescendants = false
playerHeaderSecondary.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerHeaderSecondary.LayoutOrder = 0
playerHeaderSecondary.Rotation = 0
playerHeaderSecondary.Transparency = 0
playerHeaderSecondary.BackgroundTransparency = 0
playerHeaderSecondary.Position = UDim2.new(0, 0, 0.408052891, 0)
playerHeaderSecondary.AutomaticSize = Enum.AutomaticSize.None
playerHeaderSecondary.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create the HeaderMain for Player
local playerHeaderMain = Instance.new("Frame")
playerHeaderMain.Name = "HeaderMain"
playerHeaderMain.Parent = playerHeaderFrame
playerHeaderMain.Visible = true
playerHeaderMain.Active = false
playerHeaderMain.Selectable = false
playerHeaderMain.AnchorPoint = Vector2.new(0, 0)
playerHeaderMain.ZIndex = 1
playerHeaderMain.BorderSizePixel = 0
playerHeaderMain.Size = UDim2.new(0, 265, 0, 58)
playerHeaderMain.ClipsDescendants = false
playerHeaderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerHeaderMain.LayoutOrder = 0
playerHeaderMain.Rotation = 0
playerHeaderMain.Transparency = 0
playerHeaderMain.BackgroundTransparency = 0
playerHeaderMain.Position = UDim2.new(0, 0, -0.0172413792, 0)
playerHeaderMain.AutomaticSize = Enum.AutomaticSize.None
playerHeaderMain.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create UICorner for Player HeaderMain
local playerHeaderMainCorner = Instance.new("UICorner")
playerHeaderMainCorner.Name = "UICorner"
playerHeaderMainCorner.Parent = playerHeaderMain
playerHeaderMainCorner.CornerRadius = UDim.new(1, 0)

-- Create TextLabel for Player
local playerTextLabel = Instance.new("TextLabel")
playerTextLabel.Name = "TextLabel"
playerTextLabel.Parent = playerHeaderFrame
playerTextLabel.Visible = true
playerTextLabel.TextWrapped = true
playerTextLabel.LineHeight = 1
playerTextLabel.Active = false
playerTextLabel.Selectable = false
playerTextLabel.TextTransparency = 0
playerTextLabel.TextStrokeTransparency = 1
playerTextLabel.AnchorPoint = Vector2.new(0, 0)
playerTextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
playerTextLabel.Font = Enum.Font.Unknown
playerTextLabel.TextXAlignment = Enum.TextXAlignment.Center
playerTextLabel.ZIndex = 1
playerTextLabel.BorderSizePixel = 0
playerTextLabel.Size = UDim2.new(0, 200, 0, 50)
playerTextLabel.RichText = false
playerTextLabel.TextSize = 14
playerTextLabel.ClipsDescendants = false
playerTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerTextLabel.Text = "Player"
playerTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
playerTextLabel.LayoutOrder = 0
playerTextLabel.Rotation = 0
playerTextLabel.Transparency = 1
playerTextLabel.BackgroundTransparency = 1
playerTextLabel.Position = UDim2.new(0.120754719, 0, 0, 0)
playerTextLabel.AutomaticSize = Enum.AutomaticSize.None
playerTextLabel.TextYAlignment = Enum.TextYAlignment.Center
playerTextLabel.TextScaled = true
playerTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the Visual frame
local visual = Instance.new("Frame")
visual.Name = "Visual"
visual.Parent = clickGUI
visual.Visible = true
visual.Active = false
visual.Selectable = false
visual.AnchorPoint = Vector2.new(0, 0)
visual.ZIndex = 1
visual.BorderSizePixel = 0
visual.Size = UDim2.new(0, 265, 0, 835)
visual.ClipsDescendants = false
visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
visual.LayoutOrder = 0
visual.Rotation = 0
visual.Transparency = 1
visual.BackgroundTransparency = 1
visual.Position = UDim2.new(0.435682327, 0, 0.0402611531, 0)
visual.AutomaticSize = Enum.AutomaticSize.None
visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the ModuleFrame for Visual
local visualModuleFrame = Instance.new("Frame")
visualModuleFrame.Name = "ModuleFrame"
visualModuleFrame.Parent = visual
visualModuleFrame.Visible = true
visualModuleFrame.Active = false
visualModuleFrame.Selectable = false
visualModuleFrame.AnchorPoint = Vector2.new(0, 0)
visualModuleFrame.ZIndex = 1
visualModuleFrame.BorderSizePixel = 0
visualModuleFrame.Size = UDim2.new(0, 265, 0, 732)
visualModuleFrame.ClipsDescendants = false
visualModuleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
visualModuleFrame.LayoutOrder = 0
visualModuleFrame.Rotation = 0
visualModuleFrame.Transparency = 1
visualModuleFrame.BackgroundTransparency = 1
visualModuleFrame.Position = UDim2.new(0, 0, 0.0694610775, 0)
visualModuleFrame.AutomaticSize = Enum.AutomaticSize.None
visualModuleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Create the HeaderFrame for Visual
local visualHeaderFrame = Instance.new("Frame")
visualHeaderFrame.Name = "HeaderFrame"
visualHeaderFrame.Parent = visual
visualHeaderFrame.Visible = true
visualHeaderFrame.Active = false
visualHeaderFrame.Selectable = false
visualHeaderFrame.AnchorPoint = Vector2.new(0, 0)
visualHeaderFrame.ZIndex = 1
visualHeaderFrame.BorderSizePixel = 0
visualHeaderFrame.Size = UDim2.new(0, 265, 0, 58)
visualHeaderFrame.ClipsDescendants = false
visualHeaderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
visualHeaderFrame.LayoutOrder = 0
visualHeaderFrame.Rotation = 0
visualHeaderFrame.Transparency = 1
visualHeaderFrame.BackgroundTransparency = 1
visualHeaderFrame.Position = UDim2.new(0, 0, 0, 0)
visualHeaderFrame.AutomaticSize = Enum.AutomaticSize.None
visualHeaderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create the HeaderSecondary for Visual
local visualHeaderSecondary = Instance.new("Frame")
visualHeaderSecondary.Name = "HeaderSecondary"
visualHeaderSecondary.Parent = visualHeaderFrame
visualHeaderSecondary.Visible = true
visualHeaderSecondary.Active = false
visualHeaderSecondary.Selectable = false
visualHeaderSecondary.AnchorPoint = Vector2.new(0, 0)
visualHeaderSecondary.ZIndex = 1
visualHeaderSecondary.BorderSizePixel = 0
visualHeaderSecondary.Size = UDim2.new(0, 265, 0, 34)
visualHeaderSecondary.ClipsDescendants = false
visualHeaderSecondary.BorderColor3 = Color3.fromRGB(0, 0, 0)
visualHeaderSecondary.LayoutOrder = 0
visualHeaderSecondary.Rotation = 0
visualHeaderSecondary.Transparency = 0
visualHeaderSecondary.BackgroundTransparency = 0
visualHeaderSecondary.Position = UDim2.new(0, 0, 0.459777057, 0)
visualHeaderSecondary.AutomaticSize = Enum.AutomaticSize.None
visualHeaderSecondary.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create the HeaderMain for Visual
local visualHeaderMain = Instance.new("Frame")
visualHeaderMain.Name = "HeaderMain"
visualHeaderMain.Parent = visualHeaderFrame
visualHeaderMain.Visible = true
visualHeaderMain.Active = false
visualHeaderMain.Selectable = false
visualHeaderMain.AnchorPoint = Vector2.new(0, 0)
visualHeaderMain.ZIndex = 1
visualHeaderMain.BorderSizePixel = 0
visualHeaderMain.Size = UDim2.new(0, 265, 0, 58)
visualHeaderMain.ClipsDescendants = false
visualHeaderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
visualHeaderMain.LayoutOrder = 0
visualHeaderMain.Rotation = 0
visualHeaderMain.Transparency = 0
visualHeaderMain.BackgroundTransparency = 0
visualHeaderMain.Position = UDim2.new(0, 0, 0.0344827585, 0)
visualHeaderMain.AutomaticSize = Enum.AutomaticSize.None
visualHeaderMain.BackgroundColor3 = Color3.fromRGB(67, 67, 67)

-- Create UICorner for Visual HeaderMain
local visualHeaderMainCorner = Instance.new("UICorner")
visualHeaderMainCorner.Name = "UICorner"
visualHeaderMainCorner.Parent = visualHeaderMain
visualHeaderMainCorner.CornerRadius = UDim.new(1, 0)

-- Create TextLabel for Visual
local visualTextLabel = Instance.new("TextLabel")
visualTextLabel.Name = "TextLabel"
visualTextLabel.Parent = visualHeaderFrame
visualTextLabel.Visible = true
visualTextLabel.TextWrapped = true
visualTextLabel.LineHeight = 1
visualTextLabel.Active = false
visualTextLabel.Selectable = false
visualTextLabel.TextTransparency = 0
visualTextLabel.TextStrokeTransparency = 1
visualTextLabel.AnchorPoint = Vector2.new(0, 0)
visualTextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
visualTextLabel.Font = Enum.Font.Unknown
visualTextLabel.TextXAlignment = Enum.TextXAlignment.Center
visualTextLabel.ZIndex = 1
visualTextLabel.BorderSizePixel = 0
visualTextLabel.Size = UDim2.new(0, 200, 0, 50)
visualTextLabel.RichText = false
visualTextLabel.TextSize = 14
visualTextLabel.ClipsDescendants = false
visualTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
visualTextLabel.Text = "Player" -- Note: In the data dump this shows "Player" but should probably be "Visual" based on context
visualTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
visualTextLabel.LayoutOrder = 0
visualTextLabel.Rotation = 0
visualTextLabel.Transparency = 1
visualTextLabel.BackgroundTransparency = 1
visualTextLabel.Position = UDim2.new(0.120754719, 0, 0.0344827585, 0)
visualTextLabel.AutomaticSize = Enum.AutomaticSize.None
visualTextLabel.TextYAlignment = Enum.TextYAlignment.Center
visualTextLabel.TextScaled = true
visualTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Create ClickGUIButton
local clickGUIButton = Instance.new("TextButton")
clickGUIButton.Name = "ClickGUIButton"
clickGUIButton.Parent = screenGui
clickGUIButton.LayoutOrder = 0
clickGUIButton.TextWrapped = true
clickGUIButton.LineHeight = 1
clickGUIButton.Active = true
clickGUIButton.TextStrokeTransparency = 1
clickGUIButton.ZIndex = 1
clickGUIButton.BorderSizePixel = 0
clickGUIButton.RichText = false
clickGUIButton.Modal = false
clickGUIButton.AutoButtonColor = true
clickGUIButton.Transparency = 0
clickGUIButton.TextYAlignment = Enum.TextYAlignment.Center
clickGUIButton.TextScaled = false
clickGUIButton.BackgroundColor3 = Color3.fromRGB(28, 127, 180)
clickGUIButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
clickGUIButton.AnchorPoint = Vector2.new(0, 0)
clickGUIButton.AutomaticSize = Enum.AutomaticSize.None
clickGUIButton.Size = UDim2.new(0, 200, 0, 50)
clickGUIButton.Visible = true
clickGUIButton.TextColor3 = Color3.fromRGB(249, 249, 249)
clickGUIButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
clickGUIButton.Text = "ClickGUI"
clickGUIButton.Selectable = true
clickGUIButton.TextTransparency = 0
clickGUIButton.Rotation = 0
clickGUIButton.Font = Enum.Font.Unknown
clickGUIButton.BackgroundTransparency = 0
clickGUIButton.Position = UDim2.new(0.00906183384, 0, 0.933808565, 0)
clickGUIButton.TextXAlignment = Enum.TextXAlignment.Center
clickGUIButton.TextSize = 33
clickGUIButton.ClipsDescendants = false

-- Create UICorner for ClickGUIButton
local clickGUIButtonCorner = Instance.new("UICorner")
clickGUIButtonCorner.Name = "UICorner"
clickGUIButtonCorner.Parent = clickGUIButton
clickGUIButtonCorner.CornerRadius = UDim.new(0, 8)

-- Add toggle functionality to ClickGUIButton
local function toggleClickGUI()
    clickGUI.Visible = not clickGUI.Visible
end

clickGUIButton.MouseButton1Click:Connect(toggleClickGUI)

-- Return the main ScreenGui
return screenGui
