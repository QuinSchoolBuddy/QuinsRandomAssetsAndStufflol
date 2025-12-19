-- ts file was generated at discord.gg/25ms


local v1 = game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/PressureMode/Pandemonium.rbxmx?raw=true")
local v2 = game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/PressureMode/PandePassive.mp3?raw=true")
local v3 = game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/PressureMode/PandeHostile.mp3?raw=true")
local v4 = game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/PressureMode/PandeJs.mp3?raw=true")
function LoadRaw(p5, p6, p7)
    local v8 = p6 .. "." .. p7
    writefile(v8, p5)
    local v9 = (getcustomasset or getsynasset)(v8)
    if p7 == "txt" then
        v9 = game:GetObjects(v9)[1]
    end
    return v9
end
local vu10 = LoadRaw(v1, "Pandemonium", "txt")
local v11 = LoadRaw(v2, "Passive", "mp3")
local v12 = LoadRaw(v3, "Hostile", "mp3")
local v13 = LoadRaw(v4, "Jumpscare", "mp3")
vu10.Parent = workspace
vu10.PandemoniumMoving.SoundId = v11
vu10.PandemoniumScreaming.SoundId = v12
vu10.PandemoniumMoving.TimePosition = 0
vu10.PandemoniumScreaming.PlaybackSpeed = 1
vu10.PandemoniumScreaming:Stop()
vu10.PandemoniumScreaming.TimePosition = 0
vu10.PandemoniumEyes.Enabled = false
local v14 = Instance.new("Sound")
v14.SoundId = v13
v14.Volume = 1.25
v14.TimePosition = 2
local vu15 = v14
Instance.new("DistortionSoundEffect", vu15)
local v16 = Instance.new("EchoSoundEffect", vu15)
v16.Delay = 0.15
v16.DryLevel = 0
v16.Feedback = 0.36
v16.WetLevel = - 2.6
local v17 = game:GetService("RunService")
local vu18 = game:GetService("PathfindingService")
local vu19 = {
    AgentRadius = 3,
    AgentHeight = 1,
    WaypointSpacing = 30
}
local v20 = 40
local vu21 = 50
local vu22 = 50
local vu23 = 5
local vu24 = true
local vu25 = false
local vu26 = game.Players.LocalPlayer
local vu27 = RaycastParams.new()
vu27.FilterType = Enum.RaycastFilterType.Exclude
vu27.FilterDescendantsInstances = {
    vu26.Character,
    vu10
}
function PandeCanSeePlayer()
    local v28 = vu10:GetPivot().Position
    local v29 = vu26.Character:GetPivot().Position
    if (v29 - v28).Magnitude > vu22 then
        return false
    end
    local v30 = workspace:Raycast(v28, v29 - v28, vu27)
    return v30 == nil, v30
end
function PandeMoveTo(p31, p32, p33)
    local v34 = (p31:GetPivot().Position - p32.Position).Magnitude / p33
    local v35 = game.TweenService:Create(p31, TweenInfo.new(v34, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
        CFrame = p32
    })
    v35:Play()
    v35.Completed:Wait()
end
function PandeJumpscare()
    local v36, v37 = pcall(function()
        return game:GetService("CoreGui")
    end)
    IsElevated = v36
    if not IsElevated then
        v37 = game:GetService("StarterGui")
    end
    local vu38 = Instance.new("ScreenGui")
    vu38.Name = "AAAAAAAAAAAAAAAAAAA"
    vu38.IgnoreGuiInset = true
    vu38.DisplayOrder = 11111
    if syn then
        syn.protect_gui(vu38)
        vu38.Parent = v37
    else
        vu38.Parent = gethui() or v37
    end
    local v39 = Instance.new("Frame", vu38)
    v39.Size = UDim2.fromScale(1, 1)
    v39.BackgroundColor3 = Color3.new(0, 0, 0)
    local vu40 = Instance.new("ImageLabel", v39)
    vu40.BackgroundTransparency = 1
    vu40.Image = "rbxassetid://16044393420"
    vu40.AnchorPoint = Vector2.new(0.5, 0.5)
    vu40.Position = UDim2.fromScale(0.5, 0.5)
    vu40.Size = UDim2.new(0.0267379656, 0, 0.0387096703, 0)
    local vu41 = vu40.Position
    task.spawn(function()
        while vu38 do
            task.wait()
            vu40.Position = vu41
            if math.random(1, 10) == 1 then
                vu40.Position = UDim2.new(vu41.X.Scale, vu41.X.Offset + math.random(- 50, 50), vu41.Y.Scale, vu41.Y.Offset + math.random(- 50, 50))
            end
        end
    end)
    vu15.Parent = vu38
    vu15:Play()
    game.TweenService:Create(vu40, TweenInfo.new(1, Enum.EasingStyle.Linear), {
        Size = UDim2.new(1.72834215, 0, 3.08128953, 0)
    }):Play()
    task.spawn(function()
        vu26.Character:FindFirstChildOfClass("Humanoid").Health = 0
        game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Pandemonium"
        local v42 = {
            "I guess you could try to hide from it..",
            "I guess you could avoid being seen by it!",
            "I guess you can try hiding or running from it.."
        }
        local v43 = "It isn't from the " .. game.ReplicatedStorage.GameData.Floor.Value .. "!"
        local v44 = "You died to" .. string.rep(".", math.random(2, 4))
        firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
            v44,
            "...",
            "I don\'t know who that is..",
            v43,
            v42[math.random(1, # v42)]
        }, "Blue")
    end)
    task.wait(1)
    vu38:Destroy()
end
local v45 = workspace.CurrentRooms:GetChildren()[1]
local v46 = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
local v47 = vu10
vu10.PivotTo(v47, v45:GetPivot() * CFrame.new(0, 0, 200))
require(game.ReplicatedStorage.ModulesClient.Module_Events).flicker(v46, 2)
local v62 = v17.RenderStepped:Connect(function()
    if PandeCanSeePlayer() and vu24 then
        vu25 = true
        vu24 = false
        local vu48 = false
        local vu49 = vu10:Clone()
        vu49.Parent = workspace
        vu49.PandemoniumEyes.Enabled = true
        vu49.PandemoniumMoving:Destroy()
        vu49.PandemoniumScreaming:Play()
        vu10:Destroy()
        local function v50()
            return (vu49.Position - vu26.Character:GetPivot().Position).Magnitude <= vu23
        end
        local vu51 = Instance.new("ScreenGui")
        vu51.Name = "AAAAAAAAAAAAAAAAAAA"
        vu51.IgnoreGuiInset = true
        vu51.DisplayOrder = 11111
        if syn then
            syn.protect_gui(vu51)
            vu51.Parent = UIHolder
        else
            vu51.Parent = gethui() or UIHolder
        end
        local vu52 = Instance.new("ImageLabel", vu51)
        vu52.BackgroundTransparency = 1
        vu52.Image = "rbxassetid://15031614239"
        vu52.AnchorPoint = Vector2.new(0.5, 0.5)
        vu52.Position = UDim2.fromScale(0.5, 0.5)
        vu52.Size = UDim2.new(1, 0, 1, 0)
        vu52.ImageColor3 = Color3.fromRGB(9, 10, 13)
        vu52.ImageTransparency = 1
        game.TweenService:Create(vu52, TweenInfo.new(0.3), {
            ImageTransparency = 0.5
        }):Play()
        task.wait(0.3)
        local vu53 = 0
        task.spawn(function()
            while not vu48 do
                vu53 = vu53 + 1
                task.wait()
                vu52.ImageTransparency = math.clamp(math.sin(vu53) * 2, 0.5, 0.7)
            end
        end)
        local vu54 = vu49.Position
        task.spawn(function()
            while not vu48 do
                task.wait(0.5)
                if vu49 then
                    if (vu54 - vu49.Position).Magnitude < 3 then
                        vu49.Position = vu49.Position + - (vu49.Position - vu26.Character:GetPivot().Position).Unit * 5
                    end
                    vu54 = vu49.Position
                end
            end
        end)
        local vu55 = vu49
        while not vu48 do
            if v50() then
                vu48 = true
            end
            local v56 = vu18:CreatePath(vu19)
            v56:ComputeAsync(vu55.Position + - (vu55.Position - vu26.Character:GetPivot().Position).Unit * 5, vu26.Character:GetPivot().Position + - (vu55.Position - vu26.Character:GetPivot().Position).Unit * 2)
            local v57 = v56:GetWaypoints()
            local v58, v59, v60 = pairs(v57)
            while true do
                local v61
                v60, v61 = v58(v59, v60)
                if v60 == nil then
                    break
                end
                if v50() then
                    vu48 = true
                    break
                end
                PandeMoveTo(vu55, CFrame.new(v61.Position) * CFrame.new(0, 2, 0), vu21)
            end
        end
        task.spawn(PandeJumpscare)
        task.delay(0.2, function()
            vu55:Destroy()
            vu55 = nil
            vu51:Destroy()
            vu51 = nil
        end)
    end
end)
local v63 = vu19
local v64 = vu18
local v65 = vu10
local v66 = vu25
for v67 = game.ReplicatedStorage.GameData.LatestRoom.Value - 5, 100 do
    local v68 = workspace.CurrentRooms:FindFirstChild(v67)
    if v66 then
        break
    end
    if v68 then
        if v68:FindFirstChild("RoomEntrance") and v68:FindFirstChild("RoomExit") then
            local v69 = v64:CreatePath(v63)
            v69:ComputeAsync(v68.RoomEntrance.Position + v68.RoomEntrance.CFrame.LookVector * 8, v68.RoomExit.Position + v68.RoomExit.CFrame.LookVector * - 8)
            local v70 = v69:GetWaypoints()
            local v71, v72, v73 = pairs(v70)
            while true do
                local v74
                v73, v74 = v71(v72, v73)
                if v73 == nil then
                    break
                end
                PandeMoveTo(v65, CFrame.new(v74.Position) * CFrame.new(0, 2, 0), v20)
            end
        end
        if v68 then
            if v68:FindFirstChild("RoomExit") then
                PandeMoveTo(v65, v68:FindFirstChild("RoomExit").CFrame, v20)
            end
        end
    end
end
PandeMoveTo(v65, v65:GetPivot() * CFrame.new(0, 2, - 200), v20 * math.pi)
v65:Destroy()
v62:Disconnect()