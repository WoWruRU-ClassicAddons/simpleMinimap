local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap_Coords")

L:RegisterTranslations("enUS", function() return({
	enabled = "enabled",
	enabled_desc = "enable / disable minimap coordinates",
	alpha = true,
	alpha_desc = "set coordinates frame alpha",
	backdrop = true,
	backdrop_desc = "show or hide coords frame backdrop",
	border = true,
	border_desc = "show or hide coords frame border",
	coords = true,
	coords_desc = "minimap coordinates frame",
	fontColor = true,
	fontColor_desc = "change the coordinate font color",
	position = true,
	position_desc = "position of coordinates frame on the minimap",
	scale = true,
	scale_desc = "set minimap coordinates scale",
	time = true,
	time_desc = "delay, in seconds, between coordinate updates",
	position1 = "bottom inside",
	position2 ="bottom outside",
	position3 = "top inside",
	position4 ="top outside",
	position5 = "top left",
	position6 ="bottom left",
	position7 = "top right",
	position8 ="bottom right",
}) end)

L:RegisterTranslations("zhTW", function() return({
	alpha = "透明度",
	alpha_desc = "設置座標框體透明度",
	backdrop = "背景",
	backdrop_desc = "顯示或隱藏座標框體背景",
	border = "邊框",
	border_desc = "顯示或隱藏座標框體邊框",
	coords = "座標",
	coords_desc = "迷你地圖座標框體",
	fontColor = "字體顏色",
	fontColor_desc = "改變座標的字體顏色",
	position = "位置",
	position_desc = "座標框體位置",
	scale = "尺度",
	scale_desc = "設置迷你地圖座標的尺度大小",
	time = "刷新時間",
	time_desc = "座標更新的延遲秒數",
	position1 = "內部底端",
	position2 = "外部底端",
	position3 = "內部頂端",
	position4 = "外部頂端",
	position5 = "頂端左側",
	position6 = "底端左側",
	position7 = "頂端右側",
	position8 = "底端右側"
}) end)

L:RegisterTranslations("koKR", function() return({
	alpha = "투명도",
	alpha_desc = "좌표표시 프레임 투명도 설정",
	backdrop = "배경",
	backdrop_desc = "좌표 프레임 배경 표시 혹은 숨김",
	border = "테두리",
	border_desc = "좌표 프레임 테두리 표시 혹은 숨김",
	coords = "좌표표시",
	coords_desc = "미니맵 좌표표시 프레임",
	fontColor = "글꼴 색상",
	fontColor_desc = "좌표표시 글꼴 색상 변경",
	position = "위치",
	position_desc = "미니맵에 좌표표시의 위치",
	scale = "크기",
	scale_desc = "미니맵 좌표표시 크기 설정",
	time = "시간",
	time_desc = "지연시간, 초 단위, 좌표 갱싱 간격",
	position1 = "내부 하단",
	position2 = "외부 하단",
	position3 = "내부 상단",
	position4 = "외부 상단",
	position5 = "좌측 상단",
	position6 = "좌측 하단",
	position7 = "우측 상단",
	position8 = "우측 하단"
}) end)

L:RegisterTranslations("deDE", function() return({
	alpha = "Helligkeit",
	alpha_desc = "Stellt die Helligkeit des Fensters ein",
	backdrop = "Hintergrund",
	backdrop_desc = "Zeigt oder versteckt den Hintergrund",
	border = "Rahmen",
	border_desc = "Zeigt oder versteckt den Fensterrahmen",
	coords = "Koordinaten",
	coords_desc = "Minimap Koordinatenfenster",
	fontColor = "Schriftfarbe",
	fontColor_desc = "Ändert die Schriftfarbe der Koordinaten",
	position = "Position",
	position_desc = "Position des Koordinatenfensters an der Minimap",
	scale = "Größenverhältnis",
	scale_desc = "Stellt das Größenverhältnis des Fensters ein",
	time = "Intervall zwischen Aktualisierungen",
	time_desc = "Verzögerung (in Sekunden), zwischen den Aktualisierungen der Koordinaten",
	position1 = "Unten innen",
	position2 = "Unten außerhalb",
	position3 = "Oben innen",
	position4 = "Oben außerhalb",
	position5 = "Oben links",
	position6 = "Unten links",
	position7 = "Oben recht",
	position8 = "Unten rechts"
}) end)

L:RegisterTranslations("zhCN", function() return({
	alpha = "透明度",
	alpha_desc = "设置坐标框体的透明度",
	backdrop = "背景",
	backdrop_desc = "显示或隐藏坐标框体的背景",
	border = "边框",
	border_desc = "显示或隐藏坐标框体的边框",
	coords = "坐标",
	coords_desc = "迷你地图坐标框体",
	fontColor = "字体颜色",
	fontColor_desc = "改变坐标的字体颜色",
	position = "位置",
	position_desc = "坐标框体在迷你地图里的位置",
	scale = "尺度",
	scale_desc = "设置迷你地图坐标的尺度大小",
	time = "刷新时间",
	time_desc = "坐标刷新延迟，即两次坐标刷新之间的延迟（以秒为单位）",
	position1 = "内部底端",
	position2 = "外部底端",
	position3 = "内部顶端",
	position4 = "外部顶端",
	position5 = "顶端左侧",
	position6 = "底端左侧",
	position7 = "顶端右侧",
	position8 = "底端右侧"
}) end)

L:RegisterTranslations("esES", function() return({
	alpha = "Transparencia",
	alpha_desc = "Establece la transparencia del marco de coordenadas",
	backdrop = "Fondo",
	backdrop_desc = "Muestra u oculta el fondo del marco de coordenadas",
	border = "Borde",
	border_desc = "Muestra u oculta el borde del marco de coordenadas",
	coords = "Coordenadas",
	coords_desc = "Marco de coordenadas del minimapa",
	fontColor = "Color de fuente",
	fontColor_desc = "Cambia el color de la fuente de las coordenadas",
	position = "Posici\195\179n",
	position_desc = "Posici\195\179n del marco de coordenadas en el minimapa",
	scale = "Escala",
	scale_desc = "Establece la escala de las coordenadas del minimapa",
	time = "Tiempo",
	time_desc = "Retraso, en segundos, entre las actualizaciones de coordenadas",
	position1 = "abajo dentro",
	position2 = "abajo fuera",
	position3 = "arriba dentro",
	position4 = "arriba fuera",
	position5 = "superior izquierda",
	position6 = "inferior izquierda",
	position7 = "superior derecha",
	position8 = "inferior derecha"
}) end)

L:RegisterTranslations("ruRU", function() return({
	enabled = "Включено",
	enabled_desc = "Вкл./Выкл. координаты миникарты",
	alpha = "Прозрачность",
	alpha_desc = "Установить прозрачность фреймов координат",
	backdrop = "Фон",
	backdrop_desc = "Показать/Скрыть фон фрейма координат",
	border = "Рамка",
	border_desc = "Показать/Скрыть рамку фреймов координат",
	coords = "Координаты",
	coords_desc = "Фрейм координат у мини-карты",
	fontColor = "Цвет шрифта",
	fontColor_desc = "Изменить цвет шрифта координат",
	position = "Позиция",
	position_desc = "Позиция фрейма координат у мини-карты",
	scale = "Масштаб",
	scale_desc = "Установить масштаб координат у мини-карты",
	time = "Время",
	time_desc = "Задержка(в секундах) между обновлением координат",
	position1 = "Снизу внутри",
	position2 = "Снизу снаружи",
	position3 = "Сверху внутри",
	position4 = "Сверху снаружи",
	position5 = "Сверху слева",
	position6 = "Снизу слева",
	position7 = "Сверху справа",
	position8 = "Снизу справа"
}) end)

simpleMinimap_Coords = simpleMinimap:NewModule("coords")

function simpleMinimap_Coords:OnInitialize()
	self.db = simpleMinimap:AcquireDBNamespace("coords")
	self.positions = {
		{ "BOTTOM", "BOTTOM" },
		{ "TOP", "BOTTOM" },
		{ "TOP", "TOP" },
		{ "BOTTOM", "TOP" },
		{ "TOPLEFT", "TOPLEFT" },
		{ "BOTTOMLEFT", "BOTTOMLEFT" },
		{ "TOPRIGHT", "TOPRIGHT" },
		{ "BOTTOMRIGHT", "BOTTOMRIGHT" }
	}
	
	self.defaults = { enabled=true, position=6, backdrop=true, border=true, scale=0.9, alpha=0.8, fontR=0.8, fontG=0.8, fontB=0.6, time=1 }
	self.options = {
		type="group", name=L.coords, desc=L.coords_desc,
		args={
			title={
				type="header", order=1, name="simpleMinimap |cFFFFFFCC"..L.coords
			},
			spacer1={
				type="header", order=2
			},
			enabled={
				type="toggle", order=3, name=L.enabled, desc=L.enabled_desc,
				get=function() return(self.db.profile.enabled) end,
				set=function(x) self.db.profile.enabled=x simpleMinimap:ToggleModuleActive(self,x) end
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
			backdrop={
				type="toggle", order=11, name=L.backdrop, desc=L.backdrop_desc,
				get=function() return(self.db.profile.backdrop) end,
				set=function(x) self.db.profile.backdrop=x self:UpdateScreen() end
			},
			border={
				type="toggle", order=12, name=L.border, desc=L.border_desc,
				get=function() return(self.db.profile.border) end,
				set=function(x) self.db.profile.border=x self:UpdateScreen() end
			},
			fontColor={
				type="color", order=13, name=L.fontColor, desc=L.fontColor_desc,
				get = function() return self.db.profile.fontR, self.db.profile.fontG, self.db.profile.fontB end,
				set = function(r, g, b) self.db.profile.fontR=r self.db.profile.fontG=g self.db.profile.fontB=b self:UpdateScreen() end
			},
			position = {
				type="group", order=14, name=L.position, desc=L.position_desc,
				args = {
					["1"]={
						type="toggle", order=1, name=L.position1, desc=L.position1,
						get=function() return(self.db.profile.position==1) end,
						set=function() self.db.profile.position=1 self:UpdateScreen() end
					},
					["2"]={
						type="toggle", order=2, name=L.position2, desc=L.position2,
						get=function() return(self.db.profile.position==2) end,
						set=function() self.db.profile.position=2 self:UpdateScreen() end
					},
					["3"]={
						type="toggle", order=3, name=L.position3, desc=L.position3,
						get=function() return(self.db.profile.position==3) end,
						set=function() self.db.profile.position=3 self:UpdateScreen() end
					},
					["4"]={
						type="toggle", order=4, name=L.position4, desc=L.position4,
						get=function() return(self.db.profile.position==4) end,
						set=function() self.db.profile.position=4 self:UpdateScreen() end
					},
					["5"]={
						type="toggle", order=5, name=L.position5, desc=L.position5,
						get=function() return(self.db.profile.position==5) end,
						set=function() self.db.profile.position=5 self:UpdateScreen() end
					},
					["6"]={
						type="toggle", order=6, name=L.position6, desc=L.position6,
						get=function() return(self.db.profile.position==6) end,
						set=function() self.db.profile.position=6 self:UpdateScreen() end
					},
					["7"]={
						type="toggle", order=7, name = L.position7, desc = L.position7,
						get=function() return(self.db.profile.position==7) end,
						set=function() self.db.profile.position=7 self:UpdateScreen() end
					},
					["8"]={
						type="toggle", order=8, name=L.position8, desc=L.position8,
						get=function() return(self.db.profile.position==8) end,
						set=function() self.db.profile.position=8 self:UpdateScreen() end
					}
				}
			},
			scale={
				type="range", order=15, name=L.scale, desc=L.scale_desc,
				min=0.5, max=2, step=0.05,
				get=function() return(self.db.profile.scale) end,
				set=function(x) self.db.profile.scale=x self:UpdateScreen() end
			},
			time={
				type="range", order=16, name=L.time, desc=L.time_desc,
				min=0, max=5, step=1,
				get=function() return(self.db.profile.time) end,
				set=function(x) self.db.profile.time=x self:UpdateEvent() end
			},
		}
	}
	simpleMinimap.options.args.modules.args.coords = self.options
	simpleMinimap:RegisterDefaults("coords", "profile", self.defaults)
	smmCoordsFrameText:SetText("00, 00")
	smmCoordsFrame:SetWidth(smmCoordsFrameText:GetWidth() + 16)
	smmCoordsFrame:SetHeight(smmCoordsFrameText:GetHeight() + 12)
end
--
function simpleMinimap_Coords:OnEnable()
	if(self.db.profile.enabled) then
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		self:UpdateEvent()
		self:UpdateScreen()
	else
		simpleMinimap:ToggleModuleActive(self, false)
	end
end
--
function simpleMinimap_Coords:OnDisable()
	self:CancelAllScheduledEvents()
	smmCoordsFrame:SetScript("OnUpdate", nil)
	self:UpdateScreen()
end
--
function simpleMinimap_Coords:UpdateScreen()
	if(simpleMinimap:IsModuleActive(self)) then
		smmCoordsFrame:Show()
		smmCoordsFrame:ClearAllPoints()
		smmCoordsFrame:SetPoint(self.positions[self.db.profile.position][1], "Minimap", self.positions[self.db.profile.position][2])
		smmCoordsFrame:SetAlpha(self.db.profile.alpha)
		smmCoordsFrame:SetScale(self.db.profile.scale)
		smmCoordsFrameText:SetTextColor(self.db.profile.fontR, self.db.profile.fontG, self.db.profile.fontB)
		if(self.db.profile.backdrop) then
			smmCoordsFrame:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b, 1)
		else
			smmCoordsFrame:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b, 0)
		end
		if(self.db.profile.border) then
			smmCoordsFrame:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b, 1)
		else
			smmCoordsFrame:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b, 0)
		end
	else
		smmCoordsFrame:Hide()
	end
end
--
function simpleMinimap_Coords:UpdateEvent()
	if(self.db.profile.time > 0) then
		smmCoordsFrame:SetScript("OnUpdate", nil)
		self:ScheduleRepeatingEvent("smmCoordsUpdate", function()
			local x, y = GetPlayerMapPosition("player")
			smmCoordsFrameText:SetText(math.floor(x * 100)..", "..math.floor(y * 100))
		end, self.db.profile.time, self)
	else
		self:CancelAllScheduledEvents()
		smmCoordsFrame:SetScript("OnUpdate", function()
			local x, y = GetPlayerMapPosition("player")
			smmCoordsFrameText:SetText(math.floor(x * 100)..", "..math.floor(y * 100))
		end)
	end
end
--
function simpleMinimap_Coords:ZONE_CHANGED_NEW_AREA()
	SetMapToCurrentZone()
end