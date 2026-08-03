local a=Enum.KeyCode.T
local b=game:GetService("Players")
local c=game:GetService("RunService")
local d=game:GetService("UserInputService")
local e=game:GetService("Workspace")
local f=b.LocalPlayer
local g=f:GetMouse()
local h=e.CurrentCamera
local i=false
local j=false
local k={}
local function l(m)
return m.Parent==f.Backpack or(f.Character and m.Parent==f.Character)
end
local function n()
for o=#k,1,-1 do
if not k[o]or not l(k[o])then
table.remove(k,o)
end
end
if f.Backpack then
for _,p in ipairs(f.Backpack:GetChildren())do
if p:IsA("Tool")then
local q=false
for _,r in ipairs(k)do
if r==p then q=true break end
end
if not q then table.insert(k,p)end
end
end
end
if f.Character then
local s=f.Character:FindFirstChildOfClass("Tool")
if s then
local q=false
for _,r in ipairs(k)do
if r==s then q=true break end
end
if not q then table.insert(k,s)end
end
end
end
local function t()
n()
if f.Backpack then
f.Backpack.ChildAdded:Connect(function()task.defer(n)end)
f.Backpack.ChildRemoved:Connect(function()task.defer(n)end)
end
end
t()
f.CharacterAdded:Connect(function()
task.wait(0.15)
t()
end)
local function u()
local v=f.Character
if not v then return false end
local w=v:FindFirstChildOfClass("Tool")
if not w then return false end
for x,y in ipairs(k)do
if y==w then return x==2 end
end
return false
end
local function z()
local A=d:GetMouseLocation()
local B=h:ViewportPointToRay(A.X,A.Y)
local C=RaycastParams.new()
C.FilterType=Enum.RaycastFilterType.Exclude
C.FilterDescendantsInstances={f.Character}
C.IgnoreWater=true
local D=e:Raycast(B.Origin,B.Direction*1000,C)
if not D or not D.Instance then return nil end
local E=D.Instance
local F=E:FindFirstAncestorOfClass("Model")
if not F then return nil end
local G=F:FindFirstChildOfClass("Humanoid")
if not G or G.Health<=0 then return nil end
local H=b:GetPlayerFromCharacter(F)
if not H or H==f then return nil end
return F
end
d.InputBegan:Connect(function(I,J)
if J then return end
if I.KeyCode==a then
i=not i
if j and not i then
mouse1release()
j=false
end
end
end)
c.RenderStepped:Connect(function()
if not i or not u()then
if j then
j=false
mouse1release()
end
return
end
local K=z()
if K then
if not j then
j=true
mouse1press()
end
else
if j then
j=false
mouse1release()
end
end
end)
