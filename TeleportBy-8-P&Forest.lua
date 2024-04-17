-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TeleportB = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local teleportB = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.225889504, 0, 0.226666674, 0)
Frame.Size = UDim2.new(0, 446, 0, 258)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.188340813, 0, 0.0426356606, 0)
TextLabel.Size = UDim2.new(0, 277, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Teleport Script By 8P & Forest"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TeleportB.Name = "TeleportB"
TeleportB.Parent = Frame
TeleportB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportB.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportB.BorderSizePixel = 0
TeleportB.Position = UDim2.new(0.188340813, 0, 0.325581402, 0)
TeleportB.Size = UDim2.new(0, 267, 0, 50)
TeleportB.Font = Enum.Font.SourceSansBold
TeleportB.Text = "Enter Player Name"
TeleportB.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportB.TextScaled = true
TeleportB.TextSize = 14.000
TeleportB.TextWrapped = true

UICorner_2.Parent = TeleportB

teleportB.Name = "teleportB"
teleportB.Parent = Frame
teleportB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleportB.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleportB.BorderSizePixel = 0
teleportB.Position = UDim2.new(0.262331843, 0, 0.68217057, 0)
teleportB.Size = UDim2.new(0, 200, 0, 50)
teleportB.Font = Enum.Font.SourceSansBold
teleportB.Text = "Teleport"
teleportB.TextColor3 = Color3.fromRGB(0, 0, 0)
teleportB.TextScaled = true
teleportB.TextSize = 14.000
teleportB.TextWrapped = true

UICorner_3.Parent = teleportB

-- Scripts:

local function JWOX_fake_script() -- teleportB.LocalScript 
	local script = Instance.new('LocalScript', teleportB)

	teleportB.MouseButton1Down:connect(function()	
		local playerName = TeleportB.Text
		local players = game:GetService("Players"):GetPlayers()
		for i, player in ipairs(players) do
			if player.Name:sub(1, #playerName):lower() == playerName:lower() then
				game.Players.LocalPlayer.Character:MoveTo(player.Character.HumanoidRootPart.Position)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "تم نقلك عند الاعب";
					Text = "ادخل سيرفر الديسكورد : https://discord.gg/uarbuzKuGQ";
					Duration = 3.5;
				})
				break
			end
		end
	
	end)
	setclipboard("https://discord.gg/uarbuzKuGQ")
end
coroutine.wrap(JWOX_fake_script)()
