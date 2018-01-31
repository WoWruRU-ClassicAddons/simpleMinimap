local L = AceLibrary("AceLocale-2.2"):new("simpleMinimap")
L:RegisterTranslations("enUS", function() return({
	alpha = "alpha",
	alpha_desc = "minimap alpha when outdoors",
	bgs = "battlegrounds",
	bgs_desc = "battlegrounds indicator",
	location = "location bar",
	location_desc = "location display bar",
	locationText = "location bar text",
	locationText_desc = "zone location text when bar is hidden",
	lock = "lock minimap",
	lock_desc = "lock minimap movement and hide movers",
	mail = "mail indicator",
	mail_desc = "unread mail indicator",
	meet = "meeting stone",
	meet_desc = "meeting stone indicator",
	modules = "modules",
	modules_desc = "installed module options",
	reset = "reset profile",
	reset_desc = "reset current profile to defaults",
	scale = "scale",
	scale_desc = "set minimap cluster scale",
	show = "show / hide",
	show_desc = "show and hide minimap / UI elements",
	strata = "strata",
	strata_desc = "changes how the frame is overlayed on others",
	time = "time indicator",
	time_desc = "day / night indicator",
	track = "track button",
	track_desc = "tracking indicator",
	zoom = "zoom in / out",
	zoom_desc = "zoon in / out buttons",
	reset_popup = "Reset this simpleMinimap profile to defaults?"
}) end)
BINDING_HEADER_smmTITLE = "simpleMinimap"
BINDING_NAME_smmTOGGLE = "Toggle Minimap"

L:RegisterTranslations("koKR", function() return({
	alpha = "투명도",
	alpha_desc = "야외일 때 미니맵 투명도",
	bgs = "전장",
	bgs_desc = "전장 인디케이터",
	location = "지역 바",
	location_desc = "지역 표시 바 설정",
	locationText = "지역 바 글자",
	locationText_desc = "바를 숨길시 지역 글자를 표시합니다.",
	lock = "미니맵 고정",
	lock_desc = "미니맵 움직임 고정 / 앵커 숨김",
	mail = "우편 인디케이터",
	mail_desc = "읽지 않은 우편 인디케이터",
	meet = "파티찾기 인디케이터", -- check
	meet_desc = "파티찾기 인디케이터", -- check
	modules = "모듈",
	modules_desc = "installed module options", -- need translate
	reset = "프로파일 초기화",
	reset_desc = "현재 프로파일을 초기값으로 초기화",
	scale = "크기",
	scale_desc = "미니맵 클러스터 크기 설정",
	show = "표시 / 숨김",
	show_desc = "미니맵 / UI 구성요소 표시와 숨김 ",
	strata = "계층",
	strata_desc = "창의 오버레이 순위 변경",
	time = "time indicator", -- need translate
	time_desc = "day / night indicator", -- need translate
	track = "추적 버튼",
	track_desc = "사냥꾼 / 채집 추적 인디케이터",
	zoom = "줌 인 / 아웃",
	zoom_desc = "줌 인 / 아웃 버튼",
	reset_popup = "simpleMinimap 프로파일을 초기값으로 초기화 하시겠습니까?"
}) end)
if GetLocale() == "koKR" then
	BINDING_NAME_smmTOGGLE = "미니맵 토글"
end

L:RegisterTranslations("deDE", function() return({
	alpha = "Sichtbarkeit",
	alpha_desc = "Minimap Sichtbarkeit im Freien",
	bgs = "Schlachtfelder",
	bgs_desc = "Schlachtfeldsymbol",
	location = "Positionsleiste",
	location_desc = "Einstellungen der Positionsanzeigenleiste",
	locationText = "Text der Positionsleiste",
	locationText_desc = "Zeigt Zonenpositionstext wenn die Leiste versteckt ist",
	lock = "Sperre Minimap",
	lock_desc = "Sperrt die Minimap gegen Verschieben und versteckt die Quest-/Ankerfenster",
	mail = "Post",
	mail_desc = "Postsymbol anzeigen",
	meet = "LFG/LFM",
	meet_desc = "Suche nach Gruppe/Mitgliedern Symbol anzeigen",
	modules = "Module",
	modules_desc = "installed module options", -- need translate
	reset = "Profil zurücksetzen",
	reset_desc = "Setzt das gegenwärtige Profil auf seine Grundeinstellung zurück",
	scale = "Skalierung",
	scale_desc = "Ändert das Größenverhältnis",
	show = "Zeige/Verstecke",
	show_desc = "Zeigt oder versteckt die Minimap/UI Elemente",
	strata = "Höhenebene",
	strata_desc = "Ändert die Höhenebene des Fensters im Gegensatz zu anderen Fenstern (verhindert, dass zwei Fenster die gleiche Höhenebene haben und sich somit überlagern)",
	time = "time indicator", -- need translate
	time_desc = "day / night indicator", -- need translate
	track = "Aufspüroptionen",
	track_desc = "Aufspürsymbol anzeigen",
	zoom = "Zoom rein/raus",
	zoom_desc = "Zoom rein/raus Buttons anzeigen",
	reset_popup = "Dieses simpleMinimap Profil auf seine Grundeinstellung zurücksetzen?"
}) end)
if GetLocale() == "deDE" then
	BINDING_NAME_smmTOGGLE = "Aktiviert Minimap"
end

L:RegisterTranslations("zhCN", function() return({ 
	alpha = "外部透明度", 
	alpha_desc = "迷你地图的外部透明度", 
	bgs = "战场", 
	bgs_desc = "战场指示器", 
	location = "本地地址栏", 
	location_desc = "本地地址显示设定", 
	locationText = "本地地址栏文字", 
	locationText_desc = "在本地地址栏隐藏时显示地址栏上的文字", 
	lock = "锁定迷你地图", 
	lock_desc = "锁定迷你地图动作和隐藏移动", 
	mail = "邮件指示器", 
	mail_desc = "未读邮件指示器", 
	meet = "副本集合石", 
	meet_desc = "副本集合石指示器",
	modules = "模块",		
	modules_desc = "installed module options", -- need translate
	reset = "重置外观", 
	reset_desc = "重置当前的外观回到默认", 
	scale = "尺度", 
	scale_desc = "设置迷你地图的尺度大小", 
	show = "显示/隐藏", 
	show_desc = "显示和隐藏迷你地图/插件的元素", 
	strata = "层叠", 
	strata_desc = "修改框体的层叠关系", 
	time = "time indicator", -- need translate
	time_desc = "day / night indicator", -- need translate
	track = "追踪按钮", 
	track_desc = "追踪 指示器", 
	zoom = "放大/缩小", 
	zoom_desc = "放大/缩小 按钮", 
	reset_popup = "重置迷你地图回到默认?" 
}) end)

L:RegisterTranslations("zhTW", function() return({ 
	alpha = "透明度", 
	alpha_desc = "迷你地圖透明度", 
	bgs = "戰場/競技場", 
	bgs_desc = "戰場/競技場 指示器", 
	location = "本地位址欄", 
	location_desc = "本地位址顯示設定", 
	locationText = "本地位址欄文字", 
	locationText_desc = "在本地位址欄隱藏時顯示位址欄上的文字", 
	lock = "鎖定迷你地圖", 
	lock_desc = "鎖定迷你地圖動作和隱藏移動", 
	mail = "郵件指示器", 
	mail_desc = "未讀郵件指示器", 
	meet = "副本集合石", 
	meet_desc = "副本集合石指示器", 
	modules = "模組", 
	modules_desc = "installed module options", -- need translate
	reset = "重置外觀", 
	reset_desc = "重置當前的外觀回到預設值", 
	scale = "尺度", 
	scale_desc = "設置迷你地圖的尺度大小", 
	show = "顯示/隱藏", 
	show_desc = "顯示和隱藏迷你地圖/插件的元素", 
	strata = "層級", 
	strata_desc = "修改框架的層級關係", 
	time = "time indicator", -- need translate
	time_desc = "day / night indicator", -- need translate
	track = "追蹤按鈕", 
	track_desc = "追蹤 指示器", 
	zoom = "放大/縮小", 
	zoom_desc = "放大/縮小 按鈕", 
	reset_popup = "重置迷你地圖回到預設值?", 
}) end)

L:RegisterTranslations("esES", function() return({
	alpha = "Transparencia",
	alpha_desc = "Transparencia del minimapa en exteriores",
	bgs = "Campos de batalla",
	bgs_desc = "Indicador de campos de batalla",
	location = "Barra de lugar",
	location_desc = "Ajustes de visualizaci\195\179n de la barra de lugar",
	locationText = "Texto de la barra de lugar",
	locationText_desc = "Muestra el texto de la zona cuando la barra est\195\161 oculta",
	lock = "Bloquear minimapa",
	lock_desc = "Bloquea el movimiento del minimapa y oculta los desplazadores",
	mail = "Indicador de correo",
	mail_desc = "Indicador de correo no le\195\173do",
	meet = "Indicadores de B\195\186squeda de Grupo",
	meet_desc = "El ojo de b\195\186squeda de grupo",
	modules = "M\195\179dulos",
	modules_desc = "installed module options", -- need translate
	reset = "Reestablecer perfil",
	reset_desc = "Reestablece el perfil actual a los valores por defecto",
	scale = "Escala",
	scale_desc = "Establece el tama\195\177o del conjunto del minimapa",
	show = "Mostrar / Ocultar",
	show_desc = "Muestra y oculta el minimapa / elementos de la interfaz",
	strata = "Estrato",
	strata_desc = "Cambia c\195\179mo se superpone el marco respecto a otros",
	time = "time indicator", -- need translate
	time_desc = "day / night indicator", -- need translate
	track = "Bot\195\179n de rastreo",
	track_desc = "Indicadores de rastreo de cazadores / recolectores",
	zoom = "Acercar / Alejar",
	zoom_desc = "Botones para alejar o acercar la vista en el minimapa",
	reset_popup = "\194\191Reestablecer este perfil de simpleMinimap a los valores por defecto?"
}) end)
if GetLocale() == "esES" then
	BINDING_NAME_smmTOGGLE = "Activar Minimapa"
end

L:RegisterTranslations("ruRU", function() return({
	alpha = "Прозрачность",
	alpha_desc = "Прозрачность миникарты в открытом месте",
	bgs = "Поля сражений",
	bgs_desc = "Индикатор полей сражений",
	location = "Панель локации",
	location_desc = "Настрайка отоброжения панели местонахождения",
	locationText = "Текст панели локации",
	locationText_desc = "Показывает текст названия локации когда панель скрыта",
	lock = "Закрепить мини-карту",
	lock_desc = "Закрепляет расположение мини-карты",
	mail = "Индикатор почты",
	mail_desc = "Индикатор непрочитанной почты",
	meet = "Индикатор поиска группы",
	meet_desc = "Показывать иконку поиска группы",
	modules = "Модули",
	modules_desc = "Настройки установленных модулей",
	reset = "Сбросить профиль",
	reset_desc = "Сбросить текущий профиль на значения по умолчанию",
	scale = "Масштаб",
	scale_desc = "Установить маштаб мини-карты",
	show = "Показать / Скрыть",
	show_desc = "Показать / Скрыть мини-карту / элементы ПИ",
	strata = "Слои",
	strata_desc = "Изменяет приоритет окна в противоположность другим окнам (препятствует, чтобы 2 окна имели тот же самый приоритет и накладывались таким образом)",
	time = "Индикатор времени",
	time_desc = "Индикатор дня / ночи",
	track = "Кнопка отслеживания",
	track_desc = "Индикатор отслеживания охотника / собирателя",
	zoom = "Увеличение / Уменьшение масштаба",
	zoom_desc = "Кнопки увеличение / уменьшение масштаба",
	reset_popup = "Сбросить данный профиль simpleMinimap на значения по умолчанию?"
}) end)
if GetLocale() == "ruRU" then
	BINDING_NAME_smmTOGGLE = "Открыть/закрыть Мини-Карту"
end