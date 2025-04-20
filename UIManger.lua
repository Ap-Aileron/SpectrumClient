local Players = game:GetService("Players")
local player = Players.LocalPlayer
print("Player Defined")


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "main"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")
print("ScreenGui Defined")

-- Main Frame
local mainFrame = Instance.new("ScrollingFrame")
mainFrame.ScrollBarThickness = 0
mainFrame.Size = UDim2.new(0, 300, 0, 300)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Active = true
mainFrame.Parent = screenGui
print("MainFrame Defined")

-- Dynamic scaling
local function updateSize()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local scale = math.min(viewportSize.X, viewportSize.Y) / 1080
    scale = math.clamp(scale, 0.5, 10) -- Limit scaling between 0.5x and 1.2x
    
    -- Apply scale to frame
    local baseSize = Vector2.new(300, 300)
    mainFrame.Size = UDim2.new(0, baseSize.X * scale, 0, baseSize.Y * scale)
end


-- Connect to viewport size change
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateSize)
updateSize() -- Initialize size
print("Size Updated")

-- Apply rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = mainFrame

-- Shadow effect (optional)
local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 40, 1, 40)
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://5028857084" -- Shadow asset
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.6
shadow.ZIndex = -1
shadow.Parent = mainFrame

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
titleBar.BorderSizePixel = 0
titleBar.Name = "TitleBar"
titleBar.Parent = mainFrame
print("TitleBar Defined")

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

-- Title Text
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0.7, 0, 1, 0)
titleText.Position = UDim2.new(0, 15, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "Spectrum"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 18
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar
print("TitleText Defined")

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
closeButton.Text = "×"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 24
closeButton.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeButton

print("CloseButton Defined")

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 5)
minimizeButton.BackgroundColor3 = Color3.fromRGB(80, 80, 255)
minimizeButton.Text = "−"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.TextSize = 24
minimizeButton.Parent = titleBar

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(1, 0)
minimizeCorner.Parent = minimizeButton
print("MinimizeButton Defined")

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 1, -40)
contentFrame.Position = UDim2.new(0, 0, 0, 40)
contentFrame.BackgroundTransparency = 1
contentFrame.ClipsDescendants = true
contentFrame.Parent = mainFrame
print("ContentFrame Defined")

-- Watermark
local watermark = Instance.new("TextLabel")
watermark.Size = UDim2.new(0, 150, 0, 20)
watermark.Position = UDim2.new(0, 10, 1, -25)
watermark.BackgroundTransparency = 1
watermark.Text = "Created by: pzcax"
watermark.TextColor3 = Color3.new(0.7, 0.7, 0.7)
watermark.Font = Enum.Font.Gotham
watermark.TextSize = 14
watermark.TextXAlignment = Enum.TextXAlignment.Left
watermark.Parent = contentFrame
print("watermark Defined")

-- Layout for content
local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 15)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = contentFrame
print("Layout Defined")

local padding = Instance.new("UIPadding")
padding.PaddingTop = UDim.new(0, 15)
padding.PaddingLeft = UDim.new(0, 20)
padding.PaddingRight = UDim.new(0, 20)
padding.PaddingBottom = UDim.new(0, 35) -- Make room for watermark
padding.Parent = contentFrame
print("Padding Defined")
