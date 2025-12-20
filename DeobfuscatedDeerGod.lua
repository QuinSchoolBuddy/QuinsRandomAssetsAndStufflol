-- ts file was generated at discord.gg/25ms


local vu1 = Instance.new("Model")
vu1.Name = "Specimen8"
local v2 = Instance.new("Part", vu1)
vu1.PrimaryPart = v2
v2.Transparency = 1
v2.Name = "RushNew"
v2.Anchored = true
v2.CanCollide = false
v2.Size = Vector3.new(5, 5, 5)
local v3 = Instance.new("Attachment", v2)
v3.Name = "FullBody"
local v4 = Instance.new("Attachment", v2)
v4.Name = "Head"
v4.Position = v3.Position + Vector3.new(0, 3.55, 0)
local v5 = Instance.new("Attachment", v2)
v5.Name = "JoinUs"
v5.Position = v3.Position + Vector3.new(0, - 3.1, 0)
local v6 = Instance.new("PointLight", v2)
v6.Brightness = 5500
v6.Color = Color3.fromRGB(7, 0, 13)
v6.Enabled = true
v6.Range = 10
v6.Shadows = true
v6.Name = "LightClose"
local function v11(p7, p8, p9)
    local v10 = Instance.new("ParticleEmitter")
    v10.Texture = p7
    v10.Speed = NumberRange.new(p9)
    v10.LockedToPart = p8
    return v10
end
local v12 = v11("rbxassetid://16014515791", true, 0)
v12.Parent = v3
v12.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 2.5, 0),
    NumberSequenceKeypoint.new(0.5, 2.57, 0),
    NumberSequenceKeypoint.new(1, 2.5, 0)
})
v12.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.17, 0),
    NumberSequenceKeypoint.new(0.23, 0.168, 0),
    NumberSequenceKeypoint.new(0.35, 0.138, 0),
    NumberSequenceKeypoint.new(0.5, 0.168, 0),
    NumberSequenceKeypoint.new(1, 0.17, 0)
})
v12.ZOffset = - 0.05
v12.Rate = 30
v12.Name = "Body"
v12.Lifetime = NumberRange.new(1)
v12.Rotation = NumberRange.new(- 1.25, 1.25)
v12.Speed = NumberRange.new(0.1)
v12.RotSpeed = NumberRange.new(- 5, 5)
v12.SpreadAngle = Vector2.new(0, 0)
v12.Brightness = 3
v12.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.1, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.75, 0.7, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v12.Drag = 1100
v12.LightEmission = 0.001
v12.LightInfluence = 0.001
v12.Orientation = "FacingCameraWorldUp"
v12.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(0.34, Color3.fromRGB(118, 80, 141)),
    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(132, 125, 188)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
local v13 = v11("rbxassetid://16014532689", true, 0)
v13.Parent = v4
v13.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1.6, 0),
    NumberSequenceKeypoint.new(0.5, 1.67, 0),
    NumberSequenceKeypoint.new(1, 1.6, 0)
})
v13.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, - 0.178, 0),
    NumberSequenceKeypoint.new(0.23, - 0.158, 0),
    NumberSequenceKeypoint.new(0.35, - 0.178, 0),
    NumberSequenceKeypoint.new(0.5, - 0.148, 0),
    NumberSequenceKeypoint.new(1, - 0.178, 0)
})
v13.ZOffset = 0.65
v13.Rate = 30
v13.Name = "Head"
v13.Lifetime = NumberRange.new(1)
v13.Rotation = NumberRange.new(- 1, 1)
v13.Speed = NumberRange.new(0.1)
v13.RotSpeed = NumberRange.new(- 5, 5)
v13.SpreadAngle = Vector2.new(0, 0)
v13.Brightness = 3
v13.LightEmission = 0.001
v13.LightInfluence = 0.001
v13.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.1, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.75, 0.7, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v13.Drag = 1100
v13.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(0.34, Color3.fromRGB(118, 80, 141)),
    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(132, 125, 188)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
local v14 = v11("rbxassetid://16014521998", true, 0)
v14.Parent = v3
v14.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 2.5, 0),
    NumberSequenceKeypoint.new(0.5, 2.57, 0),
    NumberSequenceKeypoint.new(1, 2.5, 0)
})
v14.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.17, 0),
    NumberSequenceKeypoint.new(0.23, 0.168, 0),
    NumberSequenceKeypoint.new(0.35, 0.138, 0),
    NumberSequenceKeypoint.new(0.5, 0.168, 0),
    NumberSequenceKeypoint.new(1, 0.17, 0)
})
v14.ZOffset = 0.5
v14.Rate = 30
v14.Name = "Hand"
v14.LightEmission = 0.001
v14.LightInfluence = 0.001
v14.Lifetime = NumberRange.new(1)
v14.Rotation = NumberRange.new(- 2, 2)
v14.Speed = NumberRange.new(0.1)
v14.RotSpeed = NumberRange.new(- 5, 5)
v14.SpreadAngle = Vector2.new(0, 0)
v14.Brightness = 3
v14.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.1, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.75, 0.7, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v14.Drag = 1100
v14.Orientation = "FacingCameraWorldUp"
v14.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(0.34, Color3.fromRGB(118, 80, 141)),
    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(132, 125, 188)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
local v15 = v11("rbxassetid://16014536721", true, 0)
v15.Parent = v4
v15.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1.6, 0),
    NumberSequenceKeypoint.new(0.5, 1.67, 0),
    NumberSequenceKeypoint.new(1, 1.6, 0)
})
v15.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, - 0.178, 0),
    NumberSequenceKeypoint.new(0.23, - 0.158, 0),
    NumberSequenceKeypoint.new(0.35, - 0.178, 0),
    NumberSequenceKeypoint.new(0.5, - 0.148, 0),
    NumberSequenceKeypoint.new(1, - 0.178, 0)
})
v15.ZOffset = 0.75
v15.Rate = 8
v15.Name = "Eyes"
v15.LightEmission = 0.001
v15.LightInfluence = 0.5
v15.Lifetime = NumberRange.new(0.7)
v15.Rotation = NumberRange.new(- 1, 1)
v15.Speed = NumberRange.new(0.1)
v15.RotSpeed = NumberRange.new(- 5, 5)
v15.SpreadAngle = Vector2.new(0, 0)
v15.Brightness = 3
v15.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.2, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.7, 1, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v15.Drag = 1100
local v16 = Instance.new("ParticleEmitter", v2)
v16.Texture = "rbxasset://textures/particles/smoke_main.dds"
v16.Lifetime = NumberRange.new(1)
v16.Rate = 150
v16.Speed = NumberRange.new(0, 5)
v16.VelocitySpread = 50
v16.Rotation = NumberRange.new(- 360, 360)
v16.RotSpeed = NumberRange.new(- 50, 50)
v16.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 3),
    NumberSequenceKeypoint.new(1, 3.6)
})
v16.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 5, 55)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(11, 1, 20)),
    ColorSequenceKeypoint.new(0.7, Color3.fromRGB(33, 5, 55)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
v16.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1),
    NumberSequenceKeypoint.new(0.356, 0.37),
    NumberSequenceKeypoint.new(0.76, 0.37),
    NumberSequenceKeypoint.new(1, 1)
})
v16.ZOffset = - 1
v16.LightInfluence = 0.1
v16.LightEmission = 0.3
v16.Name = "Smoke"
v16.Brightness = 7
v16.SpreadAngle = Vector2.new(- 180, 180)
local v17 = v16:Clone()
v17.Parent = v2
v17.LockedToPart = true
local v18 = v11("rbxassetid://14293650911", true, 0)
v18.Parent = v5
v18.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0, 0),
    NumberSequenceKeypoint.new(1, 20, 0)
})
v18.ZOffset = - 0.3
v18.Rate = 2
v18.Name = "Aura1"
v18.Lifetime = NumberRange.new(1)
v18.Speed = NumberRange.new(0)
v18.SpreadAngle = Vector2.new(0, 0)
v18.LightEmission = 0.5
v18.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.2, 0, 0),
    NumberSequenceKeypoint.new(0.74, 0, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v18.Drag = 10
v18.Orientation = "VelocityPerpendicular"
v18.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
local v19 = v11("rbxassetid://14293650911", true, 0)
v19.Parent = v5
v19.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 4.3, 0),
    NumberSequenceKeypoint.new(0.5, 2.7, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v19.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1.48, 0),
    NumberSequenceKeypoint.new(0.23, 1.358, 0),
    NumberSequenceKeypoint.new(0.35, 1.248, 0),
    NumberSequenceKeypoint.new(0.5, 1.228, 0),
    NumberSequenceKeypoint.new(1, 0.98, 0)
})
v19.ZOffset = - 0.1
v19.Rate = 130
v19.Name = "Aura2"
v19.Lifetime = NumberRange.new(1)
v19.Rotation = NumberRange.new(- 360, 360)
v19.Speed = NumberRange.new(5)
v19.RotSpeed = NumberRange.new(- 100, 100)
v19.SpreadAngle = Vector2.new(0, 0)
v19.LightEmission = 0.65
v19.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.2, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.7, 1, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v19.Drag = 20
v19.Orientation = "VelocityPerpendicular"
v19.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(76, 11, 115)),
    ColorSequenceKeypoint.new(0.4, Color3.fromRGB(32, 11, 65)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
local v20 = v11("rbxassetid://14293650911", true, 0)
v20.Parent = v5
v20.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 4.3, 0),
    NumberSequenceKeypoint.new(0.5, 2.7, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v20.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1.48, 0),
    NumberSequenceKeypoint.new(0.23, 1.358, 0),
    NumberSequenceKeypoint.new(0.35, 1.248, 0),
    NumberSequenceKeypoint.new(0.5, 1.228, 0),
    NumberSequenceKeypoint.new(1, 0.98, 0)
})
v20.ZOffset = 0
v20.Rate = 130
v20.Name = "Aura3"
v20.Lifetime = NumberRange.new(1)
v20.Rotation = NumberRange.new(- 360, 360)
v20.Speed = NumberRange.new(5)
v20.RotSpeed = NumberRange.new(- 100, 100)
v20.SpreadAngle = Vector2.new(0, 0)
v20.LightEmission = 0.5
v20.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.2, 0, 0),
    NumberSequenceKeypoint.new(0.4, 0, 0),
    NumberSequenceKeypoint.new(0.7, 1, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v20.Drag = 20
v20.Orientation = "VelocityPerpendicular"
v20.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 1, 8)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
local v21 = Instance.new("ParticleEmitter", v2)
v21.Name = "dustthing"
v21.Texture = "rbxassetid://669133414"
v21.Lifetime = NumberRange.new(1)
v21.Rate = 150
v21.Drag = 1000
v21.Squash = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0, 0),
    NumberSequenceKeypoint.new(0.1, 0.8, 0),
    NumberSequenceKeypoint.new(0.14, - 0.35, 0),
    NumberSequenceKeypoint.new(0.23, 2.1, 0),
    NumberSequenceKeypoint.new(0.35, - 0.11, 0),
    NumberSequenceKeypoint.new(0.6, 1.56, 0),
    NumberSequenceKeypoint.new(0.75, - 1.1, 0),
    NumberSequenceKeypoint.new(0.8, 0.3, 0),
    NumberSequenceKeypoint.new(0.89, - 2.342, 0),
    NumberSequenceKeypoint.new(0.9, 1.53, 0),
    NumberSequenceKeypoint.new(0.93, - 0.85, 0),
    NumberSequenceKeypoint.new(0.96, 1, 0),
    NumberSequenceKeypoint.new(0.965, - 0.09, 0),
    NumberSequenceKeypoint.new(1, 0, 0)
})
v21.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.6, 0),
    NumberSequenceKeypoint.new(0.75, 0.1, 0),
    NumberSequenceKeypoint.new(1, 0.21, 0)
})
v21.Speed = NumberRange.new(54, 95)
v21.Rotation = NumberRange.new(- 360, 360)
v21.RotSpeed = NumberRange.new(0, 0)
v21.LockedToPart = true
v21.Color = ColorSequence.new(Color3.fromRGB(68, 16, 78))
v21.Shape = Enum.ParticleEmitterShape.Sphere
v21.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
v21.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
v21.ShapePartial = 1
v21.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.5, 0),
    NumberSequenceKeypoint.new(0.845, 0.5, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v21.Orientation = "FacingCameraWorldUp"
v21.Brightness = 5000
v21.SpreadAngle = Vector2.new(30, 30)
v21.ZOffset = - 0.05
local v22 = v21:Clone()
v22.LockedToPart = false
v22.Parent = v2
local v23 = Instance.new("ParticleEmitter", v2)
v23.Name = "Whateverthisis"
v23.Texture = "rbxassetid://37332909"
v23.Lifetime = NumberRange.new(2)
v23.Rate = 40
v23.Speed = NumberRange.new(5)
v23.Size = NumberSequence.new(0.5)
v23.Squash = NumberSequence.new(0)
v23.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 1, 7)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
v23.LightEmission = 0.7
v23.LightInfluence = 1
v23.LockedToPart = true
v23.SpreadAngle = Vector2.new(30, 30)
v23.ZOffset = 0
v23.Drag = 40
v23.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
v23.Brightness = 2
local v24 = v23:Clone()
v24.Parent = v2
v24.LockedToPart = false
local v25 = Instance.new("Sound", v2)
v25.Volume = 0.2
v25.Name = "Kill"
v25.SoundId = "rbxassetid://5263560896"
v25.Pitch = 3
v25.RollOffMode = "InverseTapered"
v25.RollOffMaxDistance = 1000
v25.RollOffMinDistance = 10
local v26 = Instance.new("DistortionSoundEffect", v25)
v26.Priority = 5
v26.Level = 0.98
Instance.new("PitchShiftSoundEffect", v25).Octave = 0.5
local v27 = Instance.new("FlangeSoundEffect", v25)
v27.Rate = 0.2
v27.Depth = 1
v27.Mix = 1
v27.Priority = 2
local v28 = Instance.new("TremoloSoundEffect", v25)
v28.Depth = 1
v28.Duty = 0.94
v28.Frequency = 20
v28.Priority = 2
local v29 = Instance.new("Sound", v2)
v29.SoundId = "rbxassetid://1021550487"
v29.Name = "Breathing"
v29.Pitch = 0.3
v29.Volume = 7
v29.RollOffMode = "InverseTapered"
v29.EmitterSize = 10
v29.RollOffMaxDistance = 200
v29.Looped = true
v29:Play()
local v30 = Instance.new("TremoloSoundEffect", v29)
v30.Depth = 1
v30.Duty = 0.94
v30.Frequency = 20
v30.Priority = 3
local v31 = Instance.new("EqualizerSoundEffect", v29)
v31.HighGain = - 30.5
v31.LowGain = 0.1
v31.MidGain = - 6.2
local v32 = Instance.new("FlangeSoundEffect", v29)
v32.Depth = 1
v32.Mix = 1
v32.Rate = 0.2
v32.Priority = 3
local v33 = Instance.new("Sound", v2)
v33.SoundId = "rbxassetid://1244506786"
v33.Name = "CloseFootsteps"
v33.Pitch = 0.6
v33.Volume = 5
v33.RollOffMode = "InverseTapered"
v33.EmitterSize = 10
v33.RollOffMaxDistance = 100
v33.Looped = true
v33:Play()
local v34 = Instance.new("EqualizerSoundEffect", v33)
v34.HighGain = - 30.5
v34.LowGain = 0.1
v34.MidGain = - 6.2
local v35 = Instance.new("FlangeSoundEffect", v33)
v35.Depth = 1
v35.Mix = 1
v35.Rate = 0.2
v35.Priority = 3
local v36 = Instance.new("Sound", v2)
v36.SoundId = "rbxassetid://1244506786"
v36.Name = "FarFootsteps"
v36.Pitch = 0.6
v36.Volume = 4
v36.RollOffMode = "InverseTapered"
v36.EmitterSize = 10
v36.RollOffMaxDistance = 250
v36.Looped = true
v36:Play()
local v37 = Instance.new("EqualizerSoundEffect", v36)
v37.HighGain = - 30.5
v37.LowGain = 0.1
v37.MidGain = - 6.2
local v38 = Instance.new("FlangeSoundEffect", v36)
v38.Depth = 1
v38.Mix = 1
v38.Rate = 0.2
v38.Priority = 3
local v39 = Instance.new("TremoloSoundEffect", v36)
v39.Depth = 1
v39.Duty = 1
v39.Frequency = 17
v39.Priority = 0
local v40 = Instance.new("EqualizerSoundEffect", v36)
v40.HighGain = - 20.6
v40.LowGain = 4.6
v40.MidGain = - 14.3
local v41 = Instance.new("FlangeSoundEffect", v36)
v41.Depth = 1
v41.Mix = 1
v41.Rate = 0.6
v41.Priority = 3
local v42 = Instance.new("Sound", v2)
v42.SoundId = "rbxassetid://6343741731"
v42.Name = "RepentYourSins"
v42.Pitch = 0.7
v42.Volume = 1
v42.RollOffMode = "InverseTapered"
v42.EmitterSize = 10
v42.RollOffMaxDistance = 350
local v43 = Instance.new("FlangeSoundEffect", v42)
v43.Depth = 1
v43.Mix = 1
v43.Rate = 0.6
v43.Priority = 0
local v44 = Instance.new("FlangeSoundEffect", v42)
v44.Depth = 1
v44.Mix = 1
v44.Rate = 0.2
v44.Priority = 3
local v45 = Instance.new("TremoloSoundEffect", v42)
v45.Depth = 1
v45.Duty = 1
v45.Frequency = 17
v45.Priority = 0
local v46 = Instance.new("Sound")
v46.Parent = v2
v46.Name = "HeartBeat"
v46.SoundId = "rbxassetid://176554627"
v46.Volume = 1
v46.Pitch = 1.3
v46.Looped = true
v46.RollOffMaxDistance = 450
v46.RollOffMinDistance = 10
v46.RollOffMode = Enum.RollOffMode.InverseTapered
v46:Play()
local v47 = Instance.new("Sound", v2)
v47.SoundId = "rbxassetid://6111244462"
v47.Pitch = 0.99
v47.Volume = 1
Instance.new("DistortionSoundEffect", v47).Level = 0.2
v47.Looped = true
v47.RollOffMode = "InverseTapered"
v47.RollOffMaxDistance = 170
v47.RollOffMinDistance = 60
local v48 = Instance.new("EqualizerSoundEffect", v47)
v48.HighGain = 10
v48.MidGain = 10
v48.LowGain = 10
local v49 = Instance.new("ReverbSoundEffect", v47)
v49.DecayTime = 0.2
v49.Density = 1
v49.Diffusion = 1
v49.DryLevel = 1
local v50 = Instance.new("EqualizerSoundEffect", v47)
v50.HighGain = - 20
v50.MidGain = - 30
v50.LowGain = - 10
Instance.new("EchoSoundEffect", v47).Delay = 1
v47:Play()
local v51 = Instance.new("Sound", v2)
v51.SoundId = "rbxassetid://6111244462"
v51.Pitch = 1
v51.Volume = 1.2
Instance.new("DistortionSoundEffect", v51).Level = 0.2
v51.Looped = true
v51.RollOffMode = "InverseTapered"
v51.RollOffMaxDistance = 120
v51.RollOffMinDistance = 20
local v52 = Instance.new("EqualizerSoundEffect", v51)
v52.HighGain = - 10
v52.MidGain = - 20
v52.LowGain = - 10
local v53 = Instance.new("EqualizerSoundEffect", v51)
v53.HighGain = - 20
v53.MidGain = - 30
v53.LowGain = - 10
Instance.new("EchoSoundEffect", v51).Delay = 1
v51:Play()
local v54 = Instance.new("Sound", v2)
v54.SoundId = "rbxassetid://6111244462"
v54.Pitch = 1
v54.Volume = 1
Instance.new("DistortionSoundEffect", v54).Level = 0.2
v54.Looped = true
v54.RollOffMode = "InverseTapered"
v54.RollOffMaxDistance = 60
v54.RollOffMinDistance = 5
local v55 = Instance.new("EqualizerSoundEffect", v54)
v55.HighGain = 10
v55.MidGain = 10
v55.LowGain = 10
local v56 = Instance.new("EqualizerSoundEffect", v54)
v56.HighGain = 10
v56.MidGain = - 30
v56.LowGain = - 10
Instance.new("EchoSoundEffect", v54).Delay = 1
v54:Play()
local vu57 = game.Players.LocalPlayer
local v58 = workspace.CurrentRooms:GetChildren()[1]
vu1.Parent = workspace
vu1:PivotTo(v58:GetPivot() * CFrame.new(0, 0, 100))
for _ = 1, 3 do
    local v59 = Instance.new("GuiMain", vu57.PlayerGui)
    v59.IgnoreGuiInset = true
    v59.Name = "Vignette_Chase"
    local v60 = Instance.new("ImageLabel", v59)
    v60.BackgroundTransparency = 1
    v60.AnchorPoint = Vector2.new(0.5, 0.5)
    v60.Position = UDim2.new(0.5, 0, 0.5, 0)
    v60.Size = UDim2.new(200, 0, 200, 0)
    v60.Image = "http://www.roblox.com/asset/?id=17857643301"
    game.TweenService:Create(v60, TweenInfo.new(10), {
        Size = UDim2.new(3, 0, 3, 0)
    }):Play()
end
local vu61 = {
    ["mama help me_2"] = Instance.new("ScreenGui"),
    TextLabel_2 = Instance.new("TextLabel"),
    UICorner_2 = Instance.new("UICorner"),
    UIGradient = Instance.new("UIGradient")
}
vu61["mama help me_2"].Parent = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
vu61["mama help me_2"].Name = "mama help me"
vu61["mama help me_2"].IgnoreGuiInset = true
vu61["mama help me_2"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
vu61.TextLabel_2.Parent = vu61["mama help me_2"]
vu61.TextLabel_2.Name = "TextLabel"
vu61.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/Guru.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
vu61.TextLabel_2.FontSize = Enum.FontSize.Size24
vu61.TextLabel_2.RichText = true
vu61.TextLabel_2.Text = "You\'re being followed..."
vu61.TextLabel_2.TextTransparency = 1
vu61.TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 128)
vu61.TextLabel_2.TextSize = 20
vu61.TextLabel_2.Active = true
vu61.TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vu61.TextLabel_2.BackgroundTransparency = 1
vu61.TextLabel_2.Position = UDim2.new(0, 0, 0.8, 0)
vu61.TextLabel_2.Size = UDim2.new(1, 0, 0.065, 0)
vu61.UICorner_2.Parent = vu61.TextLabel_2
vu61.UICorner_2.Name = "UICorner"
vu61.UICorner_2.CornerRadius = UDim.new(0, 100)
vu61.UIGradient.Parent = vu61.TextLabel_2
vu61.UIGradient.Name = "UIGradient"
vu61.UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.263, Color3.fromRGB(85, 170, 255)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(83, 167, 255)),
    ColorSequenceKeypoint.new(0.489574, Color3.fromRGB(85, 170, 255)),
    ColorSequenceKeypoint.new(0.731665, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(0.782, Color3.fromRGB(2, 4, 6)),
    ColorSequenceKeypoint.new(0.835004, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 170, 255))
})
vu61.UIGradient.Rotation = 90
Instance.new("UIGradient", vu61.TextLabel_2)
game.TweenService:Create(vu61.TextLabel_2, TweenInfo.new(5), {
    TextTransparency = 0
}):Play()
writefile("followed", game:HttpGet("https://github.com/thatstinknoon/goob/blob/main/Followed..mp3?raw=true"))
local v62 = (getcustomasset or getsynasset)("followed")
local v63 = Instance.new("Sound", workspace)
v63.Volume = 0
v63.Pitch = 0.95
v63.SoundId = v62
v63.Looped = true
v63:Play()
game.TweenService:Create(v63, TweenInfo.new(2), {
    Volume = 1
}):Play()
local vu64 = false
local vu65 = 15
local vu66 = game:GetService("RunService")
local vu67 = game:GetService("PathfindingService")
local vu68 = {
    AgentRadius = 3,
    AgentHeight = 1,
    WaypointSpacing = 15
}
tick()
local _ = vu57.Character:GetPivot().Position
function ChasePlayer()
    while task.wait() do
        vu68.WaypointSpacing = 5
        vu65 = 20
        local v69 = vu1.RushNew.Position
        local v70 = (v69 - vu57.Character:GetPivot().Position).Magnitude
        local v71 = - (v69 - vu57.Character:GetPivot().Position).Unit * 512
        local v72 = Ray.new(v69, v71)
        local v73 = workspace:FindPartOnRay(v72, vu1)
        if v70 >= 512 then
            vu1:Destroy()
            game.TweenService:Create(snd, TweenInfo.new(2), {
                Volume = 0
            }):Play()
            game.TweenService:Create(vu61.TextLabel_2, TweenInfo.new(1), {
                TextTransparency = 1
            }):Play()
            game.Debris:AddItem(snd, 4)
            game.Debris:AddItem(vu61.TextLabel_2, 2)
            local v74, v75, v76 = pairs(vu57.PlayerGui:GetChildren())
            while true do
                local v77
                v76, v77 = v74(v75, v76)
                if v76 == nil then
                    break
                end
                if v77.Name == "Vignette_Chase" then
                    game.TweenService:Create(v77.ImageLabel, TweenInfo.new(3), {
                        ImageTransparency = 1
                    }):Play()
                    game.Debris:AddItem(v77, 4)
                end
            end
            break
        end
        if v70 <= 5 then
            game.TweenService:Create(snd, TweenInfo.new(1), {
                Volume = 0
            }):Play()
            game.TweenService:Create(vu61.TextLabel_2, TweenInfo.new(1), {
                TextTransparency = 1
            }):Play()
            game.Debris:AddItem(snd, 2)
            game.Debris:AddItem(vu61.TextLabel_2, 2)
            local v78, v79, v80 = pairs(vu57.PlayerGui:GetChildren())
            while true do
                local v81
                v80, v81 = v78(v79, v80)
                if v80 == nil then
                    break
                end
                if v81.Name == "Vignette_Chase" then
                    game.TweenService:Create(v81.ImageLabel, TweenInfo.new(1), {
                        ImageTransparency = 1
                    }):Play()
                    game.Debris:AddItem(v81, 2)
                end
            end
            vu57.Character:FindFirstChildOfClass("Humanoid").Health = 0
            game.ReplicatedStorage.GameStats["Player_" .. vu57.Name].Total.DeathCause.Value = "Deer God"
            task.spawn(function()
                if vu1 then
                    vu1:Destroy()
                end
                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                    "You died to whom you call Deer God...",
                    "It\'s chases you as it taunts you..",
                    "Do not fall for it\'s tricks as you wont get a happy ending.",
                    "Once it sees you, its over and it\'s gonna chase you until you die..",
                    "A easy way to survive him is by hiding somewhere it wont see you, " .. (game.ReplicatedStorage.GameData.Floor.Value == "Mines" and "Lockers and Vents" or "Wardrobes") .. " dont work.."
                }, "Blue")
            end)
            break
        end
        if v73 then
            if v73:IsDescendantOf(vu57.Character) then
                vu65 = 15
                MoveEntity(vu57.Character:GetPivot().Position)
            else
                local v82 = vu67:CreatePath(vu68)
                v82:ComputeAsync(vu1.RushNew.Position + Vector3.new(0, - 2, 0) + (vu57.Character:GetPivot().Position - vu1.RushNew.Position).Unit * 3, vu57.Character:GetPivot().Position + Vector3.new(0, - 1, 0) + (vu57.Character:GetPivot().Position - vu1.RushNew.Position).Unit * - 3)
                if v82 and v82:GetWaypoints() ~= nil then
                    local v83, v84, v85 = pairs(v82:GetWaypoints())
                    while true do
                        local v86
                        v85, v86 = v83(v84, v85)
                        if v85 == nil then
                            break
                        end
                        if v85 <= 4 then
                            MoveEntity(v86.Position + Vector3.new(0, 2.5, 0))
                        end
                    end
                end
            end
        end
    end
end
function MoveEntity(pu87)
    local vu88 = false
    local vu89 = nil
    vu89 = vu66.Stepped:Connect(function(_, p90)
        if not vu1:GetAttribute("Paused") then
            local v91 = vu1:GetPivot()
            local v92 = pu87 - v91.Position
            local v93 = v92.Unit
            local v94 = v92.Magnitude
            if not vu64 then
                local v95 = Ray.new(v91.Position, - (v91.Position - vu57.Character:GetPivot().Position).Unit * 100)
                local v96 = workspace:FindPartOnRay(v95, vu1)
                if v96 and (v96:IsDescendantOf(vu57.Character) and not vu64) then
                    vu64 = true
                    vu89:Disconnect()
                    ChasePlayer()
                end
            end
            if (vu64 == true and 0.2 or 0.1) < v94 then
                vu1:PivotTo(v91 + v93 * math.min(p90 * vu65, v94))
            else
                vu89:Disconnect()
                vu88 = true
            end
        end
    end)
    repeat
        vu66.RenderStepped:Wait()
    until vu88 == true
end
task.spawn(function()
    writefile("voiceline1.mp3", game:HttpGet("https://github.com/58ibt2it8b525i8bt25ib8y/hellopeter/blob/main/DeergodVoiceLine1.mp3?raw=true"))
    writefile("voiceline2.mp3", game:HttpGet("https://github.com/58ibt2it8b525i8bt25ib8y/hellopeter/blob/main/DeergodVoiceLine2.mp3?raw=true"))
    writefile("voiceline3.mp3", game:HttpGet("https://github.com/58ibt2it8b525i8bt25ib8y/hellopeter/blob/main/DeergodVoiceLine3.mp3?raw=true"))
    writefile("voiceline4.mp3", game:HttpGet("https://github.com/58ibt2it8b525i8bt25ib8y/hellopeter/blob/main/DeergodVoiceLine4.mp3?raw=true"))
    local v97 = {
        (getcustomasset or getsynasset)("voiceline1.mp3"),
        (getcustomasset or getsynasset)("voiceline2.mp3"),
        (getcustomasset or getsynasset)("voiceline3.mp3"),
        ((getcustomasset or getsynasset)("voiceline4.mp3"))
    }
    while vu1 and vu1 ~= nil do
        local v98 = Random.new(game:GetService("ReplicatedStorage").GameData.GameSeed.Value + game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
        task.wait(v98:NextInteger(7, 15))
        if vu1 and vu1:FindFirstChild("RushNew") then
            snd = Instance.new("Sound", vu1.RushNew)
            snd.Volume = 7
            snd.Pitch = 1
            snd.SoundId = v97[v98:NextInteger(1, # v97)]
            snd:Play()
            snd.Ended:Wait()
            snd:Destroy()
        end
    end
end)
local v99 = vu68
local v100 = vu67
local v101 = vu65
for v102 = 1, 100 do
    if vu64 then
        break
    end
    vu65 = math.clamp(v101 + 1, 15, 20)
    local v103 = workspace.CurrentRooms:FindFirstChild(v102)
    if v103 then
        local v104 = v100:CreatePath(v99)
        v101 = vu65
        repeat
            task.wait()
        until v103:FindFirstChild("RoomEntrance") and v103:FindFirstChild("RoomExit")
        v104:ComputeAsync(v103.RoomEntrance.Position + v103.RoomEntrance.CFrame.LookVector * 8, v103.RoomExit.Position + v103.RoomExit.CFrame.LookVector * - 8)
        local v105 = v104:GetWaypoints()
        local v106, v107, v108 = pairs(v105)
        while true do
            local v109
            v108, v109 = v106(v107, v108)
            if v108 == nil then
                break
            end
            vu65 = v101 + 0.2
            if vu64 then
                v101 = vu65
                break
            end
            MoveEntity(v109.Position + Vector3.new(0, 2.5, 0))
            v101 = vu65
        end
        if v103 then
            if v103:FindFirstChild("RoomExit") then
                if vu64 then
                    break
                end
                MoveEntity(v103:FindFirstChild("RoomExit").Position)
            end
        end
    else
        v101 = vu65
    end
end
if not vu64 then
    vu1:Destroy()
    game.TweenService:Create(vu61.TextLabel_2, TweenInfo.new(2), {
        TextTransparency = 1
    }):Play()
    game.Debris:AddItem(vu61["mama help me_2"], 3)
    game.TweenService:Create(v63, TweenInfo.new(3), {
        Volume = 0
    }):Play()
    game.Debris:AddItem(snd, 4)
    local v110, v111, v112 = pairs(vu57.PlayerGui:GetChildren())
    while true do
        local v113
        v112, v113 = v110(v111, v112)
        if v112 == nil then
            break
        end
        if v113.Name == "Vignette_Chase" then
            game.TweenService:Create(v113.ImageLabel, TweenInfo.new(3), {
                ImageTransparency = 1
            }):Play()
            game.Debris:AddItem(v113, 4)
        end
    end
end