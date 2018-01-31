local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap_Autozoom")

L:RegisterTranslations("enUS", function() return({
	enabled = "enabled",
	enabled_desc = "enable / disable auto zoom-out function",
	autozoom = "autozoom",
	autozoom_desc = "auto zoom-out minimap after specified time",
	time = "time",
	time_desc = "delay, in seconds, before auto zoom-out"
}) end)

L:RegisterTranslations("zhTW", function() return({ 
	autozoom = "自動縮放", 
	autozoom_desc = "在指定時間內自動縮放迷你地圖", 
	time = "時間", 
	time_desc = "在自動縮放前的延遲秒數" 
}) end)

L:RegisterTranslations("koKR", function() return({
	autozoom = "자동 줌",
	autozoom_desc = "지정 시간 후 미니맵 자동 줌-아웃",
	time = "시간",
	time_desc = "지연시간, 초 단위, 자동 줌-아웃 이전"
}) end)

L:RegisterTranslations("deDE", function() return({
	autozoom = "Autozoom",
	autozoom_desc = "Die Minimap automatisch nach der eingestellten Zeit herauszoomen",
	time = "Zeit",
	time_desc = "Verzögerung (in Sekunden), bis das automatische Herauszoomen aktiv wird"
}) end)

L:RegisterTranslations("zhCN", function() return({ 
	autozoom = "自动缩放", 
	autozoom_desc = "在规定时间内自动缩放迷你地图", 
	time = "时刻", 
	time_desc = "延迟, 在短时间内, 在自动缩放之前" 
}) end)

L:RegisterTranslations("esES", function() return({
	autozoom = "Auto-alejar",
	autozoom_desc = "Auto aleja la vista del minimapa tras un tiempo espec\195\173fico",
	time = "Tiempo",
	time_desc = "Retraso, en segundos, tras el que se aleja la vista"
}) end)

L:RegisterTranslations("ruRU", function() return({
	enabled = "Включено",
	enabled_desc = "Вкл./Выкл. функцию автоматического масштабирования",
	autozoom = "Авто-изменение масштаба",
	autozoom_desc = "Авто-уменьшение масштаба мини-карты через заданное время",
	time = "Время",
	time_desc = "Задержка(в секундах) перед изменением масштаба"
}) end)
--
simpleMinimap_Autozoom = simpleMinimap:NewModule("autozoom")

function simpleMinimap_Autozoom:OnInitialize()
	self.db = simpleMinimap:AcquireDBNamespace("autozoom")
	self.defaults = { enabled=true, time=20 }
	self.options = {
		type = "group", name=L.autozoom, desc=L.autozoom_desc,
		args = {
			title = {
				type="header", order=1, name="simpleMinimap |cFFFFFFCC"..L.autozoom
			},
			spacer1 = {
				type = "header", order=2
			},
			enabled = {
				type="toggle", order=3, name=L.enabled, desc=L.enabled_desc,
				get=function() return(self.db.profile.enabled) end,
				set=function(x) self.db.profile.enabled=x simpleMinimap:ToggleModuleActive(self,x) end
			},
			spacer2 = {
				type="header", order=4, name="---"
			},
			time = {
				type="range", order=10, name=L.time, desc=L.time_desc,
				min= 2, max=120, step=2,
				get=function() return(self.db.profile.time) end,
				set=function(x) self.db.profile.time=x end
			}
		}
	}
	simpleMinimap.options.args.modules.args.autozoom = self.options
	simpleMinimap:RegisterDefaults("autozoom", "profile", self.defaults)
end
--
function simpleMinimap_Autozoom:OnEnable()
	if(self.db.profile.enabled) then
		self:SecureHook("Minimap_ZoomIn")
		self:SecureHook("Minimap_ZoomOut")
		self:EventAutozoom()
	else
		simpleMinimap:ToggleModuleActive(self, false)
	end
end
--
function simpleMinimap_Autozoom:OnDisable()
	self:CancelAllScheduledEvents()
end
--
function simpleMinimap_Autozoom:EventAutozoom()
	Minimap:SetZoom(0)
	MinimapZoomOut:Disable()
	MinimapZoomIn:Enable()
end
--
function simpleMinimap_Autozoom:Minimap_ZoomIn()
	self:ScheduleEvent("smmAutozoom", self.EventAutozoom, self.db.profile.time, self)
	--	self.hooks.Minimap_ZoomIn()
end
--
function simpleMinimap_Autozoom:Minimap_ZoomOut()
	self:ScheduleEvent("smmAutozoom", self.EventAutozoom, self.db.profile.time, self)
	--	self.hooks.Minimap_ZoomOut()
end