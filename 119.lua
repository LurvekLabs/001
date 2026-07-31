local a={}local b=game:GetService("Players").LocalPlayer;local c=b:GetMouse()local d=game:GetService("RunService")local e=getgenv==nil and b:WaitForChild("PlayerGui")or game:GetService("CoreGui")local f=game:GetService("UserInputService")local g=workspace.CurrentCamera
function h(i,j,_,k)local l=Instance.new("UIStroke")l.Parent=i;l.Thickness=j;l.Color=Color3.fromRGB(40,40,40)l.Transparency=k;l.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;return l end
function a:Create()local m={}local n={}if e:FindFirstChild("LurvekVIP")then e.LurvekVIP:Destroy()end
local o=Instance.new("ScreenGui")local p=Instance.new("Frame")local q=Instance.new("UICorner")local r=Instance.new("TextLabel")local s=Instance.new("Frame")local t=Instance.new("UIListLayout")local u=Instance.new("ScrollingFrame")local v=Instance.new("Frame")local w=Instance.new("Frame")
o.Name="LurvekVIP"o.Parent=e;o.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
f.InputBegan:Connect(function(x)if x.KeyCode==Enum.KeyCode.RightShift or x.KeyCode==Enum.KeyCode.Insert then o.Enabled=not o.Enabled end end)
p.Name="Main"p.Parent=o;p.BackgroundColor3=Color3.new(0,0,0)p.BorderSizePixel=0;p.Position=UDim2.new(0,g.ViewportSize.X/2-195,0,g.ViewportSize.Y/2-195)p.Size=UDim2.new(0,390,0,390)p.ZIndex=10;q.Parent=p
local y=false;local z=Vector2.new(0,0)
r.Name="Title"r.Parent=p;r.AnchorPoint=Vector2.new(0.5,0)r.BackgroundTransparency=1;r.Position=UDim2.new(0.5,0,0,0)r.Size=UDim2.new(0.94,0,0,30)r.Font=Enum.Font.GothamBold
r.Text="<b>Lurvek.<font color=\"rgb(170, 100, 255)\">VIP</font></b>"r.TextColor3=Color3.new(1,1,1)r.TextSize=16;r.TextXAlignment=Enum.TextXAlignment.Left;r.RichText=true
r.InputBegan:Connect(function(x)if x.UserInputType==Enum.UserInputType.MouseButton1 then y=true;local A=f:GetMouseLocation()z=Vector2.new(A.X-p.AbsolutePosition.X,A.Y-p.AbsolutePosition.Y)end end)
r.InputEnded:Connect(function(x)if x.UserInputType==Enum.UserInputType.MouseButton1 then y=false end end)
f.InputChanged:Connect(function(x)if x.UserInputType==Enum.UserInputType.MouseMovement and y then local A=f:GetMouseLocation()p.Position=UDim2.new(0,A.X-z.X,0,A.Y-z.Y)end end)
s.Name="Tabs"s.Parent=r;s.BackgroundColor3=Color3.new(0,0,0)s.BorderSizePixel=0;s.Position=UDim2.new(0,0,1.1,0)s.Size=UDim2.new(1,0,1,0)
t.Parent=s;t.FillDirection=Enum.FillDirection.Horizontal;t.SortOrder=Enum.SortOrder.LayoutOrder;t.Padding=UDim.new(0,4)
u.Name="TabItems"u.Parent=p;u.Active=true;u.AnchorPoint=Vector2.new(0.5,0.5)u.BackgroundColor3=Color3.new(0,0,0)u.BorderSizePixel=0;u.Position=UDim2.new(0.5,0,0.56,0)u.Size=UDim2.new(0.94,0,0.8,0)
v.Name="LeftItems"v.Parent=u;v.BackgroundColor3=Color3.fromRGB(8,8,8)v.BorderSizePixel=0;v.Size=UDim2.new(0.5,0,1000,0)v.ZIndex=2
w.Name="RightItems"w.Parent=u;w.AnchorPoint=Vector2.new(1,0)w.BackgroundColor3=Color3.fromRGB(8,8,8)w.BorderSizePixel=0;w.Position=UDim2.new(1,0,0,0)w.Size=UDim2.new(0.5,0,1000,0)w.ZIndex=2
function n:AddTab(B)local C={}C.Name=B.Name
local D=Instance.new("TextButton")h(D,1,nil,0.9)D.Parent=s;D.BackgroundColor3=Color3.fromRGB(12,12,12)D.BorderSizePixel=0;D.Font=Enum.Font.GothamBold;D.Text=B.Name;D.TextColor3=Color3.new(1,1,1)D.TextSize=14
D.MouseButton1Click:Connect(function()C:Open()end)
task.spawn(function()task.wait(0.1)D.Size=UDim2.new(0,D.TextBounds.X+14,1,0)end)
local function E(F,G,H)local I={}local J=Instance.new("Frame")local K=Instance.new("UIListLayout")local L=Instance.new("TextLabel")h(J,1,nil,0.98)
J.Parent=G;J.BackgroundColor3=Color3.fromRGB(12,12,12)J.BackgroundTransparency=0.3;J.Size=UDim2.new(1,0,0,15)J.Visible=false;J:SetAttribute("Tab",H)
K.Parent=J;K.FillDirection=Enum.FillDirection.Vertical;K.Padding=UDim.new(0,1)
L.Parent=J;L.BackgroundTransparency=1;L.Size=UDim2.new(1,0,0,10)L.Font=Enum.Font.GothamBold;L.Text=F;L.TextColor3=Color3.fromRGB(180,180,180)L.TextScaled=true;L.TextXAlignment=Enum.TextXAlignment.Center
function I:AddToggle(M)local N={}M.Callback=M.Callback or function()end;N.value=M.Default or false
local O=Instance.new("TextButton")local P=Instance.new("Frame")local Q=Instance.new("TextLabel")local R=Instance.new("TextButton")
O.Parent=J;O.BackgroundColor3=Color3.fromRGB(15,15,15)O.BorderSizePixel=0;O.Size=UDim2.new(0.96,0,0,20)O.Text=""
h(P,1,nil,0.9)P.Parent=O;P.BackgroundColor3=Color3.fromRGB(15,15,15)P.BorderSizePixel=0;P.Size=UDim2.new(0,10,0,10)P.Position=UDim2.new(0,5,0.5,-5)
Q.Parent=O;Q.BackgroundTransparency=1;Q.Position=UDim2.new(0,20,0,0)Q.Size=UDim2.new(1,-25,1,0)Q.Font=Enum.Font.GothamBold;Q.Text=M.Name;Q.TextColor3=Color3.fromRGB(120,120,120)Q.TextSize=13;Q.TextXAlignment=Enum.TextXAlignment.Left
local S=false;local T=false
local function U()T=not T;N.value=T;if T then P.BackgroundColor3=Color3.fromRGB(170,100,255)Q.TextColor3=Color3.fromRGB(200,200,200)else P.BackgroundColor3=Color3.fromRGB(15,15,15)Q.TextColor3=Color3.fromRGB(120,120,120)end;pcall(M.Callback,T)end
if M.Default then U()end
function N:Set(V)if V~=T then U()end end
if M.includeKeybind then
h(R,1,nil,0.9)R.Parent=O;R.BackgroundColor3=Color3.fromRGB(15,15,15)R.BorderSizePixel=0;R.Size=UDim2.new(0,30,0,14)R.Position=UDim2.new(1,-35,0.5,-7)R.Text="key"R.TextColor3=Color3.fromRGB(180,180,180)R.Font=Enum.Font.GothamBold;R.TextSize=11
R.MouseButton1Click:Connect(function()S=true;R.Text="..."local W=f.InputBegan:Wait()if W.KeyCode~=Enum.KeyCode.Unknown then R.Text=tostring(W.KeyCode):split(".")[3]else R.Text="key"end;task.wait(0.1)S=false end)
table.insert(m,f.InputBegan:Connect(function(W,X)if not X and not S and R.Text~="key"then if W.KeyCode==Enum.KeyCode[R.Text]then U()end end end))
else R:Destroy()end
O.MouseButton1Click:Connect(U)J.Size=UDim2.new(1,0,0,J.Size.Y.Offset+20)return N end
function I:AddSlider(Y)local Z=Y.Callback or function()end;local _=Y.Default or Y.Minimum or 0;local aa=Y.Maximum or 1;local ab=Y.Minimum or 0;local ac=Y.Name or "Slider"
local ad=Instance.new("Frame",J)local ae=Instance.new("TextLabel",ad)local af=Instance.new("Frame",ad)local ag={value=_}
ad.BackgroundTransparency=1;ad.Size=UDim2.new(1,0,0,16)
af.BackgroundColor3=Color3.fromRGB(170,100,255)af.BorderSizePixel=0;af.Size=UDim2.new((_ -ab)/(aa-ab),0,1,0)
ae.Size=UDim2.new(1,0,1,0)ae.BackgroundTransparency=1;ae.Text=string.format("%s: %.1f",ac,_)ae.TextColor3=Color3.fromRGB(200,200,200)ae.Font=Enum.Font.GothamBold;ae.TextSize=12;ae.ZIndex=2
local ah=false
local function ai()local aj=math.clamp((c.X-ad.AbsolutePosition.X)/ad.AbsoluteSize.X,0,1)local ak=ab+aj*(aa-ab)af.Size=UDim2.new(aj,0,1,0)ae.Text=string.format("%s: %.1f",ac,ak)ag.value=ak;Z(ak)end
ad.InputBegan:Connect(function(al)if al.UserInputType==Enum.UserInputType.MouseButton1 then ah=true;ai()while ah do ai()task.wait()end end end)
ad.InputEnded:Connect(function(al)if al.UserInputType==Enum.UserInputType.MouseButton1 then ah=false end end)
J.Size=UDim2.new(1,0,0,J.Size.Y.Offset+16)return ag end
function I:AddTextBox(am)local an={value=""}local ao=Instance.new("TextBox",J)ao.Size=UDim2.new(1,0,0,18)ao.BackgroundColor3=Color3.fromRGB(15,15,15)ao.BorderSizePixel=0;ao.Text=am.Name;ao.PlaceholderText=am.Name;ao.TextColor3=Color3.fromRGB(150,150,150)ao.Font=Enum.Font.GothamBold;ao.TextSize=12
ao.FocusLost:Connect(function()an.value=ao.Text;if am.Callback then pcall(am.Callback,ao.Text)end end)
J.Size=UDim2.new(1,0,0,J.Size.Y.Offset+18)return an end
return I end
function C:Open()for _,ap in next,v:GetChildren()do ap.Visible=(ap:GetAttribute("Tab")==B.Name)end;for _,ap in next,w:GetChildren()do ap.Visible=(ap:GetAttribute("Tab")==B.Name)end end
function C:CreateSectionOnSide(aq,ar)return E(aq,ar=="left"and v or w,C.Name)end
return C end
return n end

local as=game:GetService("Players")local at=as.LocalPlayer;local au=workspace.CurrentCamera;local av=at:GetMouse()local aw=game:GetService("RunService")local ax=game:GetService("UserInputService")
local ay=a:Create()local az=Drawing or {}
local aA=ay:AddTab({Name="Combat"})local aB=ay:AddTab({Name="Blatant"})local aC=ay:AddTab({Name="Render"})

do local aD=aA:CreateSectionOnSide("Camera Lock","left")local aE;local aF="HumanoidRootPart";local aG=0
local aH=az.new("Circle")aH.Thickness=1;aH.NumSides=64;aH.Radius=60;aH.Filled=false;aH.Color=Color3.fromRGB(170,100,255)aH.Visible=false
local function aI()local aJ,aK=nil,math.huge;for _,aL in ipairs(as:GetPlayers())do if aL~=at and aL.Character and aL.Character:FindFirstChild("Humanoid")and aL.Character.Humanoid.Health>0 then local aM=aL.Character:FindFirstChild(aF)if aM then local aN,aO=au:WorldToViewportPoint(aM.Position)if aO then local aP=(Vector2.new(aN.X,aN.Y)-ax:GetMouseLocation()).Magnitude;if aP<aK then aJ=aL;aK=aP end end end end end;return aJ end
local aQ=aD:AddToggle({Name="Toggle",Default=false,includeKeybind=true,Callback=function(aR)aE=aR and aI()or nil end})
aD:AddToggle({Name="FOV Circle",Default=false,Callback=function(aR)aH.Visible=aR end})
aD:AddSlider({Name="FOV Radius",Default=60,Minimum=10,Maximum=400,Callback=function(aR)aH.Radius=aR end})
local aS=aD:AddToggle({Name="Streamable",Default=false})local aT=aD:AddSlider({Name="Sensitivity",Default=0.5,Minimum=0.05,Maximum=1})
local aU=aD:AddToggle({Name="Predict",Default=false})local aV=aD:AddToggle({Name="K.O Check",Default=true})local aW=aD:AddToggle({Name="Grabbed Check",Default=true})
aD:AddSlider({Name="Shake",Default=0,Minimum=0,Maximum=3,Callback=function(aR)aG=aR end})
aD:AddTextBox({Name="Hit Part",Callback=function(aR)aF=aR end})
aw.RenderStepped:Connect(function()local aX=ax:GetMouseLocation()aH.Position=aX
if aE and aE.Character then local aY=aE.Character:FindFirstChild(aF)if aY then local aZ=aE.Character:FindFirstChild("BodyEffects")
if aV.value and aZ and aZ:FindFirstChild("K.O")and aZ["K.O"].Value then aQ:Set(false)return end
if aW.value and aZ and aZ:FindFirstChild("GRABBING_CONSTRAINT")then aQ:Set(false)return end
local a_=aU.value and aY.Velocity*0.142 or Vector3.zero
local b0=Vector3.new(math.cos(tick()*80)*aG*0.008,math.sin(tick()*80)*aG*0.008,0)
if aS.value then au.CFrame=au.CFrame:Lerp(CFrame.new(au.CFrame.Position+b0,aY.Position+a_),aT.value)else au.CFrame=CFrame.new(au.CFrame.Position+b0,aY.Position+a_)end end end end)end

do local b1=aB:CreateSectionOnSide("Character","left")local b2=b1:AddToggle({Name="Speed",Default=false,includeKeybind=true})local b3=b1:AddToggle({Name="Flight",Default=false,includeKeybind=true})
local b4=b1:AddSlider({Name="Speed Value",Default=50,Minimum=1,Maximum=300})local b5=b1:AddSlider({Name="Vertical Speed",Default=50,Minimum=1,Maximum=300})
aw.RenderStepped:Connect(function(b6)local b7=at.Character;if not b7 then return end;local b8=b7:FindFirstChildOfClass("Humanoid")local b9=b7:FindFirstChild("HumanoidRootPart")if not b8 or not b9 then return end
if b2.value and not b3.value then b7:PivotTo(b7:GetPivot()+b8.MoveDirection*b4.value*b6)
elseif b3.value then if ax:IsKeyDown(Enum.KeyCode.Space)then b9.CFrame=b9.CFrame+Vector3.new(0,b5.value*b6,0)end
if ax:IsKeyDown(Enum.KeyCode.LeftShift)then b9.CFrame=b9.CFrame-Vector3.new(0,b5.value*b6,0)end
b9.Velocity=Vector3.zero;b9.CFrame=b9.CFrame+b8.MoveDirection*b4.value*b6 end end)end

do local ba=aC:CreateSectionOnSide("ESP","left")local bb=ba:AddToggle({Name="Boxes",Default=false})local bc=ba:AddToggle({Name="Names",Default=false})local bd=ba:AddToggle({Name="Tracers",Default=false})
local be,bf,bg={},{},{}
aw.RenderStepped:Connect(function()for _,bh in pairs(as:GetPlayers())do if bh~=at and bh.Character and bh.Character:FindFirstChild("HumanoidRootPart")then
local bi=bh.Character.HumanoidRootPart;local bj,bk=au:WorldToViewportPoint(bi.Position)
if bb.value then local bl=be[bh]or az.new("Square")bl.Thickness=1;bl.Color=Color3.fromRGB(170,100,255)bl.Filled=false
if bk then local bm=2000/bj.Z;bl.Size=Vector2.new(bm,bm*1.6)bl.Position=Vector2.new(bj.X-bm/2,bj.Y-bm*0.8)bl.Visible=true else bl.Visible=false end;be[bh]=bl elseif be[bh]then be[bh].Visible=false end
if bc.value then local bn=bf[bh]or az.new("Text")bn.Text=bh.Name;bn.Size=14;bn.Color=Color3.fromRGB(170,100,255)bn.Center=true;bn.Outline=true
if bk then bn.Position=Vector2.new(bj.X,bj.Y-45)bn.Visible=true else bn.Visible=false end;bf[bh]=bn elseif bf[bh]then bf[bh].Visible=false end
if bd.value then local bo=bg[bh]or az.new("Line")bo.Thickness=1;bo.Color=Color3.fromRGB(170,100,255)
if bk then bo.From=ax:GetMouseLocation()bo.To=Vector2.new(bj.X,bj.Y)bo.Visible=true else bo.Visible=false end;bg[bh]=bo elseif bg[bh]then bg[bh].Visible=false end
end end end)end
