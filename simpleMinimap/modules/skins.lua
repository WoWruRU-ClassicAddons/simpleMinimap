local mod = simpleMinimap:NewModule("skins")
local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap_skins")

L:RegisterTranslations("enUS", function() return({
	enabled = true,
	enabled_desc = "enable / disable skin module",
	border = true,
	border_desc = "minimap border texture",
	skin = true,
	skin_desc = "minimap skin and shape",
	skins = true,
	skins_desc = "minimap skin and shape module",
	skin1 = "round (default)",
	skin2 = "square",
	skin3 = "thin square (dark)",
	skin4 = "thin square (light)",
	skin5 = "top right corner",
	skin6 = "top left corner",
	skin7 = "bottom left corner",
	skin8 = "bottom right corner",
}) end)

L:RegisterTranslations("zhTW", function() return({ 
	border = "邊框", 
	border_desc = "迷你地圖的邊框材質", 
	skin = "樣式", 
	skin_desc = "迷你地圖的外觀與形狀", 
	skins = "樣式集合", 
	skins_desc = "迷你地圖的外觀與形狀", 
	skin1 = "圓形 (默認)", 
	skin2 = "方形", 
	skin3 = "薄的方形 (暗)", 
	skin4 = "薄的方形 (亮)", 
	skin5 = "方形圓角-圓弧在左下方", 
	skin6 = "方形圓角-圓弧在右下方", 
	skin7 = "方形圓角-圓弧在右上方", 
	skin8 = "方形圓角-圓弧在左上方", 
}) end)

L:RegisterTranslations("koKR", function() return({
	enabled = "켬",
	enabled_desc = "스킨 모듈 켜기 / 끄기",
	border = "테두리",
	border_desc = "미니맵 테두리 텍스쳐",
	skin = "스킨",
	skin_desc = "미니맵 스킨과 외형",
	skins = "스킨들",
	skins_desc = "미니맵 스킨과 외형 모듈",
	skin1 = "둥근형 (기본값)",
	skin2 = "사각형",
	skin3 = "가는 사각형 (어두운)",
	skin4 = "가는 사각형 (밝은)",
	skin5 = "우측 상단 모서리",
	skin6 = "좌측 상단 모서리",
	skin7 = "좌측 하단 모서리",
	skin8 = "우측 하단 모서리"
}) end)

L:RegisterTranslations("deDE", function() return({
	enabled = "aktiviert",
	enabled_desc = "aktiviert / deaktiviert das skin modul",
	border = "Rand",
	border_desc = "Randtextur",
	skin = "Skin",
	skin_desc = "Skin und Form",
	skins = "Skins",
	skins_desc = "Modul für Minimap Skins und Formen",
	skin1 = "Rund (Vorgabe)",
	skin2 = "Quadrat",
	skin3 = "Dünnes Quadrat (dunkel)",
	skin4 = "Dünnes Quadrat (hell)",
	skin5 = "Ecke oben rechts",
	skin6 = "Ecke oben links",
	skin7 = "Ecke unten links",
	skin8 = "Ecke unten rechts"
}) end)

L:RegisterTranslations("zhCN", function() return({ 
	border = "边框", 
	border_desc = "迷你地图的边框材质", 
	skin = "皮肤", 
	skin_desc = "迷你地图的皮肤与外形", 
	skins = "皮肤集合", 
	skins_desc = "迷你地图的皮肤与外形单元", 
	skin1 = "圆形 (默认)", 
	skin2 = "方形", 
	skin3 = "薄的方形 (暗)", 
	skin4 = "薄的方形 (亮)", 
	skin5 = "方形圆角-圆弧在左下方", 
	skin6 = "方形圆角-圆弧在右下方", 
	skin7 = "方形圆角-圆弧在右上方", 
	skin8 = "方形圆角-圆弧在左上方", 
}) end)

L:RegisterTranslations("esES", function() return({
	border = "Borde",
	border_desc = "Textura del borde del minimapa",
	skin = "Skin",
	skin_desc = "Skin y forma del minimapa",
	skins = "Skins",
	skins_desc = "M\195\179dulo de skin y forma del minimapa",
	skin1 = "circular (por defecto)",
	skin2 = "cuadrado",
	skin3 = "cuadrado fino (oscuro)",
	skin4 = "cuadrado fino (claro)",
	skin5 = "esquina superior derecha",
	skin6 = "esquina superior izquierda",
	skin7 = "esquina inferior izquierda",
	skin8 = "esquina inferior derecha"
}) end)

L:RegisterTranslations("ruRU", function() return({
	enabled = "Включено",
	enabled_desc = "Вкл./Выкл. модуль шкурки",
	border = "Текстура рамки",
	border_desc = "Текстура рамки мини-карты",
	skin = "Шкурка",
	skin_desc = "Шкурка и вид мини-карты",
	skins = "Шкурка",
	skins_desc = "Модуль шкурки и вида мини-карты",
	skin1 = "Круг (По умолчанию)",
	skin2 = "Квадрат",
	skin3 = "Тонкий квадрат (темный)",
	skin4 = "Тонкий квадрат (светлый)",
	skin5 = "Верхний правый угол",
	skin6 = "Верхний левый угол",
	skin7 = "Нижний левый угол",
	skin8 = "Нижний правый угол"
}) end)

function mod:OnInitialize()
	self.db = simpleMinimap:AcquireDBNamespace("skins")
	self.skins = {
		{
			shape="ROUND",
			texture="Interface\\Minimap\\UI-Minimap-Border",
			mask="Textures\\MinimapMask"
			},{
			shape="SQUARE",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\SquareMinimap",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\smmSquareMask"
			},{
			shape="SQUARE",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\smmSkin",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\smmSquareMask"
			},{
			shape="SQUARE",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\thinSquare2",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\smmSquareMask"
			},{
			shape="CORNER-BOTTOMLEFT",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\dLxTopRight",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\dLxTopRightMask"
			},{
			shape="CORNER-BOTTOMRIGHT",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\dLxTopLeft",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\dLxTopLeftMask"
			},{
			shape="CORNER-TOPRIGHT",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\dLxBottomLeft",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\dLxBottomLeftMask"
			},{
			shape="CORNER-TOPLEFT",
			texture="Interface\\AddOns\\simpleMinimap\\skins\\dLxBottomRight",
			mask="Interface\\AddOns\\simpleMinimap\\skins\\dLxBottomRightMask"
		}
	}
	self.defaults = { enabled=true, skin=1, border=true }
	self.options = {
		type="group", order=80, name=L.skins, desc=L.skins_desc,
		args={
			title={
				type="header", order=1, name="simpleMinimap |cFFFFFFCC"..L.skins
			},
			spacer1={
				type="header", order=2
			},
			enabled={
				type="toggle", order=3, name=L.enabled, desc=L.enabled_desc,
				get=function() return(self.db.profile.enabled) end,
				set=function(x) self.db.profile.enabled=x simpleMinimap:ToggleModuleActive(self, x) end
			},
			spacer2={
				type="header", order=4, name="---"
			},
			border={
				type="toggle", order=10, name=L.border, desc=L.border_desc,
				get=function() return(self.db.profile.border) end,
				set=function(x) self.db.profile.border=x self:OnEnable() end
			},
			skin={
				type="group", order=10, name=L.skin, desc=L.skin_desc,
				args={
					["1"]={
						type="toggle", order=1, name="1. "..L.skin1, desc=L.skin1,
						get=function() return(self.db.profile.skin==1) end,
						set=function() self.db.profile.skin=1 self:OnEnable() end
					},
					["2"]={
						type="toggle", order=2, name="2. "..L.skin2, desc=L.skin2,
						get=function() return(self.db.profile.skin==2) end,
						set=function() self.db.profile.skin=2 self:OnEnable() end
					},
					["3"]={
						type="toggle", order=3, name = "3. "..L.skin3, desc = L.skin3,
						get=function() return(self.db.profile.skin==3) end,
						set=function() self.db.profile.skin=3 self:OnEnable() end
					},
					["4"]={
						type="toggle", order=4, name="4. "..L.skin4, desc=L.skin4,
						get=function() return(self.db.profile.skin==4) end,
						set=function() self.db.profile.skin=4 self:OnEnable() end
					},
					["5"]={
						type="toggle", order=5, name="5. "..L.skin5, desc=L.skin5,
						get=function() return(self.db.profile.skin==5) end,
						set=function() self.db.profile.skin=5 self:OnEnable() end
					},
					["6"]={
						type="toggle", order=6, name="6. "..L.skin6, desc=L.skin6,
						get=function() return(self.db.profile.skin==6) end,
						set=function() self.db.profile.skin=6 self:OnEnable() end
					},
					["7"]={
						type="toggle", order=7, name="7. "..L.skin7, desc=L.skin7,
						get=function() return(self.db.profile.skin==7) end,
						set=function() self.db.profile.skin=7 self:OnEnable() end
					},
					["8"]={
						type="toggle", order=8, name="8. "..L.skin8, desc=L.skin8,
						get=function() return(self.db.profile.skin==8) end,
						set=function() self.db.profile.skin=8 self:OnEnable() end
					}
				}
			}
		}
	}
	simpleMinimap.options.args.skins = self.options
	simpleMinimap:RegisterDefaults("skins", "profile", self.defaults)
end
--
function mod:OnEnable()
	if(self.db.profile.enabled) then
		simpleMinimap.GetButtonPos = function(this, vector)
			local q, x, y = vector, 0, 0
			if (q < 0) then
				q = 360 + q
			end
			q = floor(q / 90) + 1
			if(this:IsModuleActive(self) and self:GetShape(q) == "square") then
				x = math.max(-81, math.min(110 * cos(vector), 81))
				y = math.max(-81, math.min(110 * sin(vector), 81))
			else
				x = 81 * cos(vector)
				y = 81 * sin(vector)
			end
			return 52 - x, y - 54
		end
		simpleMinimap:UpdateScreen()
		else
		simpleMinimap:ToggleModuleActive(self, false)
	end
end
--
function mod:OnDisable()
	self:UpdateScreen()
end
--
function mod:UpdateScreen()
	local p = self.db.profile
	if(simpleMinimap:IsModuleActive(self)) then
		if(p.border) then
			MinimapBorder:SetTexture(self.skins[p.skin]["texture"])
		else
			MinimapBorder:SetTexture(nil)
		end
		Minimap:SetMaskTexture(self.skins[p.skin]["mask"])
		Minimap.smmSkinned = true
	elseif(Minimap.smmSkinned) then
		MinimapBorder:SetTexture("Interface\\Minimap\\UI-Minimap-Border")
		Minimap:SetMaskTexture("Textures\\MinimapMask")
		Minimap.smmSkinned = nil
	end	
end
--
function mod:GetShape(quad)
	if(simpleMinimap:IsModuleActive(self)) then
		local p = self.db.profile
		if(quad and self.skins[p.skin]["quads"]) then
			return self.skins[p.skin]["quads"][quad] or self.skins[p.skin]["shape"]
		end
		return self.skins[p.skin]["shape"]
	end
end