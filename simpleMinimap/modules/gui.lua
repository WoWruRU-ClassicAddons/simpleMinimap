local mod = simpleMinimap:NewModule("gui")
local D = AceLibrary("Dewdrop-2.0")
local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap_gui")

L:RegisterTranslations("enUS", function() return({
	enabled = true,
	enabled_desc = "enable / disable GUI options",
	gui = "GUI",
	gui_desc = "dropdown menu options",
	mouse = "mouse button",
	mouse_desc = "mouse button that activiates the dropdown menu"
}) end)

L:RegisterTranslations("zhTW", function() return({ 
	gui = "圖形使用介面", 
	gui_desc = "顯示下拉式選單", 
	mouse = "滑鼠按鈕", 
	mouse_desc = "設定呼叫下拉式選單的滑鼠按鈕" 
}) end)

L:RegisterTranslations("koKR", function() return({
	enabled = "켬",
	enabled_desc = "GUI 설정 켜기 / 끄기",
	gui = "GUI",
	gui_desc = "메뉴 설정",
	mouse = "마우스 버튼",
	mouse_desc = "마우스 버튼으로 메뉴 열기"
}) end)

L:RegisterTranslations("deDE", function() return({
	enabled = "aktiviert",
	enabled_desc = "aktiviert / deaktiviert die GUI optionen",
	gui = "GUI",
	gui_desc = "Dropdownmenü Optionen",
	mouse = "Maustaste",
	mouse_desc = "Maustaste die das Dropdownmenü aktiviert"
}) end)

L:RegisterTranslations("zhCN", function() return({ 
	gui = "GUI", 
	gui_desc = "拖放菜单设置", 
	mouse = "鼠标按钮", 
	mouse_desc = "呼出拖放菜单的鼠标按钮" 
}) end)

L:RegisterTranslations("esES", function() return({
	gui = "Interfaz",
	gui_desc = "Opciones de men\195\186s desplegables",
	mouse = "Bot\195\179n del rat\195\179n",
	mouse_desc = "Bot\195\179n del rat\195\179n que activa el men\195\186 desplegable"
}) end)

L:RegisterTranslations("ruRU", function() return({
	enabled = "Включено",
	enabled_desc = "Вкл./Выкл. настройки GUI",
	gui = "GUI",
	gui_desc = "Контекстное меню настроек",
	mouse = "Кнопка мыши",
	mouse_desc = "Кнопка мыши приводящая в действие контекстное меню"
}) end)
--
function mod:OnInitialize()
	self.db = simpleMinimap:AcquireDBNamespace("gui")
	self.buttons = { "LeftButton", "MiddleButton", "RightButton", "Button4", "Button5" }
	self.defaults = { enabled = true, button = 3 }
	self.options = {
		type="group", order=80, name=L.gui, desc=L.gui_desc,
		args={
			title={
				type="header", order=1, name="simpleMinimap |cFFFFFFCC"..L.gui
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
				type="header", order=4, name = "---"
			},
			mouse={
				type="group", order=10, name=L.mouse, desc=L.mouse_desc,
				args = {
					["1"]={
						type= "toggle", order=1, name=self.buttons[1], desc=self.buttons[1],
						get=function() return(self.db.profile.button==1) end,
						set=function() self.db.profile.button=1 end
					},
					["2"]={
						type= "toggle", order=2, name=self.buttons[2], desc=self.buttons[2],
						get=function() return(self.db.profile.button==2) end,
						set=function() self.db.profile.button=2 end
					},
					["3"]={
						type= "toggle", order=3, name=self.buttons[3], desc=self.buttons[3],
						get=function() return(self.db.profile.button==3) end,
						set=function() self.db.profile.button=3 end
					},
					["4"]={
						type="toggle", order=4, name=self.buttons[4], desc=self.buttons[4],
						get=function() return(self.db.profile.button==4) end,
						set=function() self.db.profile.button=4 end
					},
					["5"]={
						type="toggle", order=5, name=self.buttons[5], desc=self.buttons[5],
						get=function() return(self.db.profile.button==5) end,
						set=function() self.db.profile.button=5 end
					}
				}
			}
		}
	}
	simpleMinimap.options.args.gui = self.options
	simpleMinimap:RegisterDefaults("gui", "profile", self.defaults)
end
--
function mod:OnEnable()
	if(self.db.profile.enabled) then
		Minimap:SetScript("OnMouseUp", function()
			if(arg1 == self.buttons[self.db.profile.button]) then
				D:Open(MinimapCluster)
			else
				return Minimap_OnClick()
			end
		end)
		D:Register(MinimapCluster,
			'children', function()
				D:FeedAceOptionsTable(simpleMinimap.options)
			end,
			'point', function(parent)
				if parent:GetTop() < GetScreenHeight() / 2 then
					return 'BOTTOM', 'TOP'
					else
					return 'TOP', 'BOTTOM'
				end
			end,
			'cursorX', true
		)
		else
		simpleMinimap:ToggleModuleActive(self, false)
	end
end
--
function mod:OnDisable()
	Minimap:SetScript("OnMouseUp", function() Minimap_OnClick() end)
	D:Close()
	D:Unregister(MinimapCluster)
end