print("Auto Sex Loaded! -- By: Tiurabe")

_G.autothing = 1

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_Roundify_25px = Instance.new("ImageLabel")
local DropShadow = Instance.new("ImageLabel")
local TextButton_2 = Instance.new("TextButton")
local TextButton_Roundify_25px_2 = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0084269885, 0, 0.304780871, 0)
Frame.Size = UDim2.new(0, 153, 0, 125)
Frame.ZIndex = 3
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(170, 0, 0)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.250
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.127643585, 0, 0.58844614, 0)
TextButton.Size = UDim2.new(0, 122, 0, 24)
TextButton.ZIndex = 100
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Masturbation: OFF"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_Roundify_25px.Name = "TextButton_Roundify_25px"
TextButton_Roundify_25px.Parent = TextButton
TextButton_Roundify_25px.Active = true
TextButton_Roundify_25px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_25px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_25px.BackgroundTransparency = 1.000
TextButton_Roundify_25px.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_25px.Selectable = true
TextButton_Roundify_25px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_25px.ZIndex = 99
TextButton_Roundify_25px.Image = "rbxassetid://3570695787"
TextButton_Roundify_25px.ImageColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Roundify_25px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_25px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_25px.SliceScale = 0.250

DropShadow.Name = "DropShadow"
DropShadow.Parent = Frame
DropShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0, 5, 0, 5)
DropShadow.Size = UDim2.new(1, 0, 1, 0)
DropShadow.Image = "rbxassetid://3570695787"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(100, 100, 100, 100)
DropShadow.SliceScale = 0.250

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.127643585, 0, 0.196446151, 0)
TextButton_2.Size = UDim2.new(0, 122, 0, 24)
TextButton_2.ZIndex = 100
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Blowjob: OFF"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

TextButton_Roundify_25px_2.Name = "TextButton_Roundify_25px"
TextButton_Roundify_25px_2.Parent = TextButton_2
TextButton_Roundify_25px_2.Active = true
TextButton_Roundify_25px_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_25px_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_25px_2.BackgroundTransparency = 1.000
TextButton_Roundify_25px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_25px_2.Selectable = true
TextButton_Roundify_25px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_25px_2.ZIndex = 99
TextButton_Roundify_25px_2.Image = "rbxassetid://3570695787"
TextButton_Roundify_25px_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Roundify_25px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_25px_2.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_25px_2.SliceScale = 0.250

--Scripts:

--Masturbation Button

TextButton.MouseButton1Click:Connect(function()
	if TextButton.Text == "Masturbation: OFF" and TextButton_2.Text == "Blowjob: OFF" then
		TextButton.Text = "Masturbation: ON"
	elseif TextButton.Text == "Masturbation: OFF" and TextButton_2.Text == "Blowjob: ON" then
		TextButton_2.Text = "Blowjob: OFF"
		TextButton.Text = "Masturbation: ON"
	else
		TextButton.Text = "Masturbation: OFF"
	end
end)

--Blowjob Button

TextButton_2.MouseButton1Click:Connect(function()
	if TextButton_2.Text == "Blowjob: OFF" and TextButton.Text == "Masturbation: OFF" then
		TextButton_2.Text = "Blowjob: ON"
	elseif TextButton_2.Text == "Blowjob: OFF" and TextButton.Text == "Masturbation: ON" then
		TextButton.Text = "Masturbation: OFF"
		TextButton_2.Text = "Blowjob: ON"
	else
		TextButton_2.Text = "Blowjob: OFF"
	end
end)

--Sex

while wait(0.4) do
	if TextButton_2.Text == "Blowjob: ON" and iswindowactive() then
		keypress(0x43)
		wait()
		keyrelease(0x43)
	elseif TextButton.Text == "Masturbation: ON" and iswindowactive() then
		keypress(0x58)
		wait()
		keyrelease(0x58)
	end
end
