local mod = simpleMinimap:NewModule("pings", "AceEvent-2.0")
local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap_pings")
L:RegisterTranslations("enUS", function() return({
	enabled = true,
	enabled_desc = "enable / disable pinger name popup",
	alpha = true,
	alpha_desc = "set ping name frame alpha",
	pings = true,
	pings_desc = "pinger name popup frame",
	position = true,
	position_desc = "position of pinger name popup frame on the minimap",
	scale = true,
	scale_desc = "set ping name frame scale",
	position1 = "bottom inside",
	position1_desc = "bottom of the minimap, inside the frame",
	position2 ="bottom outside",
	position2_desc = "bottom of the minimap, outside the frame",
	position3 = "top inside",
	position3_desc = "top of the minimap, inside the frame",
	position4 ="top outside",
	position4_desc = "top of the minimap, outside the frame",
	ping_by = "ping by"
}) end)

L:RegisterTranslations("zhTW", function() return({
	alpha = "透明度", 
	alpha_desc = "設置標記者名字框體的透明度", 
	pings = "標記", 
	pings_desc = "標記者名字框體", 
	position = "位置", 
	position_desc = "座標框體在迷你地圖裏的位置", 
	scale = "尺度", 
	scale_desc = "設置標記者名字框體的尺度", 
	position1 = "內部底端", 
	position1_desc = "迷你地圖的底端, 在框體內部", 
	position2 = "外部底端", 
	position2_desc = "迷你地圖的底端, 在框體外部", 
	position3 = "內部頂端", 
	position3_desc = "迷你地圖的頂端, 在框體內部", 
	position4 = "外部頂端", 
	position4_desc = "迷你地圖的頂端, 在框體外部", 
	ping_by = "標記於" 
}) end)

L:RegisterTranslations("koKR", function() return({
	enabled = "켜기",
	enabled_desc = "지정자 이름 팝업 켜기 / 끄기",
	alpha = "투명도",
	alpha_desc = "지정 이름 프레임 투명도 설정",
	pings = "지정",
	pings_desc = "지정자 이름 팝업 프레임",
	position = "위치",
	position_desc = "미니맴에 지정자 프레임의 위치",
	scale = "크기",
	scale_desc = "지정 이름 프레임 크기 설정",
	position1 = "내부 하단",
	position1_desc = "미니맵의 하단, 프레임 내부",
	position2 ="외부 하단",
	position2_desc = "미니맵의 하단, 프레임 외부",
	position3 = "내부 상단",
	position3_desc = "미니맵의 상단, 프레임 내부",
	position4 ="외부 상단",
	position4_desc = "미니맵의 상단, 프레임 외부",
	ping_by = "지정 : "
}) end)

L:RegisterTranslations("deDE", function() return({
	enabled = "aktiviert",
	enabled_desc = "aktiviert / deaktiviert das pingnamen popupfenster",
	alpha = "Helligkeit",
	alpha_desc = "Stellt die Helligkeit des Pingfensters ein",
	pings = "Pings",
	pings_desc = "Fenster das die Namen der Spieler anzeigt, die auf der Minimap pingen",
	position = "Position",
	position_desc = "Position des Fensters auf der Minimap",
	scale = "Größenverhältnis",
	scale_desc = "Stellt das Größenverhältnis des Fensters ein",
	position1 = "Unten innen",
	position1_desc = "Unten auf der Minimap, innerhalb des Fensters",
	position2 ="Oben außerhalb",
	position2_desc = "Unten auf der Minimap, außerhalb des Fensters",
	position3 = "Oben innen",
	position3_desc = "Oben auf der Minimap, innerhalb des Fensters",
	position4 ="Oben außerhalb",
	position4_desc = "Oben auf der Minimap, außerhalb des Fensters",
	ping_by = "Gepingt von: "
}) end)

L:RegisterTranslations("zhCN", function() return({
	alpha = "透明度", 
	alpha_desc = "设置标记者名字框体的透明度", 
	pings = "标记", 
	pings_desc = "标记者名字框体", 
	position = "位置", 
	position_desc = "坐标框体在迷你地图里的位置", 
	scale = "尺度", 
	scale_desc = "设置标记者名字框体的尺度", 
	position1 = "内部底端", 
	position1_desc = "迷你地图的底端, 在框体内部", 
	position2 = "外部底端", 
	position2_desc = "迷你地图的底端, 在框体外部", 
	position3 = "内部顶端", 
	position3_desc = "迷你地图的顶端, 在框体内部", 
	position4 = "外部顶端", 
	position4_desc = "迷你地图的顶端, 在框体外部", 
	ping_by = "标记于" 
}) end)

L:RegisterTranslations("esES", function() return({
	alpha = "Transparencia",
	alpha_desc = "Establece la transparencia del marco de ping",
	pings = "Pings",
	pings_desc = "Marco del nombre del que activ\195\179 el ping",
	position = "Posici\195\179n",
	position_desc = "Posici\195\179n en el minimapa de la visualizaci\195\179n del nombre del que activ\195\179 el ping",
	scale = "Escala",
	scale_desc = "Establece la escala del nombre del ping",
	position1 = "Abajo dentro",
	position1_desc = "Abajo en el minimapa, dentro del marco",
	position2 ="Abajo fuera",
	position2_desc = "Abajo en el minimapa, fuera del marco",
	position3 = "Arriba dentro",
	position3_desc = "Arriba en el minimapa, dentro del marco",
	position4 ="Arriba fuera",
	position4_desc = "Arriba en el minimapa, fuera del marco",
	ping_by = "ping por"
}) end)

L:RegisterTranslations("ruRU", function() return({
	enabled = "Включено",
	enabled_desc = "Вкл./Выкл. имя пингера",
	alpha = "Прозрачность",
	alpha_desc = "Установить прозрачность фрейма имени пинга",
	pings = "Пинг",
	pings_desc = "Имя пингера во всплывающем окне",
	position = "Позиция",
	position_desc = "Позиция всплывающего окна имени пингера на мини-карте",
	scale = "Масштаб",
	scale_desc = "Установить масштаб фреймов имени пингера",
	position1 = "В нижней части-внутри",
	position1_desc = "В нижней части мини-карты, внутри фрейма мини-карты",
	position2 ="В нижней части-снаружи",
	position2_desc = "В нижней части мини-карты, снаружи фрейма мини-карты",
	position3 = "В верхней части-внутри",
	position3_desc = "В верхней части мини-карты, внутри фрейма мини-карты",
	position4 = "В верхней части-снаружи",
	position4_desc = "В верхней части мини-карты, снаружи фрейма мини-карты",
	ping_by = "Пинг"
}) end)
--
function mod:OnInitialize()
	self.db = simpleMinimap:AcquireDBNamespace("pings")
	self.positions = {
		{ "BOTTOM", "BOTTOM" },
		{ "TOP", "BOTTOM" },
		{ "TOP", "TOP" },
		{ "BOTTOM", "TOP" }
	}
	self.defaults = { enabled=true, position=3, alpha=0.9, scale=0.85 }
	self.options = {
		type="group", order=80, name=L.pings, desc=L.pings_desc,
		args={
			title = {
				type="header", order=1, name="simpleMinimap |cFFFFFFCC"..L.pings
			},
			spacer1={
				type="header", order=2
			},
			enabled={
				type="toggle", order=3, name= L.enabled, desc=L.enabled_desc,
				get=function() return(self.db.profile.enabled) end,
				set=function(x) self.db.profile.enabled=x simpleMinimap:ToggleModuleActive(self, x) end
			},
			spacer2={
				type="header", order=4, name="---"
			},
			alpha={
				type="range", order=10, name=L.alpha, desc=L.alpha_desc,
				min=0, max=1, step=0.05, isPercent=true,
				get=function() return(self.db.profile.alpha) end,
				set=function(x) self.db.profile.alpha=x self:UpdateScreen() end
			},
			position = {
				type="group", order=11, name=L.position, desc=L.position_desc,
				args = {
					["1"]={
						type= "toggle", order=1, name=L.position1, desc=L.position1_desc,
						get=function() return(self.db.profile.position==1) end,
						set=function() self.db.profile.position=1 self:UpdateScreen() end
					},
					["2"]={
						type="toggle", order=2, name=L.position2, desc=L.position2_desc,
						get=function() return(self.db.profile.position==2) end,
						set=function() self.db.profile.position=2 self:UpdateScreen() end
					},
					["3"]={
						type= "toggle", order=3, name=L.position3, desc=L.position3_desc,
						get=function() return(self.db.profile.position==3) end,
						set=function() self.db.profile.position=3 self:UpdateScreen() end
					},
					["4"]={
						type="toggle", order=4, name=L.position4, desc=L.position4_desc,
						get=function() return(self.db.profile.position==4) end,
						set=function() self.db.profile.position=4 self:UpdateScreen() end
					}
				}
			},
			scale={
				type= "range", order=12, name=L.scale, desc=L.scale_desc,
				min=0.5, max=2, step=0.05,
				get=function() return(self.db.profile.scale) end,
				set=function(x) self.db.profile.scale=x self:UpdateScreen() end
			}
		}
	}
	simpleMinimap.options.args.pings = self.options
	simpleMinimap:RegisterDefaults("pings", "profile", self.defaults)
end
--
function mod:OnEnable()
	if(self.db.profile.enabled) then
		if(not self.frame) then
			local f = CreateFrame("Frame", nil, MiniMapPing)
			f:SetFrameStrata("TOOLTIP")
			f:SetBackdrop({
				bgFile="Interface\\Tooltips\\UI-Tooltip-Background",
				edgeFile="Interface\\Tooltips\\UI-Tooltip-Border",
				tile="true", tileSize=16, edgeSize=16,
				insets={ left=5, right=5, top=5, bottom=5 }})
			f:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b)
			f:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b)
			f:SetScale(self.db.profile.scale)
			f:SetAlpha(self.db.profile.alpha)
			t = f:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
			t:SetPoint("CENTER", f)
			self.frame = f
			self.frameText = t
		end
		self:RegisterEvent("MINIMAP_PING")
		else
		simpleMinimap:ToggleModuleActive(self, false)
	end
end
--
function mod:OnDisable()
end
--
function mod:UpdateScreen()
	local f = self.frame
	if(f) then
		f:ClearAllPoints()
		f:SetPoint(self.positions[self.db.profile.position][1], "Minimap", self.positions[self.db.profile.position][2])
		f:SetScale(self.db.profile.scale)
		f:SetAlpha(self.db.profile.alpha)
	end
end
--
function mod:MINIMAP_PING()
	local f = self.frame
	local t = self.frameText
	if(not UnitIsUnit(arg1, "player")) then
		t:SetText(L.ping_by.." |cFFFFFFCC"..UnitName(arg1))
		f:SetWidth(self.frameText:GetWidth() + 16)
		f:SetHeight(self.frameText:GetHeight() + 12)
		f:Show()
	else
		f:Hide()
	end
end
