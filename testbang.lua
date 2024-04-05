-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local tbxVictim = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local btnsex = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.218298122, 0, 0.245499179, 0)
Frame.Size = UDim2.new(0, 423, 0, 238)

Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui


TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(159, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.177304968, 0, 0.0336134471, 0)
TextLabel.Size = UDim2.new(0, 288, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Bang Script By Forest &Falcon "
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextWrapped = true

UICorner.Parent = TextLabel

UICorner_2.Parent = Frame

tbxVictim.Name = "tbxVictim"
tbxVictim.Parent = Frame
tbxVictim.BackgroundColor3 = Color3.fromRGB(159, 32, 32)
tbxVictim.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbxVictim.BorderSizePixel = 0
tbxVictim.Position = UDim2.new(0.177304968, 0, 0.394957989, 0)
tbxVictim.Size = UDim2.new(0, 280, 0, 50)
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "Enter Target Player Here!!"
tbxVictim.TextColor3 = Color3.fromRGB(0, 0, 0)
tbxVictim.TextScaled = true
tbxVictim.TextSize = 14.000
tbxVictim.TextWrapped = true

UICorner_3.Parent = tbxVictim

btnsex.Name = "btnsex"
btnsex.Parent = Frame
btnsex.BackgroundColor3 = Color3.fromRGB(149, 4, 4)
btnsex.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnsex.BorderSizePixel = 0
btnsex.Position = UDim2.new(0.262411356, 0, 0.710084021, 0)
btnsex.Size = UDim2.new(0, 200, 0, 50)
btnsex.Font = Enum.Font.SourceSansBold
btnsex.Text = "Lets Bang !!"
btnsex.TextColor3 = Color3.fromRGB(0, 0, 0)
btnsex.TextScaled = true
btnsex.TextSize = 14.000
btnsex.TextWrapped = true

UICorner_4.Parent = btnsex

-- Scripts:

local function GNTLDPD_fake_script() -- btnsex.LocalScript 
	local script = Instance.new('LocalScript', btnsex)

	btnsex.MouseButton1Down:Connect(function()
		local hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
	
		btnsex.MouseButton1Click:Connect(function()
	
			local player = tbxVictim.Text
			local stupid = Instance.new('Animation')
			stupid.AnimationId = "rbxassetid://148840371" or "rbxassetid://5918726674"
			hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
			pcall(function()
				hummy.Parent.Pants:Destroy()
			end)
			pcall(function()
				hummy.Parent.Shirt:Destroy()
			end)
			local notfunny = hummy:LoadAnimation(stupid)
			notfunny:Play()
			notfunny:AdjustSpeed(10)
			while hummy.Parent.Parent ~= nil do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
			end
		end)
	end)
end
coroutine.wrap(GNTLDPD_fake_script)()
