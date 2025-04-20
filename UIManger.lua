local screenGui = Instance.new("ScreenGui")
screenGui.Name = "main"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 300)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Active = true
mainFrame.Parent = screenGui

-- Dynamic scaling
local function updateSize()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local scale = math.min(viewportSize.X, viewportSize.Y) / 1080
    scale = math.clamp(scale, 0.5, 1.2) -- Limit scaling between 0.5x and 1.2x
    
    -- Apply scale to frame
    local baseSize = Vector2.new(300, 300)
    mainFrame.Size = UDim2.new(0, baseSize.X * scale, 0, baseSize.Y * scale)
end

-- Connect to viewport size change
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateSize)
updateSize() -- Initialize size

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

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

-- Title Text
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0.7, 0, 1, 0)
titleText.Position = UDim2.new(0, 15, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "Movement GUI"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 18
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar

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

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 1, -40)
contentFrame.Position = UDim2.new(0, 0, 0, 40)
contentFrame.BackgroundTransparency = 1
contentFrame.ClipsDescendants = true
contentFrame.Parent = mainFrame

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

-- Layout for content
local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 15)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = contentFrame

local padding = Instance.new("UIPadding")
padding.PaddingTop = UDim.new(0, 15)
padding.PaddingLeft = UDim.new(0, 20)
padding.PaddingRight = UDim.new(0, 20)
padding.PaddingBottom = UDim.new(0, 35) -- Make room for watermark
padding.Parent = contentFrame

-- Draggable functionality
local dragging = false
local dragOffset

titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragOffset = input.Position - mainFrame.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		mainFrame.Position = UDim2.new(0, input.Position.X - dragOffset.X.Offset, 0, input.Position.Y - dragOffset.Y.Offset)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

-- Minimize/Maximize functionality
local isMinimized = false
local originalSize = mainFrame.Size
local minimizedSize = UDim2.new(0, mainFrame.Size.X.Offset, 0, 40)

minimizeButton.MouseButton1Click:Connect(function()
	isMinimized = not isMinimized
	
	local targetSize = isMinimized and minimizedSize or originalSize
	local targetPos = isMinimized and 
		UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, 
		mainFrame.Position.Y.Scale, mainFrame.Position.Y.Offset + (originalSize.Y.Offset - minimizedSize.Y.Offset)/2) or
		UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, 
		mainFrame.Position.Y.Scale, mainFrame.Position.Y.Offset - (originalSize.Y.Offset - minimizedSize.Y.Offset)/2)
	
	contentFrame.Visible = not isMinimized
	minimizeButton.Text = isMinimized and "+" or "−"
	
	-- Animate the minimization
	TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = targetSize,
		Position = targetPos
	}):Play()
end)

-- Close functionality
closeButton.MouseButton1Click:Connect(function()
	-- Animate fade out
	local fadeTween = TweenService:Create(mainFrame, TweenInfo.new(0.3), {
		BackgroundTransparency = 1
	})
	
	fadeTween:Play()
	fadeTween.Completed:Connect(function()
		screenGui:Destroy()
	end)
	
	-- Fade out shadow too
	TweenService:Create(shadow, TweenInfo.new(0.3), {
		ImageTransparency = 1
	}):Play()
end)

-- Hover animations for buttons
local function setupButtonHover(button, baseColor, hoverColor)
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = hoverColor}):Play()
	end)
	
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = baseColor}):Play()
	end)
end

setupButtonHover(closeButton, Color3.fromRGB(255, 80, 80), Color3.fromRGB(255, 50, 50))
setupButtonHover(minimizeButton, Color3.fromRGB(80, 80, 255), Color3.fromRGB(50, 50, 255))
