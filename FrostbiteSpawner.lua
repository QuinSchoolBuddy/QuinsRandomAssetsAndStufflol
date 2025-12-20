function GetRoom()
        local gruh = workspace.CurrentRooms
        return gruh:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
end
     
function LoadRaw(p5, p6, p7)
    local v8 = p6 .. "." .. p7
    writefile(v8, p5)
    local v9 = (getcustomasset or getsynasset)(v8)
    if p7 == "txt" then
        v9 = game:GetObjects(v9)[1]
    end
    return v9
end

local plr = game.Players.LocalPlayer
local chr = plr.Character
local tweenservice = game:GetService("TweenService")
local ambiencesoundlol = game:HttpGet("https://github.com/QuinSchoolBuddy/QuinsRandomAssetsAndStufflol/blob/main/New_frostbite_sound.mp3?raw=true")
local actualambiencesoundloader = LoadRaw(ambiencesoundlol, "Amblol", "mp3")

function LoadCustomInstance(source, parent)
	local model

	-- Normalize GitHub URL if needed
	local function NormalizeGitHubURL(url)
		if url:match("^https://github.com/.+%.rbxm$") and not url:find("?raw=true") then
			return url .. "?raw=true"
		end
		return url
	end

	while task.wait() and not model do
		if type(source) == "number" or tostring(source):match("^%d+$") then
			-- Asset ID loading
			local success, result = pcall(function()
				return game:GetObjects("rbxassetid://" .. tostring(source))[1]
			end)

			if success and result then
				model = result
			end

		elseif type(source) == "string" and source:match("^https?://") and source:match("%.rbxm") then
			-- GitHub URL loading
			local url = NormalizeGitHubURL(source)
			
			local success, result = pcall(function()
				local fileName = "temp_" .. tostring(math.random(100000, 999999)) .. ".rbxm"
				writefile(fileName, game:HttpGet(url))
				local obj = game:GetObjects((getcustomasset or getsynasset)(fileName))[1]
				delfile(fileName)
				return obj
			end)

			if success and result then
				model = result
			end

		else
					break
		end

		if model then
			model.Parent = parent or workspace

			for _, obj in ipairs(model:GetDescendants()) do
				if obj:IsA("Script") or obj:IsA("LocalScript") then
					obj:Destroy()
				end
			end

			pcall(function()
				model:SetAttribute("LoadedByExecutor", true)
			end)
		end
	end

	return model
end

local s = LoadCustomInstance("https://github.com/QuinSchoolBuddy/QuinsRandomAssetsAndStufflol/raw/refs/heads/main/Frostbite.rbxm", workspace)
local entity = s:FindFirstChildWhichIsA("BasePart")
entity.CFrame = GetRoom():WaitForChild("RoomEntrance").CFrame * CFrame.new(0,5,-15)
entity.Part.CFrame = entity.CFrame * CFrame.new(0,0,0)

local sound = Instance.new("Sound")
     	sound.SoundId = "rbxassetid://137044859218769"
     	sound.Looped = false
     	sound.Parent = s
 	    sound.Volume = 5
     	sound:Play()

local frost = Instance.new("ColorCorrectionEffect", game.Lighting)
task.spawn(function()
    tweenservice:Create(frost, TweenInfo.new(10), {
        TintColor = Color3.fromRGB(0, 0, 255),
        Saturation = -0.7,
        Contrast = 0.2
    }):Play()
end)

entity.Attachment.face.Enabled = false
entity.Attachment.Heylois.Enabled = false
entity.Attachment.BlackTrai2l.Enabled = false
entity.Attachment.BlackTrai3l.Enabled = false
wait(7)
entity.Attachment.face.Enabled = true
entity.Attachment.Heylois.Enabled = true
entity.Attachment.BlackTrai2l.Enabled = true
entity.Attachment.BlackTrai3l.Enabled = true
entity.Ambience.SoundId = actualambiencesoundloader
entity.AmbienceFar.SoundId = actualambiencesoundloader
entity.Ambience:Play()
entity.AmbienceFar:Play()

local dmg = true
task.spawn(function()
while  true do
wait(1)
if dmg == true then
local lighter = chr:FindFirstChild("Lighter")

if not lighter then
game.Players.LocalPlayer.Character.Humanoid.Health -= 3
game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Frostbite"
end

end
end
end)

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
dmg = false
entity.Attachment.face.Enabled = false
entity.Attachment.Heylois.Enabled = false
entity.Attachment.BlackTrai2l.Enabled = false
entity.Attachment.BlackTrai3l.Enabled = false
entity.Ambience:Stop()
entity.AmbienceFar:Stop()

local des = Instance.new("Sound")
     	des.SoundId = "rbxassetid://111715441853991"
     	des.Looped = false
     	des.Parent = s
 	    des.Volume = 2.5
     	des:Play()
wait(5)
s:Destroy()

task.spawn(function()
    tweenservice:Create(frost, TweenInfo.new(5), {
        TintColor = Color3.fromRGB(255, 255, 255),
        Saturation = 0,
        Contrast = 0
    }):Play()
end)
wait(5)
frost:Destroy()