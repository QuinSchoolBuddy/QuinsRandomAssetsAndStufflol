		local omg = Instance.new("Model")
		omg.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
		omg.Name = "Phonty"

		local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
		local eyes=game:GetObjects("rbxassetid://166258731")[1]

		local num=0

		if currentLoadedRoom:FindFirstChild("Nodes") then
			num = math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
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

		eyes.CFrame=(
			num==0 and currentLoadedRoom[currentLoadedRoom.Name] or currentLoadedRoom.Nodes[num]
		).CFrame + Vector3.new(0, 5, 0)

		eyes.Parent=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Phonty
		eyes.Anchored = false
		local pirarie = Instance.new("Sound")
		pirarie.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Phonty.Victrola
		pirarie.Name = "Music"
		local funmusic = game:HttpGet("https://github.com/QuinSchoolBuddy/QuinsRandomAssetsAndStufflol/blob/main/phonty%20easer%20egg%20lmao.ogg?raw=true")
		local funmusicloader = LoadRaw(funmusic, "funni", "ogg")
		pirarie.SoundId = funmusicloader
		pirarie.PlaybackSpeed = 0
		pirarie.Looped = true
		pirarie.RollOffMaxDistance = 100
		pirarie.RollOffMinDistance = 10
		pirarie:Play()
		game:GetService("TweenService"):Create(pirarie,TweenInfo.new(1.5),{Pitch = 1}):Play()