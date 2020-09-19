--// Setting Up GUI Functions
local function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil -- Custom Parent

if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.ResetOnSpawn = false
	syn.protect_gui(Main)
	Main.Parent = game:GetService("CoreGui")
	PARENT = Main
elseif PROTOSMASHER_LOADED and get_hidden_gui then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.ResetOnSpawn = false
	Main.Parent = get_hidden_gui()
	PARENT = Main
elseif elysianexecute and gethui then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.ResetOnSpawn = false
	Main.Parent = gethui()
	PARENT = Main
elseif game:GetService("CoreGui"):FindFirstChild('RobloxGui') then
	PARENT = game:GetService("CoreGui").RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.ResetOnSpawn = false
	Main.Parent = game:GetService("CoreGui")
	PARENT = Main
end

local function Corner(obj)
	Instance.new("UICorner", obj)
end


--// GUI
local MainFrame = Instance.new("ImageLabel")
local InjectedText = Instance.new("TextLabel")

MainFrame.Name = randomString()
MainFrame.Parent = PARENT
MainFrame.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.441119671, 0, 0.31214419, 0)
MainFrame.Size = UDim2.new(0, 122, 0, 198)
MainFrame.Image = "rbxassetid://302288588"
MainFrame.ScaleType = Enum.ScaleType.Crop
Corner(MainFrame) -- Easily add UI Corner

InjectedText.Name = "InjectedText"
InjectedText.Parent = MainFrame
InjectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InjectedText.BackgroundTransparency = 1.000
InjectedText.BorderSizePixel = 0
InjectedText.Position = UDim2.new(0.491803288, 0, 0.883838356, 0)
InjectedText.Size = UDim2.new(0, 62, 0, 23)
InjectedText.Font = Enum.Font.Highway
InjectedText.Text = "Injected"
InjectedText.TextColor3 = Color3.fromRGB(255, 255, 255)
InjectedText.TextSize = 16.000
InjectedText.TextStrokeTransparency = 0.500


--// Injected - Print
print("Injected!")


--// Injected - Tweening
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

MainFrame.Position = UDim2.new(0, -MainFrame.Size.X.Offset, 0.5, 0)

game:GetService("RunService").Stepped:Wait() -- wait(2)

MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0))

wait(3.1)

MainFrame:TweenPosition(UDim2.new(0.5, 0, 1.5, 0))
