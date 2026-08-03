local a=game:GetService("Players")local b=game:GetService("RunService")local c=game:GetService("UserInputService")local d=game:GetService("TweenService")local e=game:GetService("Lighting")local f=game:GetService("CoreGui")local g=a.LocalPlayer;local h=g:GetMouse()local i=workspace.CurrentCamera
pcall(function()for _,j in ipairs(f:GetDescendants())do if j:IsA("TextLabel")or j:IsA("TextButton")then local k=string.lower(j.Text or "")if k:find("reels")or k:find("horizontal")or k:find("vertical")then j:Destroy()end end end end)
if f:FindFirstChild("LurvekArsenal")then f.LurvekArsenal:Destroy()end
local l={Aimbot=false,Aiming=false,Aimbot_TeamCheck=false,Aimbot_Draw_FOV=false,Aimbot_FOV_Radius=150,Aimbot_AimPart="Head",Aimbot_Mode="Head",AimSpread=0.35,WallCheck=false,ESP=false,ShowHealth=false,ShowTracers=false,TracersThickness=1,ShowNameTag=false,NameTagSize=14,HitBox=false,HitBoxSize=13,Noclip=false,Fly=false,FlySpeed=50,CustomWalk=false,CustomWalkSpeed=16,WalkSpeedMode="None",CustomJumpPower=50,CustomJumpEnabled=false,infJump=false,airWalk=false,airWalkHeight=nil,clickTP=false,killall=false,Movementtrajectory=false,Rotationbot=false,RotationSpeed=5,NightVision=false}
local m=Color3.fromRGB(0,200,255)local n=Color3.fromRGB(12,12,14)local o=Color3.fromRGB(20,20,24)local p=Color3.fromRGB(26,26,32)local q=Color3.fromRGB(160,160,170)local r=Color3.fromRGB(240,240,245)
local function s(t,u,v,w)local x=Instance.new("UIStroke")x.Parent=t;x.Thickness=u or 1;x.Color=v or Color3.fromRGB(50,50,60)x.Transparency=w or 0.4;x.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;return x end
local y=Instance.new("ScreenGui")y.Name="LurvekArsenal"y.ResetOnSpawn=false;y.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;y.Parent=f
local z=Instance.new("Frame")z.Name="Main"z.Parent=y;z.BackgroundColor3=n;z.BorderSizePixel=0;z.Position=UDim2.new(0,i.ViewportSize.X/2-215,0,i.ViewportSize.Y/2-220)z.Size=UDim2.new(0,430,0,440)z.Active=true
local A=Instance.new("UICorner",z)A.CornerRadius=UDim.new(0,12)s(z,1.4,Color3.fromRGB(45,45,55),0.3)
local B=Instance.new("Frame")B.Parent=z;B.BackgroundColor3=m;B.BorderSizePixel=0;B.Size=UDim2.new(1,0,0,3)local C=Instance.new("UICorner",B)C.CornerRadius=UDim.new(0,12)
local D=Instance.new("TextLabel")D.Parent=z;D.BackgroundTransparency=1;D.Position=UDim2.new(0,16,0,12)D.Size=UDim2.new(0.7,0,0,24)D.Font=Enum.Font.GothamBold
D.Text="Lurvek.<font color=\"rgb(0,200,255)\">Arsenal</font> v3"D.TextColor3=Color3.fromRGB(245,245,250)D.TextSize=17;D.TextXAlignment=Enum.TextXAlignment.Left;D.RichText=true
local E=Instance.new("TextLabel")E.Parent=z;E.BackgroundTransparency=1;E.Position=UDim2.new(1,-60,0,14)E.Size=UDim2.new(0,50,0,20)E.Font=Enum.Font.GothamBold;E.Text="v3"E.TextColor3=Color3.fromRGB(120,120,130)E.TextSize=12;E.TextXAlignment=Enum.TextXAlignment.Right
local F,G,H=false,nil,nil
D.InputBegan:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 then F=true;G=I.Position;H=z.Position end end)
D.InputEnded:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 then F=false end end)
c.InputChanged:Connect(function(I)if F and I.UserInputType==Enum.UserInputType.MouseMovement then local J=I.Position-G;z.Position=UDim2.new(H.X.Scale,H.X.Offset+J.X,H.Y.Scale,H.Y.Offset+J.Y)end end)
local K=Instance.new("TextButton")K.Parent=z;K.BackgroundColor3=m;K.BackgroundTransparency=0.3;K.BorderSizePixel=0;K.Size=UDim2.new(0,14,0,14)K.Position=UDim2.new(1,-16,1,-16)K.Text=""K.ZIndex=20
local L=Instance.new("UICorner",K)L.CornerRadius=UDim.new(0,4)local M,N,O=false,nil,nil
K.InputBegan:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 then M=true;N=c:GetMouseLocation()O=Vector2.new(z.AbsoluteSize.X,z.AbsoluteSize.Y)end end)
K.InputEnded:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 then M=false end end)
c.InputChanged:Connect(function(I)if M and I.UserInputType==Enum.UserInputType.MouseMovement then local P=c:GetMouseLocation()local Q=P-N;z.Size=UDim2.new(0,math.clamp(O.X+Q.X,360,700),0,math.clamp(O.Y+Q.Y,340,650))end end)
local R=Instance.new("Frame")R.Parent=z;R.BackgroundColor3=Color3.fromRGB(16,16,20)R.BorderSizePixel=0;R.Position=UDim2.new(0,12,0,44)R.Size=UDim2.new(1,-24,0,32)
local S=Instance.new("UICorner",R)S.CornerRadius=UDim.new(0,8)local T=Instance.new("UIListLayout",R)T.FillDirection=Enum.FillDirection.Horizontal;T.Padding=UDim.new(0,4)T.VerticalAlignment=Enum.VerticalAlignment.Center
local U=Instance.new("UIPadding",R)U.PaddingLeft=UDim.new(0,6)
local V=Instance.new("ScrollingFrame")V.Parent=z;V.BackgroundColor3=Color3.fromRGB(14,14,17)V.BorderSizePixel=0;V.Position=UDim2.new(0,12,0,84)V.Size=UDim2.new(1,-24,1,-98)V.ScrollBarThickness=3;V.ScrollBarImageColor3=m;V.CanvasSize=UDim2.new(0,0,0,0)V.AutomaticCanvasSize=Enum.AutomaticSize.Y
local W=Instance.new("UICorner",V)W.CornerRadius=UDim.new(0,8)local X=Instance.new("UIListLayout",V)X.SortOrder=Enum.SortOrder.LayoutOrder;X.Padding=UDim.new(0,8)
local Y=Instance.new("UIPadding",V)Y.PaddingTop=UDim.new(0,8)Y.PaddingBottom=UDim.new(0,8)Y.PaddingLeft=UDim.new(0,8)Y.PaddingRight=UDim.new(0,8)
local Z={}local _a=nil
local function _b(_c)local _d=Instance.new("TextButton")_d.Parent=R;_d.BackgroundColor3=Color3.fromRGB(26,26,32)_d.BorderSizePixel=0;_d.Font=Enum.Font.GothamBold;_d.Text="  ".._c.."  "_d.TextColor3=q;_d.TextSize=12;_d.AutomaticSize=Enum.AutomaticSize.X;_d.Size=UDim2.new(0,0,0,24)
local _e=Instance.new("UICorner",_d)_e.CornerRadius=UDim.new(0,6)
local _f=Instance.new("Frame")_f.Name=_c;_f.Parent=V;_f.BackgroundTransparency=1;_f.Size=UDim2.new(1,0,0,0)_f.AutomaticSize=Enum.AutomaticSize.Y;_f.Visible=false
local _g=Instance.new("UIListLayout",_f)_g.SortOrder=Enum.SortOrder.LayoutOrder;_g.Padding=UDim.new(0,8)Z[_c]={btn=_d,frame=_f}
_d.MouseButton1Click:Connect(function()for _h,_i in pairs(Z)do _i.frame.Visible=(_h==_c)_i.btn.BackgroundColor3=(_h==_c)and m or Color3.fromRGB(26,26,32)_i.btn.TextColor3=(_h==_c)and Color3.new(1,1,1)or q end;_a=_c end)return _f end
local function _j(_k,_l)local _m=Instance.new("Frame")_m.Parent=_k;_m.BackgroundColor3=o;_m.BorderSizePixel=0;_m.Size=UDim2.new(1,0,0,0)_m.AutomaticSize=Enum.AutomaticSize.Y
local _n=Instance.new("UICorner",_m)_n.CornerRadius=UDim.new(0,8)s(_m,1,Color3.fromRGB(48,48,58),0.45)
local _o=Instance.new("UIListLayout",_m)_o.SortOrder=Enum.SortOrder.LayoutOrder;_o.Padding=UDim.new(0,4)
local _p=Instance.new("UIPadding",_m)_p.PaddingTop=UDim.new(0,8)_p.PaddingBottom=UDim.new(0,8)_p.PaddingLeft=UDim.new(0,8)_p.PaddingRight=UDim.new(0,8)
local _q=Instance.new("TextLabel")_q.Parent=_m;_q.BackgroundTransparency=1;_q.Size=UDim2.new(1,0,0,18)_q.Font=Enum.Font.GothamBold;_q.Text=_l;_q.TextColor3=m;_q.TextSize=13;_q.TextXAlignment=Enum.TextXAlignment.Left;return _m end
local function _r(_s,_t,_u,_v)local _w=_u or false;local _x=Instance.new("TextButton")_x.Parent=_s;_x.BackgroundColor3=p;_x.BorderSizePixel=0;_x.Size=UDim2.new(1,0,0,28)_x.Text=""
local _y=Instance.new("UICorner",_x)_y.CornerRadius=UDim.new(0,6)
local _z=Instance.new("Frame")_z.Parent=_x;_z.BackgroundColor3=_w and m or Color3.fromRGB(42,42,50)_z.BorderSizePixel=0;_z.Size=UDim2.new(0,14,0,14)_z.Position=UDim2.new(0,8,0.5,-7)
local _A=Instance.new("UICorner",_z)_A.CornerRadius=UDim.new(0,4)
local _B=Instance.new("TextLabel")_B.Parent=_x;_B.BackgroundTransparency=1;_B.Position=UDim2.new(0,30,0,0)_B.Size=UDim2.new(1,-40,1,0)_B.Font=Enum.Font.GothamBold;_B.Text=_t;_B.TextColor3=_w and r or q;_B.TextSize=12;_B.TextXAlignment=Enum.TextXAlignment.Left
_x.MouseButton1Click:Connect(function()_w=not _w;_z.BackgroundColor3=_w and m or Color3.fromRGB(42,42,50)_B.TextColor3=_w and r or q;if _v then pcall(_v,_w)end end)
return{Set=function(_, _C)if _w~=_C then _w=_C;_z.BackgroundColor3=_w and m or Color3.fromRGB(42,42,50)_B.TextColor3=_w and r or q;if _v then pcall(_v,_w)end end end,Get=function()return _w end}end
local function _D(_E,_F,_G,_H,_I,_J)local _K=_I or _G;local _L=Instance.new("Frame")_L.Parent=_E;_L.BackgroundColor3=p;_L.BorderSizePixel=0;_L.Size=UDim2.new(1,0,0,36)
local _M=Instance.new("UICorner",_L)_M.CornerRadius=UDim.new(0,6)
local _N=Instance.new("TextLabel")_N.Parent=_L;_N.BackgroundTransparency=1;_N.Position=UDim2.new(0,8,0,2)_N.Size=UDim2.new(1,-16,0,16)_N.Font=Enum.Font.GothamBold;_N.Text=_F..": "..tostring(_K)_N.TextColor3=r;_N.TextSize=12;_N.TextXAlignment=Enum.TextXAlignment.Left
local _O=Instance.new("Frame")_O.Parent=_L;_O.BackgroundColor3=Color3.fromRGB(40,40,48)_O.BorderSizePixel=0;_O.Position=UDim2.new(0,8,1,-12)_O.Size=UDim2.new(1,-16,0,5)
local _P=Instance.new("UICorner",_O)_P.CornerRadius=UDim.new(1,0)
local _Q=Instance.new("Frame")_Q.Parent=_O;_Q.BackgroundColor3=m;_Q.BorderSizePixel=0;_Q.Size=UDim2.new((_K-_G)/math.max(_H-_G,1),0,1,0)
local _R=Instance.new("UICorner",_Q)_R.CornerRadius=UDim.new(1,0)local _S=false
local function _T()local _U=math.clamp((h.X-_O.AbsolutePosition.X)/math.max(_O.AbsoluteSize.X,1),0,1)_K=math.floor(_G+_U*(_H-_G)+0.5)_Q.Size=UDim2.new(_U,0,1,0)_N.Text=_F..": "..tostring(_K)if _J then pcall(_J,_K)end end
_O.InputBegan:Connect(function(_V)if _V.UserInputType==Enum.UserInputType.MouseButton1 then _S=true;_T()while _S do _T()task.wait()end end end)
_O.InputEnded:Connect(function(_V)if _V.UserInputType==Enum.UserInputType.MouseButton1 then _S=false end end)
_L.InputBegan:Connect(function(_V)if _V.UserInputType==Enum.UserInputType.MouseButton1 then _S=true;_T()while _S do _T()task.wait()end end end)
_L.InputEnded:Connect(function(_V)if _V.UserInputType==Enum.UserInputType.MouseButton1 then _S=false end end)end
local function _W(_X,_Y,_Z,__a,__b)local __c=__a or _Z[1]local __d=Instance.new("TextButton")__d.Parent=_X;__d.BackgroundColor3=p;__d.BorderSizePixel=0;__d.Size=UDim2.new(1,0,0,28)__d.Font=Enum.Font.GothamBold;__d.Text="  ".._Y..": "..__c;__d.TextColor3=r;__d.TextSize=12;__d.TextXAlignment=Enum.TextXAlignment.Left
local __e=Instance.new("UICorner",__d)__e.CornerRadius=UDim.new(0,6)local __f=1;for __g,__h in ipairs(_Z)do if __h==__c then __f=__g break end end
__d.MouseButton1Click:Connect(function()__f=__f%#_Z+1;__c=_Z[__f]__d.Text="  ".._Y..": "..__c;if __b then pcall(__b,__c)end end)end
local function __i(__j,__k,__l)local __m=Instance.new("TextButton")__m.Parent=__j;__m.BackgroundColor3=p;__m.BorderSizePixel=0;__m.Size=UDim2.new(1,0,0,28)__m.Font=Enum.Font.GothamBold;__m.Text=__k;__m.TextColor3=r;__m.TextSize=12
local __n=Instance.new("UICorner",__m)__n.CornerRadius=UDim.new(0,6)__m.MouseButton1Click:Connect(function()if __l then pcall(__l)end end)end
local function __o(__p,__q,__r)local __s=Instance.new("TextBox")__s.Parent=__p;__s.BackgroundColor3=p;__s.BorderSizePixel=0;__s.Size=UDim2.new(1,0,0,28)__s.Font=Enum.Font.GothamBold;__s.PlaceholderText=__q;__s.Text="";__s.TextColor3=r;__s.PlaceholderColor3=q;__s.TextSize=12;__s.ClearTextOnFocus=false
local __t=Instance.new("UICorner",__s)__t.CornerRadius=UDim.new(0,6)__s.FocusLost:Connect(function()if __r then pcall(__r,__s.Text)end end)end
local function __u(__v,__w)local __x=Instance.new("TextLabel")__x.Parent=__v;__x.BackgroundTransparency=1;__x.Size=UDim2.new(1,0,0,36)__x.Font=Enum.Font.GothamBold;__x.Text=__w;__x.TextColor3=q;__x.TextSize=12;__x.TextWrapped=true end
local __y=_b("Combat")local __z=_b("Visuals")local __A=_b("Player")local __B=_b("Movement")local __C=_b("Misc")local __D=_b("About")
Z["Combat"].frame.Visible=true;Z["Combat"].btn.BackgroundColor3=m;Z["Combat"].btn.TextColor3=Color3.new(1,1,1)
c.InputBegan:Connect(function(__E,__F)if __F then return end;if __E.KeyCode==Enum.KeyCode.RightShift or __E.KeyCode==Enum.KeyCode.P then y.Enabled=not y.Enabled end end)
local __G=_j(__y,"Aimbot")
_r(__G,"Aimbot",false,function(__H)l.Aimbot=__H end)
_r(__G,"Team Check",false,function(__H)l.Aimbot_TeamCheck=__H end)
_r(__G,"Wall Check",false,function(__H)l.WallCheck=__H end)
_W(__G,"Location",{"Head","Neck","Body","Chest","Foot","Random"},"Head",function(__H)l.Aimbot_Mode=__H;local __I={Head="Head",Neck="Neck",Body="UpperTorso",Chest="UpperTorso",Foot="LowerTorso",Random="Random"}l.Aimbot_AimPart=__I[__H]or"Head"end)
_D(__G,"Aim Spread",0,10,4,function(__H)l.AimSpread=__H/10 end)
local __J=_j(__y,"HitBox")
_r(__J,"HitBox",false,function(__H)l.HitBox=__H end)
_D(__J,"HitBox Size",10,30,13,function(__H)l.HitBoxSize=__H end)
local __K=_j(__y,"Weapon")local __L=_j(__y,"Other")
_r(__L,"Rotation Bot",false,function(__H)l.Rotationbot=__H end)
_D(__L,"Rotation Speed",1,20,5,function(__H)l.RotationSpeed=__H end)
local __M=_j(__z,"ESP")
_r(__M,"ESP Boxes",false,function(__H)l.ESP=__H end)
_r(__M,"Health",false,function(__H)l.ShowHealth=__H end)
_r(__M,"Tracers",false,function(__H)l.ShowTracers=__H end)
_D(__M,"Tracers Thickness",1,10,1,function(__H)l.TracersThickness=__H end)
_r(__M,"NameTag",false,function(__H)l.ShowNameTag=__H end)
_D(__M,"NameTag Size",10,30,14,function(__H)l.NameTagSize=__H end)
local __O=Drawing.new("Circle")__O.Visible=false;__O.Radius=l.Aimbot_FOV_Radius;__O.Color=m;__O.Thickness=1;__O.Filled=false;__O.Transparency=1;__O.NumSides=64
local __N=_j(__z,"FOV")
_r(__N,"Show FOV",false,function(__H)l.Aimbot_Draw_FOV=__H;if __O then __O.Visible=__H end end)
_D(__N,"FOV Size",10,500,150,function(__H)l.Aimbot_FOV_Radius=__H;if __O then __O.Radius=__H end end)
local __P=_j(__z,"Other")
_r(__P,"Night Vision",false,function(__H)l.NightVision=__H;if __H then e.Ambient=Color3.fromRGB(200,200,200)e.OutdoorAmbient=Color3.fromRGB(200,200,200)else e.Ambient=Color3.fromRGB(0,0,0)e.OutdoorAmbient=Color3.fromRGB(128,128,128)end end)
local __Q=_j(__A,"Teleport")
__o(__Q,"Player name to TP...",function(__H)if __H and __H~=""then local __R=a:FindFirstChild(__H)if __R and __R.Character and __R.Character:FindFirstChild("HumanoidRootPart")and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then g.Character.HumanoidRootPart.CFrame=__R.Character.HumanoidRootPart.CFrame end end end)
_r(__Q,"KillAll",false,function(__H)l.killall=__H end)
local __S=_j(__A,"Click TP")
_r(__S,"Click TP",false,function(__H)l.clickTP=__H end)
local __T=_j(__B,"Speed")
_r(__T,"WalkSpeed",false,function(__H)l.CustomWalk=__H end)
_D(__T,"WalkSpeed Value",1,200,16,function(__H)l.CustomWalkSpeed=__H end)
_W(__T,"Mode",{"None","BHop"},"None",function(__H)l.WalkSpeedMode=__H end)
_r(__T,"JumpPower",false,function(__H)l.CustomJumpEnabled=__H end)
_D(__T,"JumpPower Value",1,150,50,function(__H)l.CustomJumpPower=__H end)
local __U=_j(__B,"Fly")
_r(__U,"Fly",false,function(__H)l.Fly=__H end)
_D(__U,"Fly Speed",10,200,50,function(__H)l.FlySpeed=__H end)
local __V=_j(__B,"Other")
_r(__V,"Noclip",false,function(__H)l.Noclip=__H end)
_r(__V,"Infinite Jump",false,function(__H)l.infJump=__H end)
_r(__V,"AirWalk",false,function(__H)l.airWalk=__H;if __H and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then l.airWalkHeight=g.Character.HumanoidRootPart.Position.Y end end)
local __W=_j(__C,"GUI")__u(__W,"Toggle GUI: RightShift or P")
local __X=_j(__D,"Info")__u(__X,"LurvekArsenal v3\n@LurvekLabs on Roblox")
local function __Y(__Z)if not __Z then return nil end;local ___a=l.Aimbot_Mode;local ___b=nil
if ___a=="Random"then local ___c={}local ___d=__Z:FindFirstChild("Head")local ___e=__Z:FindFirstChild("UpperTorso")or __Z:FindFirstChild("Torso")local ___f=__Z:FindFirstChild("LowerTorso")
if ___d then table.insert(___c,___d.Position)end;if ___d and ___e then table.insert(___c,___d.Position:Lerp(___e.Position,0.45))end;if ___e then table.insert(___c,___e.Position)end;if ___f then table.insert(___c,___f.Position)end
if #___c==0 then return nil end;___b=___c[math.random(1,#___c)]
elseif ___a=="Neck"then local ___d=__Z:FindFirstChild("Head")local ___e=__Z:FindFirstChild("UpperTorso")or __Z:FindFirstChild("Torso")if ___d and ___e then ___b=___d.Position:Lerp(___e.Position,0.45)elseif ___d then ___b=___d.Position-Vector3.new(0,0.35,0)end
else local ___g=__Z:FindFirstChild(l.Aimbot_AimPart)if ___g then ___b=___g.Position end end
if not ___b then return nil end;local ___h=l.AimSpread or 0.3
return ___b+Vector3.new((math.random()-0.5)*2*___h,(math.random()-0.5)*2*___h*0.7,(math.random()-0.5)*2*___h)end
local function ___i(__Z)if l.Aimbot_Mode=="Neck"or l.Aimbot_Mode=="Random"then return __Z:FindFirstChild("Head")or __Z:FindFirstChild("UpperTorso")or __Z:FindFirstChild("HumanoidRootPart")end;return __Z:FindFirstChild(l.Aimbot_AimPart)end

c.InputBegan:Connect(function(___j)if ___j.UserInputType==Enum.UserInputType.MouseButton2 then l.Aiming=true end
if ___j.KeyCode==Enum.KeyCode.X and l.clickTP then local ___k=h.Hit;if ___k and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then g.Character.HumanoidRootPart.CFrame=CFrame.new(___k.Position)end end end)
c.InputEnded:Connect(function(___j)if ___j.UserInputType==Enum.UserInputType.MouseButton2 then l.Aiming=false end end)
c.JumpRequest:Connect(function()local ___l=g.Character;if not ___l then return end;local ___m=___l:FindFirstChildOfClass("Humanoid")if not ___m then return end
if l.infJump then ___m:ChangeState(Enum.HumanoidStateType.Jumping)end
if l.CustomJumpEnabled then local ___n=___l:FindFirstChild("HumanoidRootPart")if ___n then ___n.Velocity=Vector3.new(___n.Velocity.X,l.CustomJumpPower,___n.Velocity.Z)end end end)
local function ___o(__Z)local ___p=___i(__Z)if not ___p then return false end;local ___q=i.CFrame.Position;local ___r=(___p.Position-___q).Unit*500
local ___s=RaycastParams.new()___s.FilterDescendantsInstances={g.Character}___s.FilterType=Enum.RaycastFilterType.Exclude;___s.IgnoreWater=true
local ___t=workspace:Raycast(___q,___r,___s)if ___t then return ___t.Instance:IsDescendantOf(__Z)end;return true end
b.RenderStepped:Connect(function()local ___u=c:GetMouseLocation()__O.Position=___u;__O.Radius=l.Aimbot_FOV_Radius;__O.Visible=l.Aimbot_Draw_FOV
if l.Aimbot and l.Aiming then local ___v,___w=math.huge,nil
for _,___x in ipairs(a:GetPlayers())do if ___x~=g and ___x.Character then local ___m=___x.Character:FindFirstChildOfClass("Humanoid")local ___n=___x.Character:FindFirstChild("HumanoidRootPart")
if ___m and ___n and ___m.Health>0 then if not l.Aimbot_TeamCheck or ___x.Team~=g.Team then local ___p=___i(___x.Character)if ___p then local ___y,___z=i:WorldToViewportPoint(___p.Position)
if ___z then local ___A=(Vector2.new(___y.X,___y.Y)-___u).Magnitude;if ___A<___v and ___A<l.Aimbot_FOV_Radius then if not l.WallCheck or ___o(___x.Character)then ___v=___A;___w=___x.Character end end end end end end end end
if ___w then local ___B=__Y(___w)if ___B then i.CFrame=CFrame.new(i.CFrame.Position,___B)end end end
if l.Rotationbot and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then local ___n=g.Character.HumanoidRootPart;___n.CFrame=___n.CFrame*CFrame.Angles(0,math.rad(l.RotationSpeed),0)end
if l.Noclip and g.Character then for _,___C in pairs(g.Character:GetDescendants())do if ___C:IsA("BasePart")then ___C.CanCollide=false end end end
if l.Fly and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then local ___n=g.Character.HumanoidRootPart;local ___D=Vector3.zero
if c:IsKeyDown(Enum.KeyCode.W)then ___D=___D+i.CFrame.LookVector end;if c:IsKeyDown(Enum.KeyCode.S)then ___D=___D-i.CFrame.LookVector end
if c:IsKeyDown(Enum.KeyCode.A)then ___D=___D-i.CFrame.RightVector end;if c:IsKeyDown(Enum.KeyCode.D)then ___D=___D+i.CFrame.RightVector end
if c:IsKeyDown(Enum.KeyCode.Space)then ___D=___D+Vector3.new(0,1,0)end;if c:IsKeyDown(Enum.KeyCode.LeftControl)then ___D=___D-Vector3.new(0,1,0)end
if ___D.Magnitude>0 then ___n.CFrame=___n.CFrame+___D.Unit*l.FlySpeed*0.016;___n.Velocity=Vector3.zero else ___n.Velocity=Vector3.zero end end
if l.CustomWalk and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then local ___n=g.Character.HumanoidRootPart;local ___m=g.Character:FindFirstChildOfClass("Humanoid")
local ___E=Vector3.new(i.CFrame.LookVector.X,0,i.CFrame.LookVector.Z)local ___F=Vector3.new(i.CFrame.RightVector.X,0,i.CFrame.RightVector.Z)
if ___E.Magnitude>0 then ___E=___E.Unit end;if ___F.Magnitude>0 then ___F=___F.Unit end;local ___G=Vector3.zero
if c:IsKeyDown(Enum.KeyCode.W)then ___G=___G+___E end;if c:IsKeyDown(Enum.KeyCode.S)then ___G=___G-___E end
if c:IsKeyDown(Enum.KeyCode.A)then ___G=___G-___F end;if c:IsKeyDown(Enum.KeyCode.D)then ___G=___G+___F end
if ___G.Magnitude>0 then ___n.CFrame=___n.CFrame+___G.Unit*l.CustomWalkSpeed*0.016 end
if l.WalkSpeedMode=="BHop"and ___m and ___m:GetState()==Enum.HumanoidStateType.Running then ___m:ChangeState(Enum.HumanoidStateType.Jumping)end end
if l.airWalk and g.Character and g.Character:FindFirstChild("HumanoidRootPart")then local ___n=g.Character.HumanoidRootPart;if not l.airWalkHeight then l.airWalkHeight=___n.Position.Y end;___n.Velocity=Vector3.zero;___n.CFrame=CFrame.new(___n.Position.X,l.airWalkHeight,___n.Position.Z)end end)
local ___H={}local function ___I(___x)local ___J=___H[___x]if ___J then for _,___K in pairs(___J)do pcall(function()___K:Remove()end)end;___H[___x]=nil end end
a.PlayerRemoving:Connect(___I)
b.RenderStepped:Connect(function()for _,___x in pairs(a:GetPlayers())do
if ___x~=g and ___x.Character and ___x.Character:FindFirstChild("HumanoidRootPart")and ___x.Character:FindFirstChildOfClass("Humanoid")then
local ___n=___x.Character.HumanoidRootPart;local ___m=___x.Character:FindFirstChildOfClass("Humanoid")local ___y,___z=i:WorldToViewportPoint(___n.Position)
if not ___H[___x]then ___H[___x]={box=Drawing.new("Square"),health=Drawing.new("Square"),tracer=Drawing.new("Line"),name=Drawing.new("Text")}
___H[___x].box.Filled=false;___H[___x].box.Thickness=1;___H[___x].box.Color=m;___H[___x].health.Filled=true;___H[___x].health.Color=Color3.fromRGB(0,255,100)
___H[___x].tracer.Thickness=1;___H[___x].tracer.Color=m;___H[___x].name.Center=true;___H[___x].name.Outline=true;___H[___x].name.Color=m;___H[___x].name.Size=l.NameTagSize end
local ___J=___H[___x]___J.tracer.Thickness=l.TracersThickness;___J.name.Size=l.NameTagSize;___J.name.Text=___x.Name
if l.ESP and ___z and ___m.Health>0 then local ___L=2000/___y.Z;___J.box.Size=Vector2.new(___L,___L*1.6)___J.box.Position=Vector2.new(___y.X-___L/2,___y.Y-___L*0.8)___J.box.Visible=true else ___J.box.Visible=false end
if l.ShowHealth and ___z and ___m.Health>0 then local ___L=2000/___y.Z;local ___M=math.clamp(___m.Health/math.max(___m.MaxHealth,1),0,1)___J.health.Size=Vector2.new(3,___L*1.6*___M)___J.health.Position=Vector2.new(___y.X-___L/2-6,___y.Y-___L*0.8+___L*1.6*(1-___M))___J.health.Visible=true else ___J.health.Visible=false end
if l.ShowTracers and ___z and ___m.Health>0 then ___J.tracer.From=Vector2.new(i.ViewportSize.X/2,i.ViewportSize.Y)___J.tracer.To=Vector2.new(___y.X,___y.Y)___J.tracer.Visible=true else ___J.tracer.Visible=false end
if l.ShowNameTag and ___z and ___m.Health>0 then ___J.name.Position=Vector2.new(___y.X,___y.Y-50)___J.name.Visible=true else ___J.name.Visible=false end
else if ___H[___x]then for _,___K in pairs(___H[___x])do ___K.Visible=false end end end end end)
task.spawn(function()while true do task.wait(1)if l.HitBox then for _,___x in pairs(a:GetPlayers())do if ___x~=g and ___x.Character and ___x.Character:FindFirstChild("HumanoidRootPart")then local ___n=___x.Character.HumanoidRootPart;pcall(function()___n.Size=Vector3.new(l.HitBoxSize,l.HitBoxSize,l.HitBoxSize)___n.Transparency=0.5;___n.CanCollide=false end)end end end end end)
local function ___N()local ___O,___P=pcall(function()return g.PlayerGui.GUI.Client.Variables.gun.Value end)if ___O and ___P then return game:GetService("ReplicatedStorage").Weapons:FindFirstChild(tostring(___P))end;return nil end
__i(__K,"Unlimited Ammo",function()task.spawn(function()while task.wait()do pcall(function()local ___Q=g.PlayerGui.GUI.Client.Variables;___Q.ammocount.Value=999;___Q.ammocount2.Value=999 end)end end)end)
__i(__K,"No Recoil",function()task.spawn(function()while task.wait()do local ___R=___N()if ___R and ___R:FindFirstChild("RecoilControl")then ___R.RecoilControl.Value=0 end end end)end)
__i(__K,"Rapid Fire",function()task.spawn(function()while task.wait()do local ___R=___N()if ___R and ___R:FindFirstChild("FireRate")then ___R.FireRate.Value=0.02 end end end)end)
__i(__K,"Auto Gun",function()task.spawn(function()while task.wait()do local ___R=___N()if ___R and ___R:FindFirstChild("Auto")then ___R.Auto.Value=true end end end)end)
b.Heartbeat:Connect(function()if l.killall then for _,___x in ipairs(a:GetPlayers())do if ___x~=g and ___x.Team~=g.Team and ___x.Character and ___x.Character:FindFirstChild("HumanoidRootPart")then if g.Character and g.Character:FindFirstChild("HumanoidRootPart")then local ___n=g.Character.HumanoidRootPart;local ___S=___x.Character.HumanoidRootPart;if (___S.Position-___n.Position).Magnitude<350 then ___n.CFrame=___S.CFrame*CFrame.new(0,0,2)end end end end end end)
task.spawn(function()while task.wait(2)do pcall(function()for _,___T in ipairs(f:GetDescendants())do if ___T:IsA("TextLabel")or ___T:IsA("TextButton")then local ___U=string.lower(tostring(___T.Text or ""))if ___U:find("reels")or (___U:find("horizontal")and #___U<30)then ___T.Visible=false;___T:Destroy()end end end end)end end)
