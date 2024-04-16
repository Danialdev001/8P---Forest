-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local btnsex = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local tbxVictim = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.400
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.1954588, 0, 0.266666681, 0)
Frame.Size = UDim2.new(0, 494, 0, 294)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.166706532, 0, 0.0210884772, 0)
TextLabel.Size = UDim2.new(0, 355, 0, 93)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Bang Script By 8P & Forest"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextWrapped = true

UICorner.Parent = Frame

btnsex.Name = "btnsex"
btnsex.Parent = Frame
btnsex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btnsex.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnsex.BorderSizePixel = 0
btnsex.Position = UDim2.new(0.295680195, 0, 0.691870749, 0)
btnsex.Size = UDim2.new(0, 200, 0, 50)
btnsex.Font = Enum.Font.Unknown
btnsex.Text = "Start Fuck !!!!!"
btnsex.TextColor3 = Color3.fromRGB(0, 0, 0)
btnsex.TextScaled = true
btnsex.TextSize = 14.000
btnsex.TextWrapped = true

UICorner_2.Parent = btnsex

tbxVictim.Name = "tbxVictim"
tbxVictim.Parent = ScreenGui
tbxVictim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbxVictim.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbxVictim.BorderSizePixel = 0
tbxVictim.Position = UDim2.new(0.331226587, 0, 0.469999999, 0)
tbxVictim.Size = UDim2.new(0, 283, 0, 50)
tbxVictim.Font = Enum.Font.Unknown
tbxVictim.Text = "Enter Target Player Name"
tbxVictim.TextColor3 = Color3.fromRGB(0, 0, 0)
tbxVictim.TextScaled = true
tbxVictim.TextSize = 14.000
tbxVictim.TextWrapped = true

UICorner_3.Parent = tbxVictim

-- Scripts:

local function LIOR_fake_script() -- btnsex.LocalScript 
	local script = Instance.new('LocalScript', btnsex)

	btnsex.MouseButton1Down:Connect(function()
		local hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
	
		btnsex.MouseButton1Click:Connect(function()
	
			local playerName = tbxVictim.Text
			for i, hummy in ipairs(hummy) do
				if hummy.Name:sub(1, #playerName):lower() == playerName:lower() then
			local stupid = Instance.new('Animation')
			stupid.AnimationId = 'rbxassetid://148840371'
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
coroutine.wrap(LIOR_fake_script)()
