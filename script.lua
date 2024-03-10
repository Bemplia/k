local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua", true))()

local Window = Library.CreateLib("Rakoof kill test V1", "Serpent")

local Main = Window:NewTab("Main")
local Movement = Window:NewTab("Movement")
local Combat = Window:NewTab("Combat")
local Esp = Window:NewTab("Esp")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local MovementSection = Movement:NewSection("Movement")
local CombatSection = Combat:NewSection("Movement")
local EspSection = Esp:NewSection("Esp")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Creator: Bemplia/alekseY312/arbuzik.new")

MainSection:NewButton("Rejoin", "Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MainSection:NewToggle("Open shop", "", function(open)
if open then
workspace.Shop.ShopPart.Size = Vector3.new(2048, 2048, 2048)
workspace.Shop.ShopPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
else
workspace.Shop.ShopPart.CFrame = CFrame.new(89.9738007, 5.53352118, 167.267502, 1, 0, 0, 0, 1)
workspace.Shop.ShopPart.Size = Vector3.new(4.02899, 853438, 9.76478)
end
end)

MainSection:NewToggle("Collect all scraps", "", function(go)
while go do

workspace["Scraps in map"].ScrapMetal.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

pcall (function()
workspace["Scraps in map"].ScrapMetal2.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal3.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal4.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal5.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal6.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal7.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal8.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal9.Name = 'ScrapMetal'
end)

pcall (function()
workspace["Scraps in map"].ScrapMetal10.Name = 'ScrapMetal'
end)

if go == false then
break
end
wait()
end
end)

MovementSection:NewButton("Inf Stamina", "U can run forever", function()
while game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.StaminaValue.Value = 100
end
end)

MovementSection:NewSlider("WalkSpeed", "", 300, 13, function(walkspeed)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
end)

MovementSection:NewSlider("JumpPower", "", 500, 50, function(jumppower)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppower
end)

MovementSection:NewToggle("Noclip", "", function(noclip)
while noclip do
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
if noclip == false then
game.Players.LocalPlayer.Character.Head.CanCollide = true
game.Players.LocalPlayer.Character.Torso.CanCollide = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
break
end
wait()
end
end)

MovementSection:NewButton("Tp to the rake", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").The_Rake.HumanoidRootPart.CFrame
end)

CombatSection:NewToggle("Freeze The rake", "haha", function(state)
if state then
game:GetService("Workspace").The_Rake.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").The_Rake.Head.Anchored = true
game:GetService("Workspace").The_Rake.HumanoidRootPart.Anchored = true
game:GetService("Workspace").The_Rake.Torso.Anchored = true
game:GetService("Workspace").The_Rake["Left Arm"].Anchored = true
game:GetService("Workspace").The_Rake["Right Arm"].Anchored = true
game:GetService("Workspace").The_Rake["Left Leg"].Anchored = true
game:GetService("Workspace").The_Rake["Right Leg"].Anchored = true
else
game:GetService("Workspace").The_Rake.Head.Anchored = false
game:GetService("Workspace").The_Rake.HumanoidRootPart.Anchored = false
game:GetService("Workspace").The_Rake.Torso.Anchored = false
game:GetService("Workspace").The_Rake["Left Arm"].Anchored = false
game:GetService("Workspace").The_Rake["Right Arm"].Anchored = false
game:GetService("Workspace").The_Rake["Left Leg"].Anchored = false
game:GetService("Workspace").The_Rake["Right Leg"].Anchored = false
end
end)

EspSection:NewButton("The rake", "The rake esp", function()
text = "The Rake"
item = game:GetService("Workspace").The_Rake
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local rake = game:GetService("Workspace").The_Rake
local esp = Instance.new("BoxHandleAdornment",rake)  
BillboardGui.Parent = item
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = text
TextLabel.Font = "Legacy"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = false
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 8
TextLabel.TextWrapped = true
TextLabel1.Parent = BillboardGui
TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Size = UDim2.new(0, 200, 0, 50)
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.Font = "Legacy"
TextLabel1.TextScaled = false
TextLabel1.TextStrokeTransparency = 0
TextLabel1.TextSize = 8
TextLabel1.TextColor3 = Color3.fromRGB(225, 0, 0)
TextLabel1.Position = UDim2.new(0, 0, -0.3, 0)

TextLabel2.Parent = BillboardGui
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Size = UDim2.new(0, 200, 0, 50)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Font = "Legacy"
TextLabel2.TextScaled = false
TextLabel2.TextStrokeTransparency = 0
TextLabel2.TextSize = 8
TextLabel2.TextColor3 = Color3.fromRGB(211, 252, 3)
TextLabel2.Position = UDim2.new(0, 0, 0.3, 0)
esp.Adornee = rake
esp.ZIndex = 0
esp.AlwaysOnTop = true
esp.Color3 = Color3.fromRGB(252, 3, 3)
esp.Transparency = 0.5
esp.Size = Vector3.new(5,6,1,5)
while wait() do
    TextLabel1.Text = "Health: ".. workspace.The_Rake.NPC.Health
    TextLabel2.Text = "Game Timer: ".. workspace.TimerGamemode.Value
end
end)

GuiSection:NewKeybind("Toggle GUI", "", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)


MovementSection:NewColorPicker("Plate Color", "Change plate color", Color3.fromRGB(225,225,225), function(s)
    game.Workspace.EXPLOITPART.Color = s
end)

MovementSection:NewDropdown("Plate Material", "Change plate material", {"Plastic", "Wood", "Slate", "Concrete", "CorrodedMetal","DiamondPlate","Foil","Grass","Ice","Marble","Granite","Brick","Pebble","Sand","Fabric","SmoothPlastic","Metal","WoodPlanks","Cobblestone","Rock","Glacier","Snow","Sandstone","Mud","Basalt","Ground","CrackedLava","Neon","Glass","Asphalt","LeafyGrass","Salt","Limestone","Pavement","ForceField"}, function(s)
    game.Workspace.EXPLOITPART.Material = s
end)

MovementSection:NewKeybind("Go to SafeZone", "You teleport far to the object", Enum.KeyCode.F, function()


local Float = Instance.new("Part",workspace);
Float.Size = Vector3.new(100,1,100);
Float.Position = Vector3.new(10000,10000,10000);
Float.Name = "EXPLOITPART"
Float.Material = "Neon"
Float.Anchored = true;
Float.CanCollide = true;
Float.Transparency = 0;

local detected = 0
wait()
for n, obj in pairs(game.Workspace:GetChildren()) do
	if obj.Name == 'EXPLOITPART' then
		detected = detected + 1
	end
	if detected >= 2 then
		obj:Destroy()
		detected = detected - 1
	end
end

function exppart(part)
	wait()
	part:Destroy()
end

game.Workspace.ChildAdded:Connect(function(part)
	if part.Name == 'EXPLOITPART' then
		detected = detected + 1
	end
	if detected >= 2 then
		detected = detected - 1
		exppart(part)
	end
end)

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(9996.72949, 10003.4971, 9986.34082, -0.155898228, -6.66379236e-08, 0.98777312, 5.69063801e-08, 1, 7.64442021e-08, -0.98777312, 6.81281094e-08, -0.155898228)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
pl.CFrame = location
end)
