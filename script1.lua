local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local function onInputBegan(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.Escape then
		local character = player.Character
		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid.WalkSpeed = humanoid.WalkSpeed + 1
			end
		end
	end
end

UserInputService.InputBegan:Connect(onInputBegan)
