-- ts file was generated at discord.gg/25ms


local v1 = require(game.ReplicatedStorage.CameraShaker)
local vu2 = game.Workspace.CurrentCamera
local v4 = v1.new(Enum.RenderPriority.Camera.Value, function(p3)
    vu2.CFrame = vu2.CFrame * p3
end)
v4:Start()
v4:Shake(v1.Presets.Earthquake)
local v5 = TweenInfo.new(5)
local v6 = {
    Color = Color3.new(0, 0, 1)
}
local v7, v8, v9 = pairs(workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetDescendants())
while true do
    local v10, v11 = v7(v8, v9)
    if v10 == nil then
        break
    end
    v9 = v10
    if v11:IsA("Light") then
        game.TweenService:Create(v11, v5, v6):Play()
    end
end
local vu12 = game.Players.LocalPlayer.Character
local vu13 = game:GetService("TweenService")
function LoadCustomInstance(pu14, p15)
    local vu16 = nil
    local function v18(p17)
        if p17:match("^https://github.com/.+%.rbxm$") and not p17:find("?raw=true") then
            return p17 .. "?raw=true"
        else
            return p17
        end
    end
    while task.wait() and not vu16 do
        if type(pu14) == "number" or tostring(pu14):match("^%d+$") then
            local v19, v20 = pcall(function()
                return game:GetObjects("rbxassetid://" .. tostring(pu14))[1]
            end)
            if v19 and v20 then
                vu16 = v20
            else
                task.wait(0.5)
            end
        else
            if type(pu14) ~= "string" or not (pu14:match("^https?://") and pu14:match("%.rbxm")) then
                break
            end
            local vu21 = v18(pu14)
            local v24, v25 = pcall(function()
                local v22 = "temp_" .. tostring(math.random(100000, 999999)) .. ".rbxm"
                writefile(v22, game:HttpGet(vu21))
                local v23 = game:GetObjects((getcustomasset or getsynasset)(v22))[1]
                delfile(v22)
                return v23
            end)
            if v24 and v25 then
                vu16 = v25
            else
                task.wait(0.5)
            end
        end
        if vu16 then
            vu16.Parent = p15 or workspace
            local v26, v27, v28 = ipairs(vu16:GetDescendants())
            while true do
                local v29
                v28, v29 = v26(v27, v28)
                if v28 == nil then
                    break
                end
                if v29:IsA("Script") or v29:IsA("LocalScript") then
                    v29:Destroy()
                end
            end
            pcall(function()
                vu16:SetAttribute("LoadedByExecutor", true)
            end)
        end
    end
    return vu16
end
local v30 = LoadCustomInstance("https://github.com/DoorsHubs/Tutorial/raw/refs/heads/main/cEASE.rbxm", workspace)
v30.Silence:Play()
local vu31 = v30:FindFirstChildWhichIsA("BasePart")
vu31.CanCollide = true
vu31.Anchored = true
game.Workspace.CeaseStopping.Ambeince_Cease_Start.PlaybackSpeed = 0.4
local vu32 = 120
local v33 = game:GetService("RunService")
local v38 = v33.Heartbeat:Connect(function()
    local v34 = vu31.Position
    local v35 = (vu12.HumanoidRootPart.Position - v34).Unit
    local v36 = Ray.new(v34, v35 * vu32)
    local v37 = workspace:Raycast(v36.Origin, v36.Direction)
    if v37 and (v37.Instance.Parent == vu12 and vu12.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)) then
        vu12.Humanoid.Health = 0
        game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Cease"
    end
end)
local v47 = v33.Heartbeat:Connect(function()
    local v39, v40, v41 = pairs(game.Players:GetPlayers())
    while true do
        local v42
        v41, v42 = v39(v40, v41)
        if v41 == nil then
            break
        end
        if v42.Character and (v42.Character:FindFirstChild("HumanoidRootPart") and (v42.Character:FindFirstChild("Humanoid") and (vu31.Position - v42.Character.HumanoidRootPart.Position).Magnitude <= vu32)) then
            local v43 = require(game.ReplicatedStorage.CameraShaker)
            local vu44 = game.Workspace.CurrentCamera
            local v46 = v43.new(Enum.RenderPriority.Camera.Value, function(p45)
                vu44.CFrame = vu44.CFrame * p45
            end)
            v46:Start()
            v46:ShakeOnce(5, 5, 0, 2, 1, 6)
        end
    end
end)
local v48 = workspace.CurrentRooms
local v49 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 5)
local v50 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 4)
local v51 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 3)
local v52 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 2)
local v53 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 1)
local v54 = v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
v48:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value + 1)
local function v58(p55, p56)
    if vu31 and vu31.Parent then
        local v57 = vu13:Create(vu31, TweenInfo.new(p56, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            CFrame = p55
        })
        v57:Play()
        v57.Completed:Wait()
    end
end
vu31.CFrame = v49.RoomExit.CFrame * CFrame.new(0, 3, - 100)
v58(v49.RoomExit.CFrame, 2)
v58(v50.RoomExit.CFrame, 2)
v58(v51.RoomExit.CFrame, 2.5)
v58(v52.RoomExit.CFrame, 3)
v58(v53.RoomExit.CFrame, 3)
v58(v54.RoomExit.CFrame, 3)
v38:Disconnect()
v47:Disconnect()
v30:Destroy()
if not game:GetService("ReplicatedStorage"):FindFirstChild("cease") then
    local v59 = Instance.new("Part")
    v59.Name = "cease"
    v59.Parent = game:GetService("ReplicatedStorage")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()({
        Title = "Get out of the way",
        Desc = "Where is it?",
        Reason = "Encounter Cease",
        Image = "rbxassetid://104367200417966"
    })
end