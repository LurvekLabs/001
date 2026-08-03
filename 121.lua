local _0=string.char;local _1=Enum.KeyCode[_0(84)]
local _2=game:GetService(_0(80,108,97,121,101,114,115))
local _3=game:GetService(_0(82,117,110,83,101,114,118,105,99,101))
local _4=game:GetService(_0(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _5=game:GetService(_0(87,111,114,107,115,112,97,99,101))
local _6=_2.LocalPlayer
local _7=_6:GetMouse()
local _8=_5.CurrentCamera
local _9,_a,_b=false,false,{}
local function _c(_d)
	return _d.Parent==_6.Backpack or(_6.Character and _d.Parent==_6.Character)
end
local function _e()
	for _f=#_b,1,-1 do
		if not _b[_f]or not _c(_b[_f])then table.remove(_b,_f)end
	end
	if _6.Backpack then
		for _,_g in ipairs(_6.Backpack:GetChildren())do
			if _g:IsA(_0(84,111,111,108))then
				local _h=false
				for _,_i in ipairs(_b)do if _i==_g then _h=true break end end
				if not _h then table.insert(_b,_g)end
			end
		end
	end
	if _6.Character then
		local _j=_6.Character:FindFirstChildOfClass(_0(84,111,111,108))
		if _j then
			local _h=false
			for _,_i in ipairs(_b)do if _i==_j then _h=true break end end
			if not _h then table.insert(_b,_j)end
		end
	end
end
local function _k()
	_e()
	if _6.Backpack then
		_6.Backpack.ChildAdded:Connect(function()task.defer(_e)end)
		_6.Backpack.ChildRemoved:Connect(function()task.defer(_e)end)
	end
end
_k()
_6.CharacterAdded:Connect(function()task.wait(0.15)_k()end)
local function _l()
	local _m=_6.Character
	if not _m then return false end
	local _n=_m:FindFirstChildOfClass(_0(84,111,111,108))
	if not _n then return false end
	for _o,_p in ipairs(_b)do
		if _p==_n then return _o==2 end
	end
	return false
end
local function _q()
	local _r=_4:GetMouseLocation()
	local _s=_8:ViewportPointToRay(_r.X,_r.Y)
	local _t=RaycastParams.new()
	_t.FilterType=Enum.RaycastFilterType.Exclude
	_t.FilterDescendantsInstances={_6.Character}
	_t.IgnoreWater=true
	local _u=_5:Raycast(_s.Origin,_s.Direction*1000,_t)
	if not _u or not _u.Instance then return nil end
	local _v=_u.Instance:FindFirstAncestorOfClass(_0(77,111,100,101,108))
	if not _v then return nil end
	local _w=_v:FindFirstChildOfClass(_0(72,117,109,97,110,111,105,100))
	if not _w or _w.Health<=0 then return nil end
	local _x=_2:GetPlayerFromCharacter(_v)
	if not _x or _x==_6 then return nil end
	return _v
end
_4.InputBegan:Connect(function(_y,_z)
	if _z then return end
	if _y.KeyCode==_1 then
		_9=not _9
		if _a and not _9 then mouse1release()_a=false end
	end
end)
_3.RenderStepped:Connect(function()
	if not _9 or not _l()then
		if _a then _a=false mouse1release()end
		return
	end
	if _q()then
		if not _a then _a=true mouse1press()end
	else
		if _a then _a=false mouse1release()end
	end
end)
