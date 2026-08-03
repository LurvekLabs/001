local a={}local b=game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer;local c=b:GetMouse()local d=game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))local e=getgenv==nil and b:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))or game:GetService(string.char(67,111,114,101,71,117,105))local f=game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))local g=workspace.CurrentCamera
local function h(i,j,k,l)local m=Instance.new("UIStroke")m.Parent=i;m.Thickness=j or 1;m.Color=k or Color3.fromRGB(55,55,65)m.Transparency=l or 0.55;m.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;return m end
function a:Create()local n={}local o={}if e:FindFirstChild(string.char(76,117,114,118,101,107,86,73,80))then e[string.char(76,117,114,118,101,107,86,73,80)]:Destroy()end
local p=Instance.new("ScreenGui")p.Name=string.char(76,117,114,118,101,107,86,73,80)p.Parent=e;p.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;p.ResetOnSpawn=false
f.InputBegan:Connect(function(q)if q.KeyCode==Enum.KeyCode.RightShift or q.KeyCode==Enum.KeyCode.Insert then p.Enabled=not p.Enabled end end)
local r=Instance.new("Frame")r.Name="Main"r.Parent=p;r.BackgroundColor3=Color3.fromRGB(10,10,12)r.BorderSizePixel=0
r.Position=UDim2.new(0,g.ViewportSize.X/2-215,0,g.ViewportSize.Y/2-220)r.Size=UDim2.new(0,430,0,440)r.ZIndex=10
local s=Instance.new("UICorner",r)s.CornerRadius=UDim.new(0,14)h(r,1.5,Color3.fromRGB(50,50,60),0.25)
local t=Instance.new("Frame")t.Parent=r;t.BackgroundColor3=Color3.fromRGB(170,100,255)t.BorderSizePixel=0;t.Size=UDim2.new(1,0,0,3)t.ZIndex=11
local u=Instance.new("UICorner",t)u.CornerRadius=UDim.new(0,14)
local v=Instance.new("TextLabel")v.Name="Title"v.Parent=r;v.BackgroundTransparency=1;v.Position=UDim2.new(0,18,0,14)v.Size=UDim2.new(0.65,0,0,26)
v.Font=Enum.Font.GothamBold;v.Text="Lurvek.<font color=\"rgb(170,100,255)\">VIP</font>"v.TextColor3=Color3.fromRGB(245,245,250)v.TextSize=18;v.TextXAlignment=Enum.TextXAlignment.Left;v.RichText=true;v.ZIndex=12
local w=Instance.new("TextLabel")w.Parent=r;w.BackgroundTransparency=1;w.Position=UDim2.new(1,-72,0,16)w.Size=UDim2.new(0,55,0,20)
w.Font=Enum.Font.Gotham;w.Text="v1.0"w.TextColor3=Color3.fromRGB(110,110,125)w.TextSize=12;w.TextXAlignment=Enum.TextXAlignment.Right;w.ZIndex=12
local x=false;local y=Vector2.new(0,0)
v.InputBegan:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseButton1 then x=true;local z=f:GetMouseLocation()y=Vector2.new(z.X-r.AbsolutePosition.X,z.Y-r.AbsolutePosition.Y)end end)
v.InputEnded:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseButton1 then x=false end end)
f.InputChanged:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseMovement and x then local z=f:GetMouseLocation()r.Position=UDim2.new(0,z.X-y.X,0,z.Y-y.Y)end end)
local A=Instance.new("TextButton")A.Parent=r;A.BackgroundColor3=Color3.fromRGB(170,100,255)A.BackgroundTransparency=0.3;A.BorderSizePixel=0
A.Size=UDim2.new(0,16,0,16)A.Position=UDim2.new(1,-18,1,-18)A.Text=""A.ZIndex=20;A.AutoButtonColor=false
local B=Instance.new("UICorner",A)B.CornerRadius=UDim.new(0,4)
local C=false;local D=Vector2.new(0,0)local E=Vector2.new(0,0)
A.InputBegan:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseButton1 then C=true;D=f:GetMouseLocation()E=Vector2.new(r.AbsoluteSize.X,r.AbsoluteSize.Y)end end)
A.InputEnded:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseButton1 then C=false end end)
f.InputChanged:Connect(function(q)if q.UserInputType==Enum.UserInputType.MouseMovement and C then local z=f:GetMouseLocation()local F=z-D
local G=math.clamp(E.X+F.X,340,700)local H=math.clamp(E.Y+F.Y,320,650)r.Size=UDim2.new(0,G,0,H)end end)
local I=Instance.new("Frame")I.Name="Tabs"I.Parent=r;I.BackgroundColor3=Color3.fromRGB(16,16,20)I.BorderSizePixel=0
I.Position=UDim2.new(0,14,0,48)I.Size=UDim2.new(1,-28,0,34)I.ZIndex=11
local J=Instance.new("UICorner",I)J.CornerRadius=UDim.new(0,9)
local K=Instance.new("UIListLayout")K.Parent=I;K.FillDirection=Enum.FillDirection.Horizontal;K.SortOrder=Enum.SortOrder.LayoutOrder;K.Padding=UDim.new(0,6)K.VerticalAlignment=Enum.VerticalAlignment.Center
local L=Instance.new("UIPadding",I)L.PaddingLeft=UDim.new(0,7)
local M=Instance.new("ScrollingFrame")M.Name="TabItems"M.Parent=r;M.BackgroundColor3=Color3.fromRGB(14,14,17)M.BorderSizePixel=0
M.Position=UDim2.new(0,14,0,92)M.Size=UDim2.new(1,-28,1,-110)M.ScrollBarThickness=3;M.ScrollBarImageColor3=Color3.fromRGB(170,100,255)
M.AutomaticCanvasSize=Enum.AutomaticSize.Y;M.CanvasSize=UDim2.new(0,0,0,0)M.ZIndex=11
local N=Instance.new("UICorner",M)N.CornerRadius=UDim.new(0,9)
local O=Instance.new("Frame")O.Name="LeftItems"O.Parent=M;O.BackgroundTransparency=1;O.Size=UDim2.new(0.5,-10,1,0)O.Position=UDim2.new(0,10,0,10)
local P=Instance.new("UIListLayout",O)P.SortOrder=Enum.SortOrder.LayoutOrder;P.Padding=UDim.new(0,10)
local Q=Instance.new("Frame")Q.Name="RightItems"Q.Parent=M;Q.BackgroundTransparency=1;Q.Size=UDim2.new(0.5,-10,1,0)Q.Position=UDim2.new(0.5,0,0,10)
local R=Instance.new("UIListLayout",Q)R.SortOrder=Enum.SortOrder.LayoutOrder;R.Padding=UDim.new(0,10)
function o:AddTab(S)local T={}T.Name=S.Name
local U=Instance.new("TextButton")U.Parent=I;U.BackgroundColor3=Color3.fromRGB(26,26,32)U.BorderSizePixel=0;U.Font=Enum.Font.GothamBold
U.Text="  "..S.Name.."  "U.TextColor3=Color3.fromRGB(165,165,175)U.TextSize=12;U.AutomaticSize=Enum.AutomaticSize.X;U.Size=UDim2.new(0,0,0,24)U.ZIndex=12
local V=Instance.new("UICorner",U)V.CornerRadius=UDim.new(0,6)
U.MouseButton1Click:Connect(function()T:Open()for _,W in pairs(I:GetChildren())do if W:IsA("TextButton")then W.BackgroundColor3=Color3.fromRGB(26,26,32)W.TextColor3=Color3.fromRGB(165,165,175)end end
U.BackgroundColor3=Color3.fromRGB(170,100,255)U.TextColor3=Color3.fromRGB(255,255,255)end)
local function X(Y,Z,_)local aa={}local ab=Instance.new("Frame")local ac=Instance.new("UIListLayout")local ad=Instance.new("TextLabel")
ab.Parent=Z;ab.BackgroundColor3=Color3.fromRGB(20,20,24)ab.BorderSizePixel=0;ab.Size=UDim2.new(1,0,0,22)ab.Visible=false;ab:SetAttribute("Tab",_)ab.ZIndex=12
local ae=Instance.new("UICorner",ab)ae.CornerRadius=UDim.new(0,8)h(ab,1,Color3.fromRGB(48,48,58),0.45)
ac.Parent=ab;ac.SortOrder=Enum.SortOrder.LayoutOrder;ac.Padding=UDim.new(0,5)ac.HorizontalAlignment=Enum.HorizontalAlignment.Center
local af=Instance.new("UIPadding",ab)af.PaddingTop=UDim.new(0,7)af.PaddingBottom=UDim.new(0,7)
ad.Parent=ab;ad.BackgroundTransparency=1;ad.Size=UDim2.new(1,-14,0,17)ad.Font=Enum.Font.GothamBold;ad.Text=Y
ad.TextColor3=Color3.fromRGB(170,100,255)ad.TextSize=13;ad.TextXAlignment=Enum.TextXAlignment.Left;ad.ZIndex=13
local ag=Instance.new("UIPadding",ad)ag.PaddingLeft=UDim.new(0,10)
function aa:AddToggle(ah)local ai={}ah.Callback=ah.Callback or function()end;ai.value=ah.Default or false
local aj=Instance.new("TextButton")local ak=Instance.new("Frame")local al=Instance.new("TextLabel")local am=Instance.new("TextButton")
aj.Parent=ab;aj.BackgroundColor3=Color3.fromRGB(26,26,32)aj.BorderSizePixel=0;aj.Size=UDim2.new(1,-14,0,27)aj.Text=""aj.ZIndex=13
local an=Instance.new("UICorner",aj)an.CornerRadius=UDim.new(0,6)
ak.Parent=aj;ak.BackgroundColor3=Color3.fromRGB(42,42,50)ak.BorderSizePixel=0;ak.Size=UDim2.new(0,14,0,14)ak.Position=UDim2.new(0,8,0.5,-7)ak.ZIndex=14
local ao=Instance.new("UICorner",ak)ao.CornerRadius=UDim.new(0,4)
al.Parent=aj;al.BackgroundTransparency=1;al.Position=UDim2.new(0,30,0,0)al.Size=UDim2.new(1,-70,1,0)
al.Font=Enum.Font.GothamMedium;al.Text=ah.Name;al.TextColor3=Color3.fromRGB(160,160,170)al.TextSize=13;al.TextXAlignment=Enum.TextXAlignment.Left;al.ZIndex=14
local ap=false;local aq=false
local function ar()aq=not aq;ai.value=aq;if aq then ak.BackgroundColor3=Color3.fromRGB(170,100,255)al.TextColor3=Color3.fromRGB(240,240,245)else ak.BackgroundColor3=Color3.fromRGB(42,42,50)al.TextColor3=Color3.fromRGB(160,160,170)end;pcall(ah.Callback,aq)end
if ah.Default then ar()end;function ai:Set(as)if as~=aq then ar()end end
if ah.includeKeybind then
am.Parent=aj;am.BackgroundColor3=Color3.fromRGB(38,38,46)am.BorderSizePixel=0;am.Size=UDim2.new(0,34,0,18)am.Position=UDim2.new(1,-42,0.5,-9)
am.Text="key"am.TextColor3=Color3.fromRGB(180,180,190)am.Font=Enum.Font.GothamBold;am.TextSize=10;am.ZIndex=14
local at=Instance.new("UICorner",am)at.CornerRadius=UDim.new(0,4)
am.MouseButton1Click:Connect(function()ap=true;am.Text="..."local au=f.InputBegan:Wait()if au.KeyCode~=Enum.KeyCode.Unknown then am.Text=tostring(au.KeyCode):split(".")[3]else am.Text="key"end;task.wait(0.1)ap=false end)
table.insert(n,f.InputBegan:Connect(function(au,av)if not av and not ap and am.Text~="key"then if au.KeyCode==Enum.KeyCode[am.Text]then ar()end end end))
else am:Destroy()end
aj.MouseButton1Click:Connect(ar)ab.Size=UDim2.new(1,0,0,ab.Size.Y.Offset+32)return ai end
function aa:AddSlider(aw)local ax=aw.Callback or function()end;local ay=aw.Default or aw.Minimum or 0;local az=aw.Maximum or 1;local aA=aw.Minimum or 0;local aB=aw.Name or "Slider"
local aC=Instance.new("Frame",ab)aC.BackgroundColor3=Color3.fromRGB(26,26,32)aC.BorderSizePixel=0;aC.Size=UDim2.new(1,-14,0,28)aC.ZIndex=13
local aD=Instance.new("UICorner",aC)aD.CornerRadius=UDim.new(0,6)
local aE=Instance.new("Frame",aC)aE.BackgroundColor3=Color3.fromRGB(40,40,48)aE.BorderSizePixel=0;aE.Size=UDim2.new(1,-16,0,4)aE.Position=UDim2.new(0,8,1,-9)aE.ZIndex=14
local aF=Instance.new("UICorner",aE)aF.CornerRadius=UDim.new(1,0)
local aG=Instance.new("Frame",aE)aG.BackgroundColor3=Color3.fromRGB(170,100,255)aG.BorderSizePixel=0;aG.Size=UDim2.new((ay-aA)/(az-aA),0,1,0)aG.ZIndex=15
local aH=Instance.new("UICorner",aG)aH.CornerRadius=UDim.new(1,0)
local aI=Instance.new("TextLabel",aC)aI.BackgroundTransparency=1;aI.Size=UDim2.new(1,-12,0,16)aI.Position=UDim2.new(0,8,0,3)
aI.Font=Enum.Font.GothamMedium;aI.Text=string.format("%s: %.1f",aB,ay)aI.TextColor3=Color3.fromRGB(210,210,220)aI.TextSize=12;aI.TextXAlignment=Enum.TextXAlignment.Left;aI.ZIndex=14
local aJ={value=ay}local aK=false
local function aL()local aM=math.clamp((c.X-aC.AbsolutePosition.X)/aC.AbsoluteSize.X,0,1)local aN=aA+aM*(az-aA)aG.Size=UDim2.new(aM,0,1,0)aI.Text=string.format("%s: %.1f",aB,aN)aJ.value=aN;ax(aN)end
aC.InputBegan:Connect(function(aO)if aO.UserInputType==Enum.UserInputType.MouseButton1 then aK=true;aL()while aK do aL()task.wait()end end end)
aC.InputEnded:Connect(function(aO)if aO.UserInputType==Enum.UserInputType.MouseButton1 then aK=false end end)
ab.Size=UDim2.new(1,0,0,ab.Size.Y.Offset+33)return aJ end
function aa:AddTextBox(aP)local aQ={value=""}local aR=Instance.new("TextBox",ab)aR.Size=UDim2.new(1,-14,0,27)aR.BackgroundColor3=Color3.fromRGB(26,26,32)aR.BorderSizePixel=0
aR.Text=aP.Name;aR.PlaceholderText=aP.Name;aR.TextColor3=Color3.fromRGB(170,170,180)aR.Font=Enum.Font.GothamMedium;aR.TextSize=12;aR.ClearTextOnFocus=false;aR.ZIndex=13
local aS=Instance.new("UICorner",aR)aS.CornerRadius=UDim.new(0,6)
aR.FocusLost:Connect(function()aQ.value=aR.Text;if aP.Callback then pcall(aP.Callback,aR.Text)end end)
ab.Size=UDim2.new(1,0,0,ab.Size.Y.Offset+32)return aQ end
function aa:AddLabel(aT)local aU=Instance.new("TextLabel")aU.Parent=ab;aU.BackgroundTransparency=1;aU.Size=UDim2.new(1,-16,0,42)
aU.Font=Enum.Font.Gotham;aU.Text=aT;aU.TextColor3=Color3.fromRGB(180,180,190)aU.TextSize=13;aU.TextWrapped=true
aU.TextXAlignment=Enum.TextXAlignment.Center;aU.TextYAlignment=Enum.TextYAlignment.Center;aU.ZIndex=13
ab.Size=UDim2.new(1,0,0,ab.Size.Y.Offset+48)end
return aa end
function T:Open()for _,aV in next,O:GetChildren()do if aV:IsA("Frame")then aV.Visible=(aV:GetAttribute("Tab")==S.Name)end end
for _,aV in next,Q:GetChildren()do if aV:IsA("Frame")then aV.Visible=(aV:GetAttribute("Tab")==S.Name)end end end
function T:CreateSectionOnSide(aW,aX)return X(aW,aX=="left"and O or Q,T.Name)end
return T end
return o end

local aY=game:GetService(string.char(80,108,97,121,101,114,115))local aZ=aY.LocalPlayer;local a_=workspace.CurrentCamera;local b0=aZ:GetMouse()local b1=game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))local b2=game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local b3=a:Create()local b4=Drawing or {}
local b5=b3:AddTab({Name="Combat"})local b6=b3:AddTab({Name="Blatant"})local b7=b3:AddTab({Name="Render"})local b8=b3:AddTab({Name="About"})

do local b9=b5:CreateSectionOnSide("Camera Lock","left")local ba;local bb="HumanoidRootPart";local bc=0
local bd=b4.new("Circle")bd.Thickness=1;bd.NumSides=64;bd.Radius=60;bd.Filled=false;bd.Color=Color3.fromRGB(170,100,255)bd.Visible=false
local function be()local bf,bg=nil,math.huge;for _,bh in ipairs(aY:GetPlayers())do if bh~=aZ and bh.Character and bh.Character:FindFirstChild("Humanoid")and bh.Character.Humanoid.Health>0 then
local bi=bh.Character:FindFirstChild(bb)if bi then local bj,bk=a_:WorldToViewportPoint(bi.Position)if bk then local bl=(Vector2.new(bj.X,bj.Y)-b2:GetMouseLocation()).Magnitude;if bl<bg then bf=bh;bg=bl end end end end end;return bf end
local bm=b9:AddToggle({Name="Toggle",Default=false,includeKeybind=true,Callback=function(bn)ba=bn and be()or nil end})
b9:AddToggle({Name="FOV Circle",Default=false,Callback=function(bn)bd.Visible=bn end})
b9:AddSlider({Name="FOV Radius",Default=60,Minimum=10,Maximum=400,Callback=function(bn)bd.Radius=bn end})
local bo=b9:AddToggle({Name="Streamable",Default=false})local bp=b9:AddSlider({Name="Sensitivity",Default=0.5,Minimum=0.05,Maximum=1})
local bq=b9:AddToggle({Name="Predict",Default=false})local br=b9:AddToggle({Name="K.O Check",Default=true})local bs=b9:AddToggle({Name="Grabbed Check",Default=true})
b9:AddSlider({Name="Shake",Default=0,Minimum=0,Maximum=3,Callback=function(bn)bc=bn end})
b1.RenderStepped:Connect(function()bd.Position=b2:GetMouseLocation()
if ba and ba.Character then local bt=ba.Character:FindFirstChild(bb)if bt then local bu=ba.Character:FindFirstChild("BodyEffects")
if br.value and bu and bu:FindFirstChild("K.O")and bu["K.O"].Value then bm:Set(false)return end
if bs.value and bu and bu:FindFirstChild("GRABBING_CONSTRAINT")then bm:Set(false)return end
local bv=bq.value and bt.Velocity*0.142 or Vector3.zero
local bw=Vector3.new(math.cos(tick()*80)*bc*0.008,math.sin(tick()*80)*bc*0.008,0)
if bo.value then a_.CFrame=a_.CFrame:Lerp(CFrame.new(a_.CFrame.Position+bw,bt.Position+bv),bp.value)else a_.CFrame=CFrame.new(a_.CFrame.Position+bw,bt.Position+bv)end end end end)end

do local bx=b6:CreateSectionOnSide("Character","left")local by=bx:AddToggle({Name="Speed",Default=false,includeKeybind=true})local bz=bx:AddToggle({Name="Flight",Default=false,includeKeybind=true})
local bA=bx:AddSlider({Name="Speed Value",Default=50,Minimum=1,Maximum=300})local bB=bx:AddSlider({Name="Vertical Speed",Default=50,Minimum=1,Maximum=300})
b1.RenderStepped:Connect(function(bC)local bD=aZ.Character;if not bD then return end;local bE=bD:FindFirstChildOfClass("Humanoid")local bF=bD:FindFirstChild("HumanoidRootPart")if not bE or not bF then return end
if by.value and not bz.value then bD:PivotTo(bD:GetPivot()+bE.MoveDirection*bA.value*bC)
elseif bz.value then if b2:IsKeyDown(Enum.KeyCode.Space)then bF.CFrame=bF.CFrame+Vector3.new(0,bB.value*bC,0)end
if b2:IsKeyDown(Enum.KeyCode.LeftShift)then bF.CFrame=bF.CFrame-Vector3.new(0,bB.value*bC,0)end
bF.Velocity=Vector3.zero;bF.CFrame=bF.CFrame+bE.MoveDirection*bA.value*bC end end)end

do local bG=b7:CreateSectionOnSide("ESP","left")
local bH=bG:AddToggle({Name="Boxes",Default=false})local bI=bG:AddToggle({Name="Names",Default=false})local bJ=bG:AddToggle({Name="Tracers",Default=false})
local bK,bL,bM={},{},{}
local function bN()for _,bO in pairs(bK)do if bO then bO.Visible=false end end;for _,bO in pairs(bL)do if bO then bO.Visible=false end end;for _,bO in pairs(bM)do if bO then bO.Visible=false end end end
b1.RenderStepped:Connect(function()
if not bH.value and not bI.value and not bJ.value then bN()return end
for _,bP in pairs(aY:GetPlayers())do
if bP~=aZ and bP.Character and bP.Character:FindFirstChild("HumanoidRootPart")then
local bQ=bP.Character.HumanoidRootPart;local bR,bS=a_:WorldToViewportPoint(bQ.Position)
if bH.value then local bT=bK[bP]or b4.new("Square")bT.Thickness=1;bT.Color=Color3.fromRGB(170,100,255)bT.Filled=false
if bS then local bU=2000/bR.Z;bT.Size=Vector2.new(bU,bU*1.6)bT.Position=Vector2.new(bR.X-bU/2,bR.Y-bU*0.8)bT.Visible=true else bT.Visible=false end;bK[bP]=bT
elseif bK[bP]then bK[bP].Visible=false end
if bI.value then local bV=bL[bP]or b4.new("Text")bV.Text=bP.Name;bV.Size=14;bV.Color=Color3.fromRGB(170,100,255)bV.Center=true;bV.Outline=true
if bS then bV.Position=Vector2.new(bR.X,bR.Y-45)bV.Visible=true else bV.Visible=false end;bL[bP]=bV
elseif bL[bP]then bL[bP].Visible=false end
if bJ.value then local bW=bM[bP]or b4.new("Line")bW.Thickness=1;bW.Color=Color3.fromRGB(170,100,255)
if bS then bW.From=b2:GetMouseLocation()bW.To=Vector2.new(bR.X,bR.Y)bW.Visible=true else bW.Visible=false end;bM[bP]=bW
elseif bM[bP]then bM[bP].Visible=false end
else if bK[bP]then bK[bP].Visible=false end;if bL[bP]then bL[bP].Visible=false end;if bM[bP]then bM[bP].Visible=false end end end end)
aY.PlayerRemoving:Connect(function(bP)if bK[bP]then pcall(function()bK[bP]:Remove()end)bK[bP]=nil end;if bL[bP]then pcall(function()bL[bP]:Remove()end)bL[bP]=nil end;if bM[bP]then pcall(function()bM[bP]:Remove()end)bM[bP]=nil end end)
end

do local bX=b8:CreateSectionOnSide("Information","left")bX:AddLabel("Follow @LurvekLabs on Roblox\nfor more updates!")end

task.defer(function()local bY=e:FindFirstChild(string.char(76,117,114,118,101,107,86,73,80))if bY then local bZ=bY:FindFirstChild("Main")and bY.Main:FindFirstChild("Tabs")if bZ then for _,b_ in pairs(bZ:GetChildren())do if b_:IsA("TextButton")and b_.Text:find("Combat")then b_.BackgroundColor3=Color3.fromRGB(170,100,255)b_.TextColor3=Color3.fromRGB(255,255,255)break end end end end end)
