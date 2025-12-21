game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(19, 255, 3)
game.Lighting.MainColorCorrection.Contrast = 10
game:GetService("TweenService"):Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {
    Contrast = 0
}):Play()
game:GetService("TweenService"):Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {
    TintColor = Color3.fromRGB(255, 255, 255)
}):Play()
local vu1 = game.Players.LocalPlayer
local vu2 = vu1.Character or vu1.CharacterAdded:Wait()
local vu3 = workspace.CurrentCamera
local vu4 = game:GetService("TweenService")
local vu5 = game:GetService("Debris")
local vu6 = game:GetObjects("rbxassetid://121256477470009")[1]
vu6.Parent = workspace
local vu7 = vu6:FindFirstChildWhichIsA("BasePart") or vu6:FindFirstChildWhichIsA("Part")
vu7.CFrame = vu2.HumanoidRootPart.CFrame * CFrame.new(0, 0, - 7)
vu7.CanCollide = false
vu7.Anchored = true
local v8 = vu7
local vu9 = vu7.WaitForChild(v8, "HORROR SCREAM 15")
vu9.Volume = 5
vu9.PlaybackSpeed = 0.8
vu9.Parent = workspace
vu9.Looped = false
local vu10 = 2.5
local vu11 = 0.5
local vu12 = tick()
local vu13 = tick()
local vu14 = true
local function vu17()
    local v15 = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
    if not game:GetService("ReplicatedStorage"):FindFirstChild("shock") then
        local v16 = Instance.new("Part")
        v16.Name = "shock"
        v16.Parent = game:GetService("ReplicatedStorage")
        v15({
            Title = "Shocking Experience",
            Desc = "Look at me.",
            Reason = "Encounter Shocker.",
            Image = "rbxassetid://113653151942471"
        })
    end
end
local function vu24()
    local v18 = Instance.new("ColorCorrectionEffect", game.Lighting)
    game.Debris:AddItem(v18, 24)
    v18.Name = "SmileWarn"
    v18.TintColor = Color3.fromRGB(0, 0, 0)
    v18.Saturation = - 0.25
    v18.Contrast = 0.2
    game.TweenService:Create(v18, TweenInfo.new(10), {
        TintColor = Color3.fromRGB(255, 255, 255),
        Saturation = 0,
        Contrast = 0
    }):Play()
    local v19 = require(game.ReplicatedStorage.CameraShaker)
    local vu20 = game.Workspace.CurrentCamera
    local v22 = v19.new(Enum.RenderPriority.Camera.Value, function(p21)
        vu20.CFrame = vu20.CFrame * p21
    end)
    v22:Start()
    v22:ShakeOnce(6, 5, 4, 3, 2, 1)
    local v23 = vu2:FindFirstChild("Humanoid")
    v23:TakeDamage((math.random(20, 40)))
    vu9:Play()
    vu5:AddItem(vu9, vu9.TimeLength)
    if v23.Health <= 0 then
        game:GetService("ReplicatedStorage").GameStats["Player_" .. vu1.Name].Total.DeathCause.Value = "Shocker"
    end
end
local function vu25()
    if vu7 and vu7.Parent then
        return (vu7.Position - vu3.CFrame.Position).Unit:Dot(vu3.CFrame.LookVector) > 0.75
    else
        return false
    end
end
local function vu29(p26, p27)
    if vu7 and vu7.Parent then
        local v28 = vu4:Create(vu7, TweenInfo.new(p27, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            CFrame = p26
        })
        v28:Play()
        v28.Completed:Wait()
    end
end
task.spawn(function()
    while vu14 do
        wait(0.1)
        if vu25() then
            if vu10 <= tick() - vu12 then
                vu14 = false
                vu24()
                vu29(vu2.HumanoidRootPart.CFrame, 0.4)
                vu29(vu7.CFrame * CFrame.new(0, - 100, 0), 5)
                vu6:Destroy()
                return
            end
            vu13 = tick()
        else
            vu12 = tick()
            if vu11 <= tick() - vu13 then
                print("Not looking for " .. vu11 .. " seconds. Shocker despawning.")
                vu14 = false
                vu29(vu7.CFrame * CFrame.new(0, - 100, 0), 5)
                vu6:Destroy()
                vu5:AddItem(vu9, 1)
                vu17()
                return
            end
        end
    end
end)
task.spawn(function()
    while true do
        repeat
            wait(0.1)
        until vu6 and vu6:FindFirstChild("PlaySound")
        vu6.PlaySound.Volume = 0
        vu6.PlaySound:Destroy()
    end
end)
