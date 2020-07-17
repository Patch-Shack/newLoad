function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
PARENT = nil
if game:GetService("CoreGui"):FindFirstChild('RobloxGui') then
	PARENT = game:GetService("CoreGui").RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = game:GetService("CoreGui")
	PARENT = Main
end
wait()
local Dex = game:GetObjects("rbxassetid://3567096419")[1]
Dex.Name = 'Dex'
Dex.Parent = PARENT
