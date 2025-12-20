-- ts file was generated at discord.gg/25ms


local v1 = tick()
local v2 = game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/CreepyMode/Gloom.rbxm?raw=true")
writefile("Gloom.txt", v2)
local vu3 = game:GetObjects((getsynasset or getcustomasset)("Gloom.txt"))[1]
vu3.Parent = workspace
local v4 = workspace.CurrentRooms:GetChildren()[1]
vu3.ambience.Volume = 4
vu3.ambience.TimePosition = 0
vu3.ambience:Play()
vu3.Gloom.RAHHHH:Play()
local v5 = vu3
vu3.PivotTo(v5, v4:GetPivot())
local vu6 = {
    "http://www.roblox.com/asset/?id=112414741042373",
    "http://www.roblox.com/asset/?id=109861067169800",
    "http://www.roblox.com/asset/?id=110175146834646",
    "http://www.roblox.com/asset/?id=104648778888558",
    "http://www.roblox.com/asset/?id=135351563869893",
    "http://www.roblox.com/asset/?id=119943069952919",
    "http://www.roblox.com/asset/?id=114935376420138",
    "http://www.roblox.com/asset/?id=87445033332019",
    "http://www.roblox.com/asset/?id=81927229415100"
}
task.spawn(function()
    while vu3 and vu3 ~= nil do
        for v7 = 1, 9 do
            task.wait(0.2)
            vu3.Gloom.Base.Face.Texture = vu6[v7]
        end
        for v8 = 9, 1, - 1 do
            task.wait(0.2)
            vu3.Gloom.Base.Face.Texture = vu6[v8]
        end
    end
end)
local vu9 = 150
local vu10 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health == 0
local vu11 = 65
local vu12 = Vector3.new(0, 2, 0)
local vu13 = false
function drag(p14)
    local v15 = game.TweenService:Create(vu3.Gloom, TweenInfo.new((vu3.Gloom.Position - (p14 + vu12)).Magnitude / vu9, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
        Position = p14 + vu12
    })
    v15:Play()
    v15.Completed:Wait()
end
local v16 = require(game.ReplicatedStorage.CameraShaker)
local vu17 = workspace.CurrentCamera
local vu19 = v16.new(Enum.RenderPriority.Camera.Value, function(p18)
    vu17.CFrame = vu17.CFrame * p18
end)
vu19:Start()
local v20, v21, v22 = pairs(game.Workspace.CurrentRooms:GetDescendants())
local vu23 = vu3
while true do
    local v24, vu25 = v20(v21, v22)
    if v24 == nil then
        break
    end
    v22 = v24
    if vu25:IsA("Light") then
        task.spawn(function()
            if math.random(1, 2) ~= 1 then
                spawn(function()
                    local v26 = vu25.Color
                    task.wait(3)
                    game.TweenService:Create(vu25, TweenInfo.new(0.5), {
                        Color = v26
                    }):Play()
                end)
                vu19:ShakeOnce(3, 3, 1, 2.5)
                game.TweenService:Create(vu25, TweenInfo.new(1.5), {
                    Color = Color3.fromRGB(120, 40, 140)
                }):Play()
                if vu25.Parent.Name == "LightFixture" then
                    spawn(function()
                        local v27 = vu25.Parent.Neon.Color
                        task.wait(3)
                        game.TweenService:Create(vu25.Parent, TweenInfo.new(0.5), {
                            Color = v27
                        }):Play()
                    end)
                    pcall(function()
                        game.TweenService:Create(vu25.Parent:FindFirstChild("Neon"), TweenInfo.new(1.5), {
                            Color = Color3.fromRGB(120, 40, 140)
                        }):Play()
                    end)
                end
            end
        end)
    end
end
wait(3.4)
vu23.Gloom.PlaySound:Play()
vu23.Gloom.PlaySound2:Play()
vu23.Gloom.PlaySound3:Play()
local v28 = game.TweenService:Create(vu23.Gloom.PlaySound, TweenInfo.new(3), {
    Volume = 10,
    RollOffMaxDistance = 150
})
local v29 = game.TweenService:Create(vu23.Gloom.PlaySound2, TweenInfo.new(7), {
    Volume = 10,
    RollOffMaxDistance = 350
})
local v30 = game.TweenService:Create(vu23.Gloom.PlaySound3, TweenInfo.new(12), {
    Volume = 10,
    RollOffMaxDistance = 350
})
v28:Play()
v29:Play()
v30:Play()
local function vu37(p31, p32)
    if vu10 ~= true then
        local v33 = vu23.Gloom.Position
        local v34 = (p31.HumanoidRootPart.Position - vu23.Gloom.Position).unit * p32
        local v35 = Ray.new(v33, v34)
        local v36, _ = workspace:FindPartOnRay(v35, vu23.Gloom)
        if not v36 then
            return false
        end
        if v36:IsDescendantOf(p31) then
            vu10 = true
            return true
        end
    end
end
spawn(function()
    while vu23 ~= nil do
        wait(0.2)
        local v38 = game.Players.LocalPlayer
        if v38.Character ~= nil and (not v38.Character:GetAttribute("Hiding") and vu37(v38.Character, 55)) then
            vu13 = true
            local vu39 = Instance.new("Part", workspace)
            vu39.CanCollide = false
            vu39.Anchored = true
            vu39.CanTouch = false
            vu39.Transparency = 1
            vu39.CFrame = workspace.Camera.CFrame
            local vu40 = vu23:Clone()
            vu40.Parent = workspace
            game.Players.LocalPlayer.Character.Collision.Size = Vector3.new(1, 1, 1)
            local v41, v42, v43 = pairs(vu40:GetDescendants())
            while true do
                local v44, v45 = v41(v42, v43)
                if v44 == nil then
                    break
                end
                v43 = v44
                if v45:IsA("Sound") then
                    v45:Destroy()
                end
            end
            vu23:Destroy()
            local vu46 = true
            task.spawn(function()
                while vu46 do
                    game:GetService("RunService").RenderStepped:Wait()
                    workspace.Camera.CFrame = vu39.CFrame
                end
            end)
            game.TweenService:Create(vu39, TweenInfo.new(0.5), {
                CFrame = CFrame.new(vu39.Position, vu40.Gloom.Position)
            }):Play()
            task.wait(0.5)
            local vu47 = Instance.new("ScreenGui")
            local vu48 = Instance.new("ImageLabel")
            local v49 = Instance.new("ImageLabel")
            local v50 = Instance.new("ImageLabel")
            local vu51 = Instance.new("Sound", workspace)
            vu51.SoundId = "rbxassetid://6567183465"
            vu51.Volume = 1.5
            vu51.Pitch = 0.99
            vu51.Looped = true
            local v52 = vu51
            vu51.Play(v52)
            vu47.Name = "ReboundJs"
            vu47.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            vu47.IgnoreGuiInset = true
            vu48.Name = "Static"
            vu48.Parent = vu47
            vu48.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            vu48.BackgroundTransparency = 1
            vu48.BorderColor3 = Color3.fromRGB(27, 42, 53)
            vu48.BorderSizePixel = 0
            vu48.Size = UDim2.new(1, 0, 1, 0)
            vu48.Image = "rbxassetid://236543215"
            vu48.ImageColor3 = Color3.fromRGB(0, 255, 255)
            vu48.ImageTransparency = 1
            v49.Name = "Rebound"
            v49.Parent = vu47
            v49.BackgroundColor3 = Color3.fromRGB(0, 63, 139)
            v49.BackgroundTransparency = 1
            v49.BorderSizePixel = 0
            v49.AnchorPoint = Vector2.new(0.5, 0.5)
            v49.Position = UDim2.new(0.5, 0, 0.5, 0)
            v49.Size = UDim2.new(0.0567379656, 0, 0.0887096703, 0)
            v49.Image = "rbxassetid://11110560177"
            v49.ImageTransparency = 1
            local vu53 = v49:Clone()
            vu53.Parent = vu47
            vu53.Name = "NORMALJSSIZE"
            vu53.Visible = false
            v50.Name = "JSSIZE"
            v50.Parent = vu47
            v50.BackgroundColor3 = Color3.fromRGB(0, 63, 139)
            v50.BackgroundTransparency = 1
            v50.BorderSizePixel = 0
            v50.Position = UDim2.new(- 0.586452842, 0, - 1.25140607, 0)
            v50.Size = UDim2.new(2.12834215, 0, 3.08128953, 0)
            v50.Visible = false
            v50.Image = "rbxassetid://11110560177"
            local function v55()
                local v54 = Instance.new("LocalScript", vu48)
                while true do
                    v54.Parent.Image = "rbxassetid://236543215"
                    wait(0.002)
                    v54.Parent.Rotation = 0
                    wait(0.002)
                    v54.Parent.Rotation = 180
                    wait(0.002)
                    v54.Parent.Image = "rbxassetid://236777652"
                    wait(0.002)
                    v54.Parent.Rotation = 0
                    wait(0.002)
                    v54.Parent.Rotation = 180
                    wait(0.002)
                end
            end
            coroutine.wrap(v55)()
            local function v66()
                local v56 = Instance.new("LocalScript", vu47)
                local vu57 = game.ReplicatedStorage
                local vu58 = game.Players.LocalPlayer
                local vu59 = v56.Parent
                local vu60 = vu59.Static
                local vu61 = vu59.JSSIZE
                local vu62 = Instance.new("Sound")
                vu62.Parent = workspace
                vu62.Volume = 5
                vu62.SoundId = "rbxassetid://7316694853"
                Instance.new("DistortionSoundEffect", vu62);
                (function()
                    game.TweenService:Create(vu60, TweenInfo.new(0.5), {
                        BackgroundTransparency = 0,
                        ImageTransparency = 0.8
                    }):Play()
                    local v63 = game.TweenService:Create(vu59.Rebound, TweenInfo.new(0.3), {
                        Size = vu61.Size
                    })
                    local v64 = game.TweenService:Create(vu59.Rebound, TweenInfo.new(0.5), {
                        Size = vu53.Size,
                        Position = vu53.Position
                    })
                    local v65 = game.TweenService:Create(vu59.Rebound, TweenInfo.new(2), {
                        ImageTransparency = 0
                    })
                    v65:Play()
                    v65.Completed:Wait()
                    v63:Play()
                    vu62:Play()
                    vu40:Destroy()
                    vu46 = false
                    v63.Completed:Wait()
                    v64:Play()
                    game.TweenService:Create(vu51, TweenInfo.new(1), {
                        Pitch = 0
                    }):Play()
                    spawn(function()
                        wait(0.3)
                        vu58.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                        vu57.GameStats["Player_" .. vu58.Name].Total.DeathCause.Value = "Gloom"
                        firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                            "You died to who i call \'Gloom\'...",
                            "Gloom is one of the most mysterious entities..",
                            "I only know somewhat of what it does...",
                            "Gloom is really fast and rebounds over 2 times..",
                            "The only way you can beat it is by hiding!"
                        }, "Blue")
                    end)
                    v64.Completed:Wait()
                    game.TweenService:Create(vu60, TweenInfo.new(1), {
                        BackgroundTransparency = 1,
                        ImageTransparency = 1
                    }):Play()
                    game.TweenService:Create(vu59.Rebound, TweenInfo.new(0.3), {
                        ImageTransparency = 1
                    }):Play()
                    wait(1)
                    vu62:Destroy()
                    vu59:Destroy()
                end)()
            end
            coroutine.wrap(v66)()
        end
        if v38.Character ~= nil and (v38.Character:FindFirstChild("HumanoidRootPart") and (vu23.Gloom.Position - v38.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < vu11) then
            vu19:ShakeOnce(22, 25, 0, 2, 1, 6)
        end
        if vu13 then
            break
        end
    end
end)
local v67 = false
for _ = 1, Random.new(math.floor(tick() - v1) + game.ReplicatedStorage.GameData.LatestRoom.Value):NextInteger(4, 8) do
    v67 = not v67
    if v67 then
        for v68 = 1, 100 do
            local v69 = workspace.CurrentRooms:FindFirstChild(v68)
            if v69 then
                local v70 = v69:FindFirstChild("Nodes")
                if v70 then
                    for v71 = 1, # v70:GetChildren() do
                        if v70:FindFirstChild(v71) then
                            drag(v70:FindFirstChild(v71).Position)
                        end
                    end
                end
                if v69 then
                    if v69:FindFirstChild("RoomExit") then
                        drag(v69:FindFirstChild("RoomExit").Position)
                    end
                end
            end
        end
    else
        for v72 = 100, 1, - 1 do
            local v73 = workspace.CurrentRooms:FindFirstChild(v72)
            if v73 then
                local v74 = v73:FindFirstChild("Nodes")
                if v74 then
                    for v75 = # v74:GetChildren(), 1, - 1 do
                        if v74:FindFirstChild(v75) then
                            drag(v74:FindFirstChild(v75).Position)
                        end
                    end
                end
                if v73 then
                    if v73:FindFirstChild("RoomEntrance") then
                        drag(v73:FindFirstChild("RoomEntrance").Position)
                    end
                end
            end
        end
    end
end
local v76, v77, v78 = pairs(vu23.Gloom:GetDescendants())
while true do
    local v79
    v78, v79 = v76(v77, v78)
    if v78 == nil then
        break
    end
    if v79:IsA("Sound") and v79.Name ~= "Despawn" then
        game.TweenService:Create(v79, TweenInfo.new(4), {
            Pitch = 0
        }):Play()
    end
end
wait(2)
task.spawn(function()
    if AG and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead then
        AG("A Strange Encounter", "Wait, it isn\'t Glooming..", "Survive Gloom.", "", "GAchiv")
    end
end)
breakMove = true
vu23.Gloom.Despawn:Play()
game.TweenService:Create(vu23.Gloom.Despawn, TweenInfo.new(3), {
    Pitch = 0
}):Play()
vu23.Gloom.Anchored = false
vu23.Gloom.CanCollide = false
vu23.Gloom.CFrame = vu23.Gloom.CFrame * CFrame.new(0, - 1, 0)
game.Debris:AddItem(vu23, 5)
