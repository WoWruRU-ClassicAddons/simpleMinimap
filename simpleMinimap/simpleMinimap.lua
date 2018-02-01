--[[ simpleMinimap by arJUna ]]--
simpleMinimap = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceDB-2.0", "AceEvent-2.0", "AceHook-2.1", "AceModuleCore-2.0")
local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap")


--[[ setup ]]--
--
function simpleMinimap:OnInitialize()
	self.inside = true
	self.buttons = {
		bgs = MiniMapBattlefieldFrame,
		map = MiniMapWorldMapButton,
		mail = MiniMapMailFrame,
		meet = MiniMapMeetingStoneFrame,
		time = GameTimeFrame,
		track = MiniMapTrackingFrame,
		zoomin = MinimapZoomIn,
		zoomout = MinimapZoomOut
	}
	self.stratas = {
		"BACKGROUND",
		"LOW",
		"MEDIUM",
		"HIGH",
		"DIALOG",
		"FULLSCREEN",
		"FULLSCREEN_DIALOG",
		"TOOLTIP"
	}
	self.defaults = {
		alpha = 1,
		buttonResize = false,
		buttonSize = 33,
		lock = false,
		lockdown = false,
		locationShow = true,
		locationText = true,
		mapPosition = false,
		scale = 1,
		strata = 1,
		buttonPos = {
			bgs = 302,
			map = 40,
			meet = 189,
			mail = 169,
			time = 137,
			track = 20,
			zoomin = 209,
			zoomout = 235
		},
		show = {
			bgs = true,
			map = true,
			mail = true,
			meet = true,
			time = true,
			track = true,
			zoom = true
		}
	}
	self.options = {
		type="group",
		args={
			title={
				type="header", order=1, name="simpleMinimap |cFFFFFFCCv"..self.version
			},
			spacer1={
				type="header", order=2, name=" "
			},
			alpha={
				type="range", order=3, name=L.alpha, desc=L.alpha_desc,
				min=0, max=1, step=0.05, isPercent=true,
				get=function() return(self.db.profile.alpha) end,
				set=function(x) self.db.profile.alpha=x self:UpdateScreen() end
			},
			scale={
				type="range", order=5, name=L.scale, desc=L.scale_desc,
				min=0.5, max=2, step=0.05,
				get=function() return(self.db.profile.scale) end,
				set=function(x)
					local p = self.db.profile
					if(p.mapPosition) then
						p.mapPosition[1] = (p.scale / x) * p.mapPosition[1]
						p.mapPosition[2] = (p.scale / x) * p.mapPosition[2]
					end
					p.scale = x
					self:UpdateScreen()
				end
			},
			show={
				type="group", order=6, name=L.show, desc=L.show_desc,
				args={
					location={
						type="group", order=1, name=L.location, desc=L.location,
						args={
							show={
								type="toggle", order=1, name=L.locationShow, desc=L.locationShow_desc,
								get=function() return(self.db.profile.locationShow) end,
								set=function(x) self.db.profile.locationShow=x self:UpdateScreen() end
							},
							text={
								type="toggle", order=2, name=L.locationText, desc=L.locationText_desc,
								get=function() return(self.db.profile.locationText) end,
								set=function(x) self.db.profile.locationText=x self:UpdateScreen() end
							}
						}
					},
					bgs={
						type="toggle", order=2, name=L.bgs, desc=L.bgs_desc,
						get=function() return(self.db.profile.show.bgs) end,
						set=function(x) self.db.profile.show.bgs=x self:UpdateScreen() end
					},
					map={
						type="toggle", order=3, name=L.map, desc=L.map_desc,
						get=function() return(self.db.profile.show.map) end,
						set=function(x) self.db.profile.show.map=x self:UpdateScreen() end
					},
					mail={
						type="toggle", order=4, name=L.mail, desc=L.mail_desc,
						get=function() return(self.db.profile.show.mail) end,
						set=function(x) self.db.profile.show.mail=x self:UpdateScreen() end
					},
					meet={
						type= "toggle", order=5, name=L.meet, desc=L.meet_desc,
						get=function() return(self.db.profile.show.meet) end,
						set=function(x) self.db.profile.show.meet=x self:UpdateScreen() end
					},
					time={
						type="toggle", order=6, name=L.time, desc=L.time_desc,
						get=function() return(self.db.profile.show.time) end,
						set=function(x) self.db.profile.show.time=x self:UpdateScreen() end
					},
					track={
						type="toggle", order=7, name=L.track, desc=L.track_desc,
						get=function() return(self.db.profile.show.track) end,
						set=function(x) self.db.profile.show.track=x self:UpdateScreen() end
					},
					zoom={
						type="toggle", order=8, name=L.zoom, desc=L.zoom_desc,
						get=function() return(self.db.profile.show.zoom) end,
						set=function(x) self.db.profile.show.zoom=x self:UpdateScreen() end
					}
				}
			},
			strata={
				type="range", order=7, name=L.strata, desc=L.strata_desc,
				min=1, max=7, step=1,
				get=function() return(self.db.profile.strata) end,
				set=function(x) self.db.profile.strata=x self:UpdateScreen() end
			},
			spacer2={
				type="header", order=8, name=" "
			},
			spacer3={
				type="header", order=9, name="   "..L.modules
			},
			spacer4={
				type="header", order=96, name=" "
			},
			lock={
				type="toggle", order=97, name=L.lock, desc=L.lock_desc,
				get=function() return(self.db.profile.lock) end,
				set=function(x) self.db.profile.lock=x self:UpdateScreen() end
			},
			lockdown={
				type="toggle", order=98, name=L.lockdown, desc=L.lockdown_desc,
				get=function() return(self.db.profile.lockdown) end,
				set=function(x) self.db.profile.lockdown=x self:UpdateScreen() end
			},
			reset={
				type="execute", order=99, name=L.reset, desc=L.reset_desc,
				func=function() StaticPopup_Show("smmRESET") end
			}
		}
	}
	self:RegisterDB("smmConfig")
	self:RegisterDefaults("profile", self.defaults)
	self:RegisterChatCommand({"/simpleminimap", "/smm"}, self.options)
	StaticPopupDialogs["smmRESET"] = {
		text = L.reset_popup, button1 = TEXT(ACCEPT), button2 = TEXT(CANCEL),
		timeout = 30, whileDead = 1, hideOnEscape = 1,
		OnAccept = function()
			self:ResetDB("profile")
			self:UpdateScreen()
		end
	}
end
--
function simpleMinimap:OnEnable()
	if(not self.frame) then
		local f = CreateFrame("Frame", nil, Minimap)
		f:SetWidth(112)
		f:SetHeight(112)
		f:SetPoint("CENTER", self.frame)
		f:SetToplevel(true)
		f:EnableMouseWheel(true)
		f:SetScript("OnMouseWheel", function()
			if(arg1>0) then
				Minimap_ZoomIn()
			else
				Minimap_ZoomOut()
			end
		end)
		self.frame = f
	end
	MinimapCluster:SetMovable(true)
	Minimap:RegisterForDrag("LeftButton")
	Minimap:SetScript("OnDragStart", function() self:MapDrag(true) end)
	Minimap:SetScript("OnDragStop", function() self:MapDrag(false) end)
	MinimapZoneTextButton:RegisterForDrag("LeftButton")
	MinimapZoneTextButton:SetScript("OnDragStart", function() self:MapDrag(true) end)
	MinimapZoneTextButton:SetScript("OnDragStop", function() self:MapDrag(false) end)
	for _, f in pairs(self.buttons) do
		f:SetMovable(true)
		f:RegisterForDrag("LeftButton")
		f:SetScript("OnDragStart", function() self:ButtonDrag(true) end)
		f:SetScript("OnDragStop", function() self:ButtonDrag(false) end)
	end
	self:RegisterEvent("MINIMAP_UPDATE_ZOOM")
	for n in self:IterateModules() do self:ToggleModuleActive(self:GetModule(n), true) end
	self:UpdateScreen()
end
--
function simpleMinimap:OnDisable()
	for n in self:IterateModules() do self:ToggleModuleActive(self:GetModule(n), false) end
	self.doReset = true
	self:UpdateScreen()
	MinimapCluster:SetMovable(false)
	Minimap:RegisterForDrag(nil)
	MinimapZoneTextButton:RegisterForDrag(nil)
	for _, f in pairs(self.buttons) do
		f:SetMovable(false)
		f:RegisterForDrag(nil)
	end
end
--
function simpleMinimap:Debug(text)
	if(ChatFrame2 and text) then ChatFrame2:AddMessage(text, 0, 0.8, 1.0) end
end


--[[ events ]]--
--
function simpleMinimap:MINIMAP_UPDATE_ZOOM()
	local z = Minimap:GetZoom()
	if (GetCVar("minimapZoom") == GetCVar("minimapInsideZoom")) then
		if (z < 3) then
			Minimap:SetZoom(z + 1)
		else
			Minimap:SetZoom(z - 1)
		end
	else
		z = nil
	end
	if (tonumber(GetCVar("minimapInsideZoom")) == Minimap:GetZoom()) then
		self.inside = true
		self:Lockdown(MinimapCluster, "SetAlpha", 1)
	else
		self.inside = false
		self:Lockdown(MinimapCluster, "SetAlpha", self.db.profile.alpha)
	end
	if(z) then Minimap:SetZoom(z) end
end


--[[ frame events ]]--
--
function simpleMinimap:ExpandMinimap(keystate)
	local function swapZoom(frame)
		local z = frame:GetZoom()
		if (z>0) then frame:SetZoom(0) else frame:SetZoom(1) end
		frame:SetZoom(z)
	end
	if (not self.expandedFrame) then
		local f = CreateFrame("Minimap", nil, UIParent)
		f:SetHeight(UIParent:GetHeight() * 0.6)
		f:SetWidth(f:GetHeight())
		f:SetPoint("CENTER", self.frame)
		f:SetFrameStrata("TOOLTIP")
		f:EnableMouse(false)
		f:EnableMouseWheel(false)
		f:EnableKeyboard(false)
		self.expandedFrame = f
	end
	if (keystate == "down") then
		MinimapCluster:Hide()
		self.expandedFrame:Show()
		swapZoom(self.expandedFrame)
	else
		self.expandedFrame:Hide()
		MinimapCluster:Show()
		swapZoom(Minimap)
	end
end
--
function simpleMinimap:MapDrag(kick)
	if(kick and not self.db.profile.lock) then
		MinimapCluster.isMoving = true
		MinimapCluster:StartMoving()
	elseif(MinimapCluster.isMoving) then
		MinimapCluster.isMoving = false
		MinimapCluster:StopMovingOrSizing()
		self.db.profile.mapPosition = { MinimapCluster:GetCenter() }
	end
end
--
function simpleMinimap:ButtonDrag(kick)
	local function getPos()
		local cx, cy = GetCursorPosition(UIParent)
		local mx, my = Minimap:GetLeft(), Minimap:GetBottom()
		local z = Minimap:GetEffectiveScale()
		return math.deg(math.atan2(cy / z - my - 70, mx - cx / z + 70))
	end
	if(kick and not self.db.profile.lock) then
		this.isMoving = true
		this:SetScript("OnUpdate", function()
			this:ClearAllPoints()
			this:SetPoint("TOPLEFT", Minimap, "TOPLEFT", self:GetButtonPos(getPos()))
		end)
		this:StartMoving()
	elseif(this.isMoving) then
		this.isMoving = false
		this:StopMovingOrSizing()
		this:SetScript("OnUpdate", nil)
		for n, f in pairs(self.buttons) do
			if(f == this) then self.db.profile.buttonPos[n] = getPos() break end
		end
	end
end


--[[ screen updates ]]--
--
function simpleMinimap:UpdateScreen()
	local p = self.db.profile
	if(not self:IsActive()) then
		if(self.doReset) then
			p = self.defaults
			self.doReset = nil
		else
			return
		end
	end
-- set minimap
	self:Lockdown(MinimapCluster, "SetScale", p.scale)
	self:Lockdown(MinimapCluster, "SetFrameStrata", self.stratas[p.strata])
	self:Lockdown(MinimapCluster, "SetAlpha", p.alpha)
	self:Lockdown(MinimapCluster, "ClearAllPoints")
	if(p.mapPosition) then
		self:Lockdown(MinimapCluster, "SetPoint", "CENTER", UIParent, "BOTTOMLEFT", p.mapPosition[1], p.mapPosition[2])
	else
		self:Lockdown(MinimapCluster, "SetPoint", "TOPRIGHT", UIParent)
	end
-- set minimap location bar
	if(p.locationShow) then
		self:Lockdown(MinimapToggleButton, "Show")
		self:Lockdown(MinimapBorderTop, "Show")
		self:Lockdown(MinimapZoneTextButton, "Show")
	else
		self:Lockdown(MinimapToggleButton, "Hide")
		self:Lockdown(MinimapBorderTop, "Hide")
		if(p.locationText) then
			self:Lockdown(MinimapZoneTextButton, "Show")
		else
			self:Lockdown(MinimapZoneTextButton, "Hide")
		end
	end
-- set minimap buttons
	for n, f in pairs(self.buttons) do
		if(n == "zoomin" or n=="zoomout") then
			if(p.show.zoom) then
				f:Show()
			else
				f:Hide()
			end
		else
			if(not p.show[n]) then
				if(not f.smmHide) then
					f.smmHide = f.Hide
					f.smmShow = f.Show
					if(f:IsShown()) then f.smmDoShow = true end
					f.Hide = function() this.smmDoShow = nil end
					f.Show = function() this.smmDoShow = true end
				end
				f:smmHide()
			elseif(f.smmHide) then
				f.Hide = f.smmHide
				f.Show = f.smmShow
				f.smmHide, f.smmShow = nil, nil
				if(f.smmDoShow) then
					f.smmDoShow = nil
					f:Show()
				end
			end
		end
		self:Lockdown(f, "ClearAllPoints")
		self:Lockdown(f, "SetPoint", "TOPLEFT", Minimap, "TOPLEFT", self:GetButtonPos(p.buttonPos[n]))
	end
-- let any modules update the screen also
	for n in self:IterateModules() do self:GetModule(n):UpdateScreen() end
end


--[[ internal functions ]]--
--
function simpleMinimap:Lockdown(frame, method, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	if(self:IsActive() and self.db.profile.lockdown) then
		if(not frame["smm"..method]) then
			frame["smm"..method] = frame[method]
			frame[method] = function() end
		end
		return frame["smm"..method](frame, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	else
		if(frame["smm"..method]) then
			frame[method] = frame["smm"..method]
			frame["smm"..method] = nil
		end
		return frame[method](frame, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	end
end
--
function simpleMinimap:GetButtonPos(vector)
	return 52 - 81 * cos(vector), 81 * sin(vector) - 54
end


--[[ module stuff ]]--
--
function simpleMinimap.modulePrototype:UpdateScreen() end