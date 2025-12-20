-- ts file was generated at discord.gg/25ms


local v1 = tick()
local vu2 = game.Players.LocalPlayer
local _ = vu2.Character
local vu3 = game:GetService("RunService")
local v4 = game:GetService("PathfindingService")
local vu5, vu6 = pcall(function()
    return require(vu2.PlayerGui.MainUI.Initiator.Main_Game)
end)
writefile("Attraction.txt", game:HttpGet("https://github.com/DripCapybara/Doors-Modes/blob/main/CreepyMode/Attraction.rbxm?raw=true"))
local vu7 = game:GetObjects((getcustomasset or getsynasset)("Attraction.txt"))[1]
if vu7 then
    local v8 = vu2
    local v9 = {
        AgentRadius = 3,
        AgentHeight = 1,
        WaypointSpacing = 30
    }
    repeat
        task.wait()
    until vu7:FindFirstChild("Slop")
    vu7.Slop.Spawn:Stop()
    vu7.Slop.Spawn.Volume = 0.75
    vu7.Slop.SpawnAmbience:Stop()
    vu7.Parent = workspace
    local vu10 = Instance.new("Sound", v8)
    vu10.Volume = 0
    vu10.Looped = true
    vu10.SoundId = "rbxassetid://2162238374"
    vu10:Play()
    coroutine.wrap(function()
        local v11 = vu7.Animation
        loadstring("local script = " .. v11:GetFullName() .. "\n" .. v11.Source)()
    end)()
    coroutine.wrap(function()
        local v12 = vu7.Light
        loadstring("local script = " .. v12:GetFullName() .. "\n" .. v12.Source)()
    end)()
    local vu13 = game.Players.LocalPlayer
    local vu14 = vu13.Character
    local vu15 = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
    local v16 = {}
    if vu15:FindFirstChild("FigureSetup") then
        if vu15:FindFirstChild("FigureSetup"):FindFirstChild("FigureNodes") then
            v16 = vu15:FindFirstChild("FigureSetup"):FindFirstChild("FigureNodes"):GetChildren()
        end
    else
        local v17 = v4:CreatePath(v9)
        v17:ComputeAsync(vu15.RoomEntrance.Position + vu15.RoomEntrance.CFrame.LookVector * 8, vu15.RoomExit.Position + vu15.RoomExit.CFrame.LookVector * - 8)
        v16 = v17:GetWaypoints()
    end
    if # v16 >= 1 then
        local v18 = not vu15:FindFirstChild("Nodes") and 0 or math.floor(# vu15.Nodes:GetChildren() / 2)
        vu7.Slop.CFrame = (v18 == 0 and vu15[vu15.Name] or vu15.Nodes[v18]).CFrame + Vector3.new(0, 50, 0)
        game:GetService("TweenService"):Create(vu7.Slop, TweenInfo.new(3), {
            CFrame = (v18 == 0 and vu15[vu15.Name] or vu15.Nodes[v18]).CFrame + Vector3.new(0, 5, 0)
        }):Play()
        task.wait(3)
        vu7.Slop.Spawn:Play()
        vu7.Slop.Spawn.TimePosition = 0
        vu7.Slop.SpawnAmbience:Play()
        vu7.Slop.SpawnAmbience.TimePosition = 0
        local v19 = Instance.new("ScreenGui", vu13.PlayerGui)
        v19.IgnoreGuiInset = true
        v19.Name = "the red text of doom!!!!"
        local vu20 = Instance.new("ImageLabel", v19)
        vu20.Size = UDim2.fromScale(0.7, 1)
        vu20.Position = UDim2.new(0.15, 0, 0, 0)
        vu20.BackgroundTransparency = 1
        vu20.Image = "rbxassetid://115177025801220"
        vu20.ImageTransparency = 0
        task.spawn(function()
            while vu20.ImageTransparency < 1 do
                task.wait()
                vu7.Slop.Trail.Hair:Emit(1)
                vu20.Rotation = math.floor(math.random() * (math.random(1, 2) == 1 and - 30 or 30))
                vu20.Position = UDim2.new(0.15, math.random(- 50, 50) / 10, 0, math.random(- 50, 50) / 10)
            end
            vu20.Rotation = 0
        end)
        task.delay(0.35, function()
            game:GetService("TweenService"):Create(vu20, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                ImageTransparency = 1
            }):Play()
        end)
        task.wait(0.5)
        local function vu23()
            local v21 = vu14
            local v22, _ = workspace:FindPartOnRay(Ray.new(vu7.Slop.Position, - (vu7.Slop.Position - v21:GetPivot().Position).Unit * 150), vu7)
            return v22 and v22:IsDescendantOf(vu14) and true or false
        end
        local function v33(pu24, pu25, p26)
            local vu27 = 0
            local vu28 = (pu24.PrimaryPart.Position - pu25.Position).Magnitude / p26
            local vu29 = pu24.PrimaryPart.CFrame
            local vu30 = nil
            vu30 = vu3.Heartbeat:Connect(function(p31)
                if tonumber(vu15.Name) ~= game.ReplicatedStorage.GameData.LatestRoom.Value then
                    vu30:Disconnect()
                end
                local v32 = vu29:Lerp(pu25, vu27)
                vu27 = vu27 + p31 / vu28
                if pu24 and pu24.Parent then
                    pu24:PivotTo(v32)
                end
                if vu27 >= 1 then
                    vu30:Disconnect()
                end
            end)
            repeat
                vu3.Stepped:Wait()
            until not vu30.Connected
        end
        local function vu38(p34)
            local v35, v36 = workspace.CurrentCamera:WorldToViewportPoint(p34.Position)
            if v36 then
                v36 = v35.Z > 0
            end
            local v37 = RaycastParams.new()
            v37.FilterType = Enum.RaycastFilterType.Blacklist
            v37.FilterDescendantsInstances = {
                p34
            }
            workspace:Raycast(p34.Position, vu14.Collision.Position - p34.Position, v37)
            return v36 and true or false
        end
        local vu39 = tick()
        local v40 = vu3.RenderStepped:Connect(function()
            if (vu14:GetPivot().Position - vu7.Slop.Position).Magnitude < 25 then
                vu10.Volume = 10 - (vu14:GetPivot().Position - vu7.Slop.Position).Magnitude / 2
                if vu5 and vu6 then
                    vu6.camShaker:ShakeOnce(6, 2, 1, 0.5, 20 - (vu14:GetPivot().Position - vu7.Slop.Position).Magnitude)
                end
            end
            if tick() - vu39 >= 0.5 then
                vu39 = tick()
                if not vu38(vu7.Slop) and (vu14:FindFirstChildOfClass("Humanoid").Health > 0 and (tonumber(vu15.Name) == game.ReplicatedStorage.GameData.LatestRoom.Value and vu23())) then
                    vu14:FindFirstChildOfClass("Humanoid"):TakeDamage(4)
                    game.ReplicatedStorage.GameStats:FindFirstChild("Player_" .. vu13.Name).Total.DeathCause.Value = "Attraction"
                    vu20.ImageTransparency = 0
                    game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.DamageVignette.Size = UDim2.new(1, 0, 1, 0)
                    game:GetService("TweenService"):Create(vu20, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                        ImageTransparency = 1
                    }):Play()
                    game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.DamageVignette, TweenInfo.new(0.8), {
                        Size = UDim2.new(5, 0, 5, 0)
                    }):Play()
                    if vu14:FindFirstChildOfClass("Humanoid").Health < 1 then
                        task.spawn(function()
                            if firesignal then
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                                    "You died to the Attraction.",
                                    "A entity similar to another you might have encountered..",
                                    "It\'s a group of floating eyes.",
                                    "They produce magic and the reason behind it is unknown.",
                                    "Surviving it is easy, you just gotta look at it at all times!"
                                }, "Blue")
                            end
                        end)
                    end
                end
            end
        end)
        while tonumber(vu15.Name) == game.ReplicatedStorage.GameData.LatestRoom.Value do
            local v41 = Random.new(math.floor(tick() - v1))
            local v42 = v41:NextInteger(1, # v16)
            local v43 = v41:NextInteger(- 10, 10)
            local v44 = v41:NextInteger(- 10, 10)
            v33(vu7, CFrame.new(v16[v42].Position) * CFrame.new(v43, 4, v44), 10)
            task.wait(v41:NextInteger(1, 4))
        end
        v40:Disconnect()
        task.spawn(function()
            if AG and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead then
                AG("Just like a Magnet.", "I feel attracted by it..", "Survive Attraction.", "", "AAchiv")
            end
        end)
        local v45 = Instance.new("Sound", vu7.Slop)
        v45.Pitch = 0.8
        v45.SoundId = "rbxassetid://9126214611"
        v45.Volume = 5
        v45:Play()
        game.TweenService:Create(vu10, TweenInfo.new(1), {
            Pitch = 0
        }):Play()
        game.TweenService:Create(vu7.Slop, TweenInfo.new(25), {
            CFrame = vu7:GetPivot() * CFrame.new(0, 500, 0)
        }):Play()
        game.Debris:AddItem(vu10, 2)
        game.Debris:AddItem(vu7, 30)
    else
        vu7:Destroy()
    end
else
    return
end
