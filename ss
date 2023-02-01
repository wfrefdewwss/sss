local A_1 = 1
local A_2 = "Torso"
local Event = game:GetService("Workspace").Sharmarke12344.Bat.Attack

local localPlayer = game.Players.LocalPlayer
local closestPlayer = nil
local closestDistance = math.huge

for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= localPlayer then
        local distance = (player.Character.Torso.Position - localPlayer.Character.Torso.Position).Magnitude
        if distance < closestDistance and distance <= 11 then
            closestDistance = distance
            closestPlayer = player
        end
    end
end

if closestPlayer ~= nil then
    Event:FireServer(A_1, A_2, closestPlayer.Character.Humanoid)
end
