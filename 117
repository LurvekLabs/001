local UiLibrary = {}
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local CoreGui = getgenv == nil and LocalPlayer:WaitForChild("PlayerGui") or game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

function AddStroke(parent, thickness, _, transparency)
	local Stroke = Instance.new("UIStroke")
	Stroke.Parent = parent
	Stroke.Thickness = thickness
	Stroke.Color = Color3.fromRGB(40, 40, 40)
	Stroke.Transparency = transparency
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	return Stroke
end

function UiLibrary:Create()
	local DestroyWindowEvents = {}
	local Utility = {}
	if CoreGui:FindFirstChild("LurvekVIP") then
		CoreGui.LurvekVIP:Destroy()
	end

	local LurvekVIP = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Tabs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TabItems = Instance.new("ScrollingFrame")
	local LeftItems = Instance.new("Frame")
	local RightItems = Instance.new("Frame")

	LurvekVIP.Name = "LurvekVIP"
	LurvekVIP.Parent = CoreGui
	LurvekVIP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightShift or input.KeyCode == Enum.KeyCode.Insert then
			LurvekVIP.Enabled = not LurvekVIP.Enabled
		end
	end)

	Main.Name = "Main"
	Main.Parent = LurvekVIP
	Main.BackgroundColor3 = Color3.new(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0, Camera.ViewportSize.X / 2 - 195, 0, Camera.ViewportSize.Y / 2 - 195)
	Main.Size = UDim2.new(0, 390, 0, 390)
	Main.ZIndex = 10
	UICorner.Parent = Main

	local Dragging = false
	local DragOffset = Vector2.new(0, 0)

	Title.Name = "Title"
	Title.Parent = Main
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0.5, 0, 0, 0)
	Title.Size = UDim2.new(0.94, 0, 0, 30)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "<b>Lurvek.<font color=\"rgb(170, 100, 255)\">VIP</font></b>"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 16
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.RichText = true

	Title.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = true
			local pos = UserInputService:GetMouseLocation()
			DragOffset = Vector2.new(pos.X - Main.AbsolutePosition.X, pos.Y - Main.AbsolutePosition.Y)
		end
	end)

	Title.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
			local pos = UserInputService:GetMouseLocation()
			Main.Position = UDim2.new(0, pos.X - DragOffset.X, 0, pos.Y - DragOffset.Y)
		end
	end)

	Tabs.Name = "Tabs"
	Tabs.Parent = Title
	Tabs.BackgroundColor3 = Color3.new(0, 0, 0)
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0, 0, 1.1, 0)
	Tabs.Size = UDim2.new(1, 0, 1, 0)

	UIListLayout.Parent = Tabs
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	TabItems.Name = "TabItems"
	TabItems.Parent = Main
	TabItems.Active = true
	TabItems.AnchorPoint = Vector2.new(0.5, 0.5)
	TabItems.BackgroundColor3 = Color3.new(0, 0, 0)
	TabItems.BorderSizePixel = 0
	TabItems.Position = UDim2.new(0.5, 0, 0.56, 0)
	TabItems.Size = UDim2.new(0.94, 0, 0.8, 0)

	LeftItems.Name = "LeftItems"
	LeftItems.Parent = TabItems
	LeftItems.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
	LeftItems.BorderSizePixel = 0
	LeftItems.Size = UDim2.new(0.5, 0, 1000, 0)
	LeftItems.ZIndex = 2

	RightItems.Name = "RightItems"
	RightItems.Parent = TabItems
	RightItems.AnchorPoint = Vector2.new(1, 0)
	RightItems.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
	RightItems.BorderSizePixel = 0
	RightItems.Position = UDim2.new(1, 0, 0, 0)
	RightItems.Size = UDim2.new(0.5, 0, 1000, 0)
	RightItems.ZIndex = 2

	function Utility:AddTab(tabData)
		local Utility = {}
		Utility.Name = tabData.Name

		local TabButton = Instance.new("TextButton")
		AddStroke(TabButton, 1, nil, 0.9)
		TabButton.Parent = Tabs
		TabButton.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
		TabButton.BorderSizePixel = 0
		TabButton.Font = Enum.Font.GothamBold
		TabButton.Text = tabData.Name
		TabButton.TextColor3 = Color3.new(1, 1, 1)
		TabButton.TextSize = 14

		TabButton.MouseButton1Click:Connect(function()
			Utility:Open()
		end)

		task.spawn(function()
			task.wait(0.1)
			TabButton.Size = UDim2.new(0, TabButton.TextBounds.X + 14, 1, 0)
		end)

		local function CreateList(_name, parent, tabName)
			local ListUtility = {}
			local List = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local ListTitle = Instance.new("TextLabel")
			AddStroke(List, 1, nil, 0.98)

			List.Parent = parent
			List.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
			List.BackgroundTransparency = 0.3
			List.Size = UDim2.new(1, 0, 0, 15)
			List.Visible = false
			List:SetAttribute("Tab", tabName)

			UIListLayout.Parent = List
			UIListLayout.FillDirection = Enum.FillDirection.Vertical
			UIListLayout.Padding = UDim.new(0, 1)

			ListTitle.Parent = List
			ListTitle.BackgroundTransparency = 1
			ListTitle.Size = UDim2.new(1, 0, 0, 10)
			ListTitle.Font = Enum.Font.GothamBold
			ListTitle.Text = _name
			ListTitle.TextColor3 = Color3.fromRGB(180, 180, 180)
			ListTitle.TextScaled = true
			ListTitle.TextXAlignment = Enum.TextXAlignment.Center

			function ListUtility:AddToggle(data)
				local toggleUtils = {}
				data.Callback = data.Callback or function() end
				toggleUtils.value = data.Default or false

				local ToggleButton = Instance.new("TextButton")
				local Checkbox = Instance.new("Frame")
				local ToggleTitle = Instance.new("TextLabel")
				local KeybindButton = Instance.new("TextButton")

				ToggleButton.Parent = List
				ToggleButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				ToggleButton.BorderSizePixel = 0
				ToggleButton.Size = UDim2.new(0.96, 0, 0, 20)
				ToggleButton.Text = ""

				AddStroke(Checkbox, 1, nil, 0.9)
				Checkbox.Parent = ToggleButton
				Checkbox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				Checkbox.BorderSizePixel = 0
				Checkbox.Size = UDim2.new(0, 10, 0, 10)
				Checkbox.Position = UDim2.new(0, 5, 0.5, -5)

				ToggleTitle.Parent = ToggleButton
				ToggleTitle.BackgroundTransparency = 1
				ToggleTitle.Position = UDim2.new(0, 20, 0, 0)
				ToggleTitle.Size = UDim2.new(1, -25, 1, 0)
				ToggleTitle.Font = Enum.Font.GothamBold
				ToggleTitle.Text = data.Name
				ToggleTitle.TextColor3 = Color3.fromRGB(120, 120, 120)
				ToggleTitle.TextSize = 13
				ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

				local selectingKey = false
				local value = false

				local function toggle()
					value = not value
					toggleUtils.value = value
					if value then
						Checkbox.BackgroundColor3 = Color3.fromRGB(170, 100, 255)
						ToggleTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
					else
						Checkbox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
						ToggleTitle.TextColor3 = Color3.fromRGB(120, 120, 120)
					end
					pcall(data.Callback, value)
				end

				if data.Default then toggle() end

				function toggleUtils:Set(v)
					if v ~= value then toggle() end
				end

				if data.includeKeybind then
					AddStroke(KeybindButton, 1, nil, 0.9)
					KeybindButton.Parent = ToggleButton
					KeybindButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
					KeybindButton.BorderSizePixel = 0
					KeybindButton.Size = UDim2.new(0, 30, 0, 14)
					KeybindButton.Position = UDim2.new(1, -35, 0.5, -7)
					KeybindButton.Text = "key"
					KeybindButton.TextColor3 = Color3.fromRGB(180, 180, 180)
					KeybindButton.Font = Enum.Font.GothamBold
					KeybindButton.TextSize = 11

					KeybindButton.MouseButton1Click:Connect(function()
						selectingKey = true
						KeybindButton.Text = "..."
						local input = UserInputService.InputBegan:Wait()
						if input.KeyCode ~= Enum.KeyCode.Unknown then
							KeybindButton.Text = tostring(input.KeyCode):split(".")[3]
						else
							KeybindButton.Text = "key"
						end
						task.wait(0.1)
						selectingKey = false
					end)

					table.insert(DestroyWindowEvents, UserInputService.InputBegan:Connect(function(input, gpe)
						if not gpe and not selectingKey and KeybindButton.Text ~= "key" then
							if input.KeyCode == Enum.KeyCode[KeybindButton.Text] then
								toggle()
							end
						end
					end))
				else
					KeybindButton:Destroy()
				end

				ToggleButton.MouseButton1Click:Connect(toggle)
				List.Size = UDim2.new(1, 0, 0, List.Size.Y.Offset + 20)
				return toggleUtils
			end

			function ListUtility:AddSlider(sliderData)
				local callback = sliderData.Callback or function() end
				local default = sliderData.Default or sliderData.Minimum or 0
				local maxValue = sliderData.Maximum or 1
				local minValue = sliderData.Minimum or 0
				local sliderName = sliderData.Name or "Slider"

				local sliderHolder = Instance.new("Frame", List)
				local sliderButton = Instance.new("TextLabel", sliderHolder)
				local Frame = Instance.new("Frame", sliderHolder)
				local sliderTable = {value = default}

				sliderHolder.BackgroundTransparency = 1
				sliderHolder.Size = UDim2.new(1, 0, 0, 16)

				Frame.BackgroundColor3 = Color3.fromRGB(170, 100, 255)
				Frame.BorderSizePixel = 0
				Frame.Size = UDim2.new((default - minValue) / (maxValue - minValue), 0, 1, 0)

				sliderButton.Size = UDim2.new(1, 0, 1, 0)
				sliderButton.BackgroundTransparency = 1
				sliderButton.Text = string.format("%s: %.1f", sliderName, default)
				sliderButton.TextColor3 = Color3.fromRGB(200, 200, 200)
				sliderButton.Font = Enum.Font.GothamBold
				sliderButton.TextSize = 12
				sliderButton.ZIndex = 2

				local sliding = false
				local function update()
					local rel = math.clamp((Mouse.X - sliderHolder.AbsolutePosition.X) / sliderHolder.AbsoluteSize.X, 0, 1)
					local newVal = minValue + rel * (maxValue - minValue)
					Frame.Size = UDim2.new(rel, 0, 1, 0)
					sliderButton.Text = string.format("%s: %.1f", sliderName, newVal)
					sliderTable.value = newVal
					callback(newVal)
				end

				sliderHolder.InputBegan:Connect(function(ip)
					if ip.UserInputType == Enum.UserInputType.MouseButton1 then
						sliding = true
						update()
						while sliding do
							update()
							task.wait()
						end
					end
				end)

				sliderHolder.InputEnded:Connect(function(ip)
					if ip.UserInputType == Enum.UserInputType.MouseButton1 then
						sliding = false
					end
				end)

				List.Size = UDim2.new(1, 0, 0, List.Size.Y.Offset + 16)
				return sliderTable
			end

			function ListUtility:AddTextBox(data)
				local textBoxTable = {value = ""}
				local TextBox = Instance.new("TextBox", List)
				TextBox.Size = UDim2.new(1, 0, 0, 18)
				TextBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				TextBox.BorderSizePixel = 0
				TextBox.Text = data.Name
				TextBox.PlaceholderText = data.Name
				TextBox.TextColor3 = Color3.fromRGB(150, 150, 150)
				TextBox.Font = Enum.Font.GothamBold
				TextBox.TextSize = 12

				TextBox.FocusLost:Connect(function()
					textBoxTable.value = TextBox.Text
					if data.Callback then
						pcall(data.Callback, TextBox.Text)
					end
				end)

				List.Size = UDim2.new(1, 0, 0, List.Size.Y.Offset + 18)
				return textBoxTable
			end

			return ListUtility
		end

		function Utility:Open()
			for _, v in next, LeftItems:GetChildren() do
				v.Visible = (v:GetAttribute("Tab") == tabData.Name)
			end
			for _, v in next, RightItems:GetChildren() do
				v.Visible = (v:GetAttribute("Tab") == tabData.Name)
			end
		end

		function Utility:CreateSectionOnSide(name, side)
			return CreateList(name, side == "left" and LeftItems or RightItems, Utility.Name)
		end

		return Utility
	end

	return Utility
end


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Gui = UiLibrary:Create()
local Drawing = Drawing or {}

local CombatTab = Gui:AddTab({ Name = "Combat" })
local BlatantTab = Gui:AddTab({ Name = "Blatant" })
local RenderTab = Gui:AddTab({ Name = "Render" })

do
	local Section = CombatTab:CreateSectionOnSide("Camera Lock", "left")
	local Target
	local selectedPart = "HumanoidRootPart"
	local ShakeAmount = 0

	local FOVCircle = Drawing.new("Circle")
	FOVCircle.Thickness = 1
	FOVCircle.NumSides = 64
	FOVCircle.Radius = 60
	FOVCircle.Filled = false
	FOVCircle.Color = Color3.fromRGB(170, 100, 255)
	FOVCircle.Visible = false

	local function getClosest()
		local closest, dist = nil, math.huge
		for _, v in ipairs(Players:GetPlayers()) do
			if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
				local part = v.Character:FindFirstChild(selectedPart)
				if part then
					local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
					if onScreen then
						local d = (Vector2.new(pos.X, pos.Y) - UserInputService:GetMouseLocation()).Magnitude
						if d < dist then
							closest = v
							dist = d
						end
					end
				end
			end
		end
		return closest
	end

	local Toggle = Section:AddToggle({
		Name = "Toggle",
		Default = false,
		includeKeybind = true,
		Callback = function(v)
			Target = v and getClosest() or nil
		end
	})

	Section:AddToggle({
		Name = "FOV Circle",
		Default = false,
		Callback = function(v) FOVCircle.Visible = v end
	})

	Section:AddSlider({
		Name = "FOV Radius",
		Default = 60,
		Minimum = 10,
		Maximum = 400,
		Callback = function(v) FOVCircle.Radius = v end
	})

	local Streamable = Section:AddToggle({ Name = "Streamable", Default = false })
	local Sensitivity = Section:AddSlider({ Name = "Sensitivity", Default = 0.5, Minimum = 0.05, Maximum = 1 })
	local PredictToggle = Section:AddToggle({ Name = "Predict", Default = false })
	local KOCheck = Section:AddToggle({ Name = "K.O Check", Default = true })
	local GrabbedCheck = Section:AddToggle({ Name = "Grabbed Check", Default = true })
	Section:AddSlider({
		Name = "Shake",
		Default = 0,
		Minimum = 0,
		Maximum = 3,
		Callback = function(v) ShakeAmount = v end
	})

	Section:AddTextBox({
		Name = "Hit Part",
		Callback = function(v) selectedPart = v end
	})

	RunService.RenderStepped:Connect(function()
		local mousePos = UserInputService:GetMouseLocation()
		FOVCircle.Position = mousePos

		if Target and Target.Character then
			local part = Target.Character:FindFirstChild(selectedPart)
			if part then
				local BE = Target.Character:FindFirstChild("BodyEffects")
				if KOCheck.value and BE and BE:FindFirstChild("K.O") and BE["K.O"].Value then
					Toggle:Set(false)
					return
				end
				if GrabbedCheck.value and BE and BE:FindFirstChild("GRABBING_CONSTRAINT") then
					Toggle:Set(false)
					return
				end

				local pred = PredictToggle.value and part.Velocity * 0.142 or Vector3.zero
				local shake = Vector3.new(
					math.cos(tick() * 80) * ShakeAmount * 0.008,
					math.sin(tick() * 80) * ShakeAmount * 0.008,
					0
				)

				if Streamable.value then
					Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position + shake, part.Position + pred), Sensitivity.value)
				else
					Camera.CFrame = CFrame.new(Camera.CFrame.Position + shake, part.Position + pred)
				end
			end
		end
	end)
end

do
	local Section = BlatantTab:CreateSectionOnSide("Character", "left")
	local SpeedToggle = Section:AddToggle({ Name = "Speed", Default = false, includeKeybind = true })
	local FlightToggle = Section:AddToggle({ Name = "Flight", Default = false, includeKeybind = true })
	local SpeedSlider = Section:AddSlider({ Name = "Speed Value", Default = 50, Minimum = 1, Maximum = 300 })
	local VertSlider = Section:AddSlider({ Name = "Vertical Speed", Default = 50, Minimum = 1, Maximum = 300 })

	RunService.RenderStepped:Connect(function(dt)
		local char = LocalPlayer.Character
		if not char then return end
		local hum = char:FindFirstChildOfClass("Humanoid")
		local root = char:FindFirstChild("HumanoidRootPart")
		if not hum or not root then return end

		if SpeedToggle.value and not FlightToggle.value then
			char:PivotTo(char:GetPivot() + hum.MoveDirection * SpeedSlider.value * dt)
		elseif FlightToggle.value then
			if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
				root.CFrame = root.CFrame + Vector3.new(0, VertSlider.value * dt, 0)
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
				root.CFrame = root.CFrame - Vector3.new(0, VertSlider.value * dt, 0)
			end
			root.Velocity = Vector3.zero
			root.CFrame = root.CFrame + hum.MoveDirection * SpeedSlider.value * dt
		end
	end)
end

do
	local Section = RenderTab:CreateSectionOnSide("ESP", "left")
	local BoxesToggle = Section:AddToggle({ Name = "Boxes", Default = false })
	local NamesToggle = Section:AddToggle({ Name = "Names", Default = false })
	local TracersToggle = Section:AddToggle({ Name = "Tracers", Default = false })

	local boxes, names, tracers = {}, {}, {}

	RunService.RenderStepped:Connect(function()
		for _, plr in pairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				local root = plr.Character.HumanoidRootPart
				local pos, onScreen = Camera:WorldToViewportPoint(root.Position)

				if BoxesToggle.value then
					local box = boxes[plr] or Drawing.new("Square")
					box.Thickness = 1
					box.Color = Color3.fromRGB(170, 100, 255)
					box.Filled = false
					if onScreen then
						local s = 2000 / pos.Z
						box.Size = Vector2.new(s, s * 1.6)
						box.Position = Vector2.new(pos.X - s/2, pos.Y - s * 0.8)
						box.Visible = true
					else
						box.Visible = false
					end
					boxes[plr] = box
				elseif boxes[plr] then
					boxes[plr].Visible = false
				end

				if NamesToggle.value then
					local label = names[plr] or Drawing.new("Text")
					label.Text = plr.Name
					label.Size = 14
					label.Color = Color3.fromRGB(170, 100, 255)
					label.Center = true
					label.Outline = true
					if onScreen then
						label.Position = Vector2.new(pos.X, pos.Y - 45)
						label.Visible = true
					else
						label.Visible = false
					end
					names[plr] = label
				elseif names[plr] then
					names[plr].Visible = false
				end

				if TracersToggle.value then
					local line = tracers[plr] or Drawing.new("Line")
					line.Thickness = 1
					line.Color = Color3.fromRGB(170, 100, 255)
					if onScreen then
						line.From = UserInputService:GetMouseLocation()
						line.To = Vector2.new(pos.X, pos.Y)
						line.Visible = true
					else
						line.Visible = false
					end
					tracers[plr] = line
				elseif tracers[plr] then
					tracers[plr].Visible = false
				end
			end
		end
	end)
end

print("LurvekVIP loaded successfully")
