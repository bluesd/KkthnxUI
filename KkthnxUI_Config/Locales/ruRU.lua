if (GetLocale() ~= "ruRU") then return end

-- Localization for ruRU

local PerformanceSlight = "\n|cffFF0000Отключение этого может немного повысить производительность|r" -- For semi-high CPU options
local ToggleOffReminder = "\n|cffFF0000Включите эту опцию для ручного ввода количества панелей|r"

-- Actionbar
UIConfigLocal.ActionBarBottomBars = "Количество панелей внизу (1, 2 или 3)"
UIConfigLocal.ActionBarButtonSize = "Размер кнопок"
UIConfigLocal.ActionBarButtonSpace = "Отступ кнопок"
UIConfigLocal.ActionBarEnable = "Включить панели команд"
UIConfigLocal.ActionBarEquipBorder = "Окрашивать зеленым границы надетого предмета"
UIConfigLocal.ActionBarGrid = "Показывать пустые кнопки на панелях"
UIConfigLocal.ActionBarHideHighlight = "Скрыть блики проков"
UIConfigLocal.ActionBarHotkey = "Показывать горячие клавиши на кнопках"
UIConfigLocal.ActionBarMacro = "Показывать названия макросов на кнопках"
UIConfigLocal.ActionBarOutOfMana = "Цвет заканчивающейся маны"
UIConfigLocal.ActionBarOutOfRange = "Цвет вне радиуса действий"
UIConfigLocal.ActionBarPetBarHide = "Скрыть панель петомца"
UIConfigLocal.ActionBarPetBarHorizontal = "Включить горизонтальную панель петомца"
UIConfigLocal.ActionBarPetBarMouseover = "Панель петомца по наведению мыши (только для горизонтальной панели)"
UIConfigLocal.ActionBarRightBars = "Количество панелей справа (0, 1, 2 или 3)"
UIConfigLocal.ActionBarRightBarsMouseover = "Правые панели по наведению мыши"
UIConfigLocal.ActionBarSelfCast = "Всегда применять каст на себя правой кнопкой мыши (независимо от выбранной цели)"
UIConfigLocal.ActionBarSplitBars = "Разделить пятую панель на две панели по 6 кнопок"
UIConfigLocal.ActionBarStanceBarHide = "Скрыть панель стоек"
UIConfigLocal.ActionBarStanceBarHorizontal = "Включить горизонтальную панель стоек"
UIConfigLocal.ActionBarStanceBarMouseover = "Панель стоек по наведению мыши"
UIConfigLocal.ActionBarToggleMode = "Включить режим переключения"..ToggleOffReminder

-- Оповещения
UIConfigLocal.Announcements = "Оповещения"
UIConfigLocal.AnnouncementsBadGear = "Проверять наличие плохой экипировки в подземельях"
UIConfigLocal.AnnouncementsInterrupt = "Анонсировать в группу/рейд ваши прерывания заклинаний"
UIConfigLocal.AnnouncementsPullCountdown = "Активировать функцию обратного отсчета на запуск босса (/рс)"
UIConfigLocal.AnnouncementsSaySapped = "Мнгновенно оповещать об ошеломлении, когда |cFFFFF569Разбойник|r напал на вас"
UIConfigLocal.AnnouncementsSayThanks = "Благодарить за полезные заклинания"
UIConfigLocal.AnnouncementsSpells = "Анонсировать в группу/рейд применение некоторых важных умений"
UIConfigLocal.AnnouncementsSpellsFromAll = "Проверять умения всех членов группы/рейда"

-- Автоматизация
UIConfigLocal.Automation = "Автоматизация"
UIConfigLocal.AutomationAcceptQuest = "Принятие заданий (если зажат Shift - не работает)"
UIConfigLocal.AutomationAutoCollapse = "Автоматически сворачивать список заданий в подземельях"
UIConfigLocal.AutomationAutoInvite = "Автоматически принимать приглашения от друзей и гильдии"
UIConfigLocal.AutomationDeclineDuel = "Автоматически отклонять все дуэли"
UIConfigLocal.AutomationLoggingCombat = "Автоматически сохранять лог боя в текстовый файл в рейде"
UIConfigLocal.AutomationResurrection = "Автоматическое покидание тела на полях боя"
UIConfigLocal.AutomationScreenShot = "Автоматически делать скриншот при получении достижений"
UIConfigLocal.AutomationTabBinder = "Автоматически выбирать только вражеских игроков клавишей TAB"

-- Сумки
UIConfigLocal.Bags = "Сумки"
UIConfigLocal.BagsBagFilter = "Автоматически удалять ненужные предметы из ваших сумок во время сбора добычи"
UIConfigLocal.BagsButtonSize = "Размер слотов"
UIConfigLocal.BagsEnable = "Включить сумки"
UIConfigLocal.BagsInsertLeftToRight = "Set the loot to the left most bag first"
UIConfigLocal.BagsItemsPerRow = "Установить количество слотов в ряду"
UIConfigLocal.BagsSortRightToLeft = "Sort bags right to left, bottom to top"
UIConfigLocal.BagsSpacing = "Отступ слотов"

-- Blizzard
UIConfigLocal.Blizzard = "Blizzard"
UIConfigLocal.BlizzardClassColor = "Окрасить имена игроков в списке друзей"
UIConfigLocal.BlizzardColorTextures = "Изменить оттенок цвета большинства элементов UI."
UIConfigLocal.BlizzardHideTalkingHead = "Скрыть подсказку добычи после победы над боссом"
UIConfigLocal.BlizzardRaidTools = "Инструменты рейда"
UIConfigLocal.BlizzardReplaceBlizzardFonts = "Заменить стандартный шрифт |cff00B4FFBlizzard|r на различных элементах |cff3c9bedKkthnxUI|r."
UIConfigLocal.BlizzardReputationGain = "Показывать сообщения о полученной репутации"
UIConfigLocal.BlizzardTalkingHeadScale = "Scale the Talking Head Frame"
UIConfigLocal.BlizzardTexturesColor = "Оттенок цвета текстур UI (по умолчанию цвет класса)"

-- Панель Данных
UIConfigLocal.DataBars = "Панель Данных"
UIConfigLocal.DataBarsArtifactColor = "Цвет полосы артифакта"
UIConfigLocal.DataBarsArtifactEnable = "Включить полосу артифакта"
UIConfigLocal.DataBarsArtifactFade = "Скрытие полосы артефакта"
UIConfigLocal.DataBarsArtifactHeight = "Высота полосы артефакта"
UIConfigLocal.DataBarsArtifactWidth = "Ширина полосы артефакта"
UIConfigLocal.DataBarsExperienceColor = "Цвет полосы опыта"
UIConfigLocal.DataBarsExperienceEnable = "Включить полосу опыта"
UIConfigLocal.DataBarsExperienceFade = "Скрытие полосы опыта"
UIConfigLocal.DataBarsExperienceHeight = "Высота полосы опыта"
UIConfigLocal.DataBarsExperienceRestedColor = "Цвет отдыха полосы опыта"
UIConfigLocal.DataBarsExperienceWidth = "Ширина полосы опыта"
UIConfigLocal.DataBarsHonorColor = "Цвет полосы чести"
UIConfigLocal.DataBarsHonorEnable = "Активировать полосу чести"
UIConfigLocal.DataBarsHonorFade = "Скрытие полосы чести"
UIConfigLocal.DataBarsHonorHeight = "Высота полосы чести"
UIConfigLocal.DataBarsHonorWidth = "Ширина высоты чести"
UIConfigLocal.DataBarsInfoText = "Display info text on all databars"
UIConfigLocal.DataBarsReputationEnable = "Включить полосу репутации"
UIConfigLocal.DataBarsReputationFade = "Скрытие полосы репутации"
UIConfigLocal.DataBarsReputationHeight = "Высота полосы репутации"
UIConfigLocal.DataBarsReputationWidth = "Ширина полосы репутации"

-- Ауры
UIConfigLocal.Auras = "Ауры"
UIConfigLocal.AurasAnimation = "Анимировать появление аур"..PerformanceSlight
UIConfigLocal.AurasBuffsPerRow = "Установить количество баффов в ряду"
UIConfigLocal.AurasCastBy = "Показывать, кто наложил ауру в подсказке"
UIConfigLocal.AurasConsolidate = "Объединять ауры"
UIConfigLocal.AurasEnable = "Включить ауры"
UIConfigLocal.AurasFlash = "Подсвечивать ауры когда их эффект заканчивается"..PerformanceSlight
UIConfigLocal.AurasHideBuffs = "Отключить показ баффов"
UIConfigLocal.AurasHideDebuffs = "Отключить показ дебаффов"

-- Chat
UIConfigLocal.ChatBubbleBackdrop = "Удалить фон облачков сообщений"
UIConfigLocal.ChatDamageMeterSpam = "Объединять спам аддонов учета урона в одну строку-ссылку"
UIConfigLocal.ChatEnable = "Включить чат"
UIConfigLocal.ChatFading = "Fades out chat messages after a certain period of time."
UIConfigLocal.ChatFadingTimeVisible = "Set how long in seconds the chat messages remain visible before fading out."
UIConfigLocal.ChatFadingTimeFading = "Set how much time the chat messages will spend fading out in seconds."
UIConfigLocal.ChatHeight = "Высота чата"
UIConfigLocal.ChatLinkBrackets = "Показывать URL ссылки в скобках"
UIConfigLocal.ChatLinkColor = "Установить цвет для отображения URL ссылки"
UIConfigLocal.ChatMessageFilter = "Removing some systems spam('Player1' won duel 'Player2')"
UIConfigLocal.ChatOutline = "Применить OUTLINE стиль, к шрифту чата"
UIConfigLocal.ChatScrollByX = "Установить количество строк, которые чат будет пролистывать при скролле"
UIConfigLocal.ChatSpamFilter = "Removing some players chat spam in trade"
UIConfigLocal.ChatTabsMouseover = "Показывать панель вкладок чата при наведении мыши"
UIConfigLocal.ChatTabsOutline = "Применить OUTLINE стиль к панели вкладок чата"
UIConfigLocal.ChatWhispSound = "Проигрывать звук при получении личного сообщения"
UIConfigLocal.ChatWidth = "Ширина чата"

-- Текст Данных
UIConfigLocal.DataText = "Текст Данных"
UIConfigLocal.DataTextBattleground = "Включить отображение текста поля боя"
UIConfigLocal.DataTextLocalTime = "Использовать локальное время в текстах данных"
UIConfigLocal.DataTextSystem = "Включить отображение ФПС и МС под миникартой"
UIConfigLocal.DataTextTime = "Включить отображение часов внизу миникарты"
UIConfigLocal.DataTextTime24Hr = "Установить 24-х часовой формат времени"

-- Ошибки боя
UIConfigLocal.Error = "Ошибки боя"
UIConfigLocal.ErrorBlack = "Спрятать ошибки из 'черного' списка"
UIConfigLocal.ErrorWhite = "Показывать ошибки из 'белого' списка"
UIConfigLocal.ErrorCombat = "Спрятать все ошибки во время боя"

-- Перезарядка
UIConfigLocal.Cooldown = "Перезарядка"
UIConfigLocal.CooldownEnable = "Включить модуль перезарядки"
UIConfigLocal.CooldownFontSize = "Размер шрифта перезарядки"
UIConfigLocal.CooldownThreshold = "Пороговое время"

-- Filger
UIConfigLocal.Filger = "Таймеры (Filger)"
UIConfigLocal.FilgerBuffsSize = "Размер баффов"
UIConfigLocal.FilgerCooldownSize = "Размер перезарядок"
UIConfigLocal.FilgerDisableCD = "Отключить перезарядки"
UIConfigLocal.FilgerEnable = "Включить Filger"
UIConfigLocal.FilgerMaxTestIcon = "Количество иконок в тестовом режиме"
UIConfigLocal.FilgerPvPSize = "Размер ПВП дебаффов"
UIConfigLocal.FilgerShowTooltip = "Показывать подсказки"
UIConfigLocal.FilgerTestMode = "Тестовый режим"

-- General
UIConfigLocal.GeneralAutoScale = "Автоматически масштабировать интерфейс"
UIConfigLocal.GeneralBubbleFontSize = "Размер шрифта в облочках сообщений"
UIConfigLocal.GeneralCustomLagTolerance = "Автоматически обновлять опцию Blizzard Custom Lag Tolerance для вашей задержки"
UIConfigLocal.GeneralDisableTutorialButtons = "Disables the tutorial button found on some frames"
UIConfigLocal.GeneralTaintLog = "Отслеживать недочеты"
UIConfigLocal.GeneralToggleButton = "Toggle button under minimap (if DataText System is enabled)"
UIConfigLocal.GeneralTranslateMessage = "Оповещение о помощи перевода GUI"
UIConfigLocal.GeneralUIScale = "Масштаб интерфейса (если автомасштабирование отключено)"
UIConfigLocal.GeneralUseBlizzardFonts = "Use the default blizzard font"
UIConfigLocal.GeneralUseFlatTextures = "Use flat statusbar textures"
UIConfigLocal.GeneralWelcomeMessage = "Приветственное сообщение в чате"

-- Loot
UIConfigLocal.LootAutoGreed = "Автоматически нажимать НУЖНО для зеленых предметов на максимальном уровне"
UIConfigLocal.LootConfirmDisenchant = "Автоматически нажимать РАСПЫЛИТЬ"
UIConfigLocal.LootEnable = "Включить окно добычи"
UIConfigLocal.LootGroupLoot = "Включить окно распределения добычи"
UIConfigLocal.LootIconSize = "Размер иконок"
UIConfigLocal.LootLootFilter = "Фильтровать сообщения о добыче в группе и рейде в зависимости от редкости предмета"
UIConfigLocal.LootWidth = "Ширина окна добычи"

-- Миникарта
UIConfigLocal.Minimap = "Миникарта"
UIConfigLocal.MinimapCollectButtons = "Сделать минипанель для некоторых кнопок"
UIConfigLocal.MinimapEnable = "Включить миникарту и сделать её квадратной"
UIConfigLocal.MinimapFadeButtons = "Fade addon button when collected next to minimap"
UIConfigLocal.MinimapGarrison = "Показывать иконку Оплота/Гарнизона на миникарте"
UIConfigLocal.MinimapPing = "Выводить сообщение о пинге с ником игрока на миникарте. |cffff0000*|r |ccfabd473Kkthnx|r |cffff0000*|r"
UIConfigLocal.MinimapSize = "Размер миникарты (по умолчанию 150)"

-- Разное
UIConfigLocal.Misc = "Разное"
UIConfigLocal.MiscAFKCamera = "Вращение камеры во время АФК"
UIConfigLocal.MiscAlreadyKnown = "Окрашивать рецепты, транспорт и питомцев, которые уже изучены"
UIConfigLocal.MiscArmory = "Добавить ссылку на Армори в контекстное меню фреймов персонажей (может привести к ошибкам)"
UIConfigLocal.MiscAutoRepair = "Автоматически ремонтировать экипировку при посещении торговца"
UIConfigLocal.MiscAutoSellGrays = "Автоматически продавать серые предметы"
UIConfigLocal.MiscBGSpam = "Удалить спам эмоций боссов во время боя"
UIConfigLocal.MiscColorPicker = "Улучшенная выборка цветов"
UIConfigLocal.MiscCombatState = "Display a message when you enter/leave combat at the top of the screen"
UIConfigLocal.MiscEnhancedMail = "Добавить кнопку 'ВСЕ' в окно почты"
UIConfigLocal.MiscEnhancedPvpMessages = "Отображать сообщения полей боя в центре экрана."
UIConfigLocal.MiscInviteKeyword = "Ключевое слово для автоприглашения (/ainv)"
UIConfigLocal.MiscItemLevel = "Показывать уровень предмета надетого на персонажа"
UIConfigLocal.MiscMerchantItemLevel = "Отображать уровень предметов для оружия и брони в окне торговца"
UIConfigLocal.MiscMoveBlizzard = "Перемещение некоторых элементов Blizzard"
UIConfigLocal.MiscNoBanner = "Скрыть рамку говорящей головы"
UIConfigLocal.MiscPvPEmote = "Does a random emote on a player that you get a killing blow on"
UIConfigLocal.MiscSellMisc = "Автоматически продавать ненужные предметы качеством выше серого"
UIConfigLocal.MiscSlotDurability = "Показывать прочность предмета надетого на персонажа"
UIConfigLocal.MiscUseGuildRepair = "Автоматический ремонт за счет банка гильдии"

-- Nameplates
UIConfigLocal.Nameplates = "Nameplates"
UIConfigLocal.NameplatesAdditionalHeight = "Дополнительная высота для индикатора цели"
UIConfigLocal.NameplatesAdditionalWidth = "Дополнительная ширина для индикатора цели"
UIConfigLocal.NameplatesAurasSize = "Размер Дебаффов"
UIConfigLocal.NameplatesBadColor = "Цвет плохого состояния угрозы"
UIConfigLocal.NameplatesCastbarName = "Показывать название применяемого заклинания"
UIConfigLocal.NameplatesCastUnitReaction = "Color castbars by the reaction type of non-player units"
UIConfigLocal.NameplatesClamp = "Clamp nameplates to the top of the screen when outside of view"
UIConfigLocal.NameplatesClassIcons = "Иконка класса в ПВП"
UIConfigLocal.NameplatesCombat = "Автоматически показывать индикаторы здоровья в бою"
UIConfigLocal.NameplatesDistance = "Show nameplates for units within this range"
UIConfigLocal.NameplatesEnable = "Включить индикаторы здоровья"
UIConfigLocal.NameplatesEnhancedThreat = "Включить отображение угрозы, в зависимости от вашей роли"
UIConfigLocal.NameplatesGoodColor = "Цвет хорошего состояния угрозы"
UIConfigLocal.NameplatesHealerIcon = "Показывать иконку лекаря над индикатором на поле боя"
UIConfigLocal.NameplatesHealthValue = "Цифровое значение здоровья"
UIConfigLocal.NameplatesHeight = "Высота индикаторов"
UIConfigLocal.NameplatesNameAbbreviate = "Сокращать до аббревиатур имена длиннее 18 символов"
UIConfigLocal.NameplatesNearColor = "Цвет при уменьшении/увеличении значения угрозы"
UIConfigLocal.NameplatesOffTankColor = "Цвет угрозы для оффтанка"
UIConfigLocal.NameplatesSmooth = "Bars will transition smoothly"
UIConfigLocal.NameplatesTotemIcons = "Отображать иконку над вражескими тотемами"
UIConfigLocal.NameplatesTrackAuras = "Показывать дебаффы (из списка)"
UIConfigLocal.NameplatesWidth = "Ширина индикаторов"

-- Иконки восстановления
UIConfigLocal.PulseCD = "Иконки восстановления"
UIConfigLocal.PulseCDAnimationScale = "Масштаб анимации"
UIConfigLocal.PulseCDEnable = "Показывать иконки восстановления"
UIConfigLocal.PulseCDHoldTime = "Время отображения"
UIConfigLocal.PulseCDSize = "Размер иконки восстановления"
UIConfigLocal.PulseCDSound = "Предупреждать звуковым оповещением"
UIConfigLocal.PulseCDThreshold = "Минимальный порог времени"

-- RaidCD
UIConfigLocal.RaidCD = "Перезарядки рейда"
UIConfigLocal.RaidCDEnable = "Включить рейдовые перезарядки"
UIConfigLocal.RaidCDExpiration = "Сортировка по времени"
UIConfigLocal.RaidCDHeight = "Высота индикаторов"
UIConfigLocal.RaidCDShowIcon = "Отображать иконки рейдовых перезарядок"
UIConfigLocal.RaidCDShowInArena = "Отображать на арене"
UIConfigLocal.RaidCDShowInParty = "Отображать в группе"
UIConfigLocal.RaidCDShowInRaid = "Отображать в рейде"
UIConfigLocal.RaidCDShowSelf = "Отображать свои перезарядки"
UIConfigLocal.RaidCDUpWards = "Сделать сортировку вверх"
UIConfigLocal.RaidCDWidth = "Ширина индикаторов"

-- Config GUI Buttons
UIConfigLocal.ConfigApplyButton = "Apply"
UIConfigLocal.ConfigButtonReset = "Общий сброс UI"
UIConfigLocal.ConfigCloseButton = "Close"

-- Config Static Popups
UIConfigLocal.ConfigPerChar = "Вы уверены, что хотите сбросить настройки для этого персонажа?"
UIConfigLocal.ConfigResetAll = "Вы уверены, что хотите сбросить все настройки |cFF4488FFKkthnxUI|r?"
UIConfigLocal.ConfigResetChar = "AВы уверены, что хотите сбросить настройки для всех персонажей |cFF4488FFKkthnx's|r|cFFFEB200UI|r?"
UIConfigLocal.ConfigSetSavedSettings = "Настройки для этого персонажа"

-- Скины Аддонов
UIConfigLocal.Skins = "Скины Аддонов"
UIConfigLocal.SkinsBigWigs = "BigWigs"
UIConfigLocal.SkinsChatBubble = "Облачка сообщений Blizzard"
UIConfigLocal.SkinsDBM = "Включить скин DeadlyBossMods"
UIConfigLocal.SkinsDBMMove = "Разрешить перемещение фреймов DBM"
UIConfigLocal.SkinsMinimapButtons = "Включить скин Minimap buttons"
UIConfigLocal.SkinsRecount = "Включить скин Recoun"
UIConfigLocal.SkinsSkada = "Включить скин Skada"
UIConfigLocal.SkinsSpy = "Включить скин Spy"
UIConfigLocal.SkinsWeakAuras = "Включить скин WeakAuras"

-- Подсказка
UIConfigLocal.Tooltip = "Подсказка"
UIConfigLocal.TooltipAchievements = "Сравнивать достижения в подсказке"
UIConfigLocal.TooltipCursor = "Подсказка над курсором"
UIConfigLocal.TooltipEnable = "Включить подсказку"
UIConfigLocal.TooltipHealthValue = "Числовое значение здоровья"
UIConfigLocal.TooltipHyperLink = "Показывать подсказку при наведении указателя мыши на ссылку предмета."
UIConfigLocal.TooltipInstanceLock = "Отображать статус заблокированных подземелий в подсказке"
UIConfigLocal.TooltipItemCount = "Количество предметов"
UIConfigLocal.TooltipItemIcon = "Иконка предмета в подсказке"
UIConfigLocal.TooltipRank = "Display targets guild rank on tooltip when shift is held down"
UIConfigLocal.TooltipSpellID = "ID заклинаний"
UIConfigLocal.TooltipTalents = "Отображать специализацию игрока и уровень предметов в подсказке"

-- Рамки Юнитов
UIConfigLocal.Unitframe = "Рамки Юнитов"
UIConfigLocal.UnitframeCastbarHeight = "Height of the unitframe castbars"
UIConfigLocal.UnitframeCastbars = "Включить полосу заклинаний"
UIConfigLocal.UnitframeCastbarTicks = "Display tick marks on the castbar for channelled spells."
UIConfigLocal.UnitframeCastbarWidth = "Width of the unitframe castbars"
UIConfigLocal.UnitframeCastClassColor = "Color castbars by the class of player units"
UIConfigLocal.UnitframeCastUnitReaction = "Color castbars by the reaction type of non-player units"
UIConfigLocal.UnitframeClassColor = "Использовать цвет класса для полосы здоровья, вместо зеленого."
UIConfigLocal.UnitframeClassPortraits = "Включить портреты классов"
UIConfigLocal.UnitframeCombatText = "Показывать текст боя"
UIConfigLocal.UnitframeEnable = "Включить рамки юнитов"
UIConfigLocal.UnitframeGCDBar = "Отображать полосу глобальной перезарядки на рамке игрока"
UIConfigLocal.UnitframeParty = "Включить рамки юнитов группы."
UIConfigLocal.UnitframePlayerDebuffsOnly = "Окрашивать только дебаффы игрока"
UIConfigLocal.UnitframePortraitTimer = "Показывать таймеры на портретах"
UIConfigLocal.UnitframePowerPredictionBar = "Прогнозируемая полоса ресурса (Показывает ориентировочную стоимость заклинания во время его применения)"
UIConfigLocal.UnitframeScale = "Масштабировать некоторые рамки юнитов."
UIConfigLocal.UnitframeShowArena = "Включить рамки арены"
UIConfigLocal.UnitframeShowBoss = "Включить рамки боссов"
UIConfigLocal.UnitframeShowPlayer = "SПоказывать себя в группе"
UIConfigLocal.UnitframeSmooth = "Bars will transition smoothly"
UIConfigLocal.UnitframeStyle = "Стиль рамок 'fat или normal'" -- Это ключевые слова, чтобы опция работала их надо писать
UIConfigLocal.UnitframeSwingBar = "Отображать индикатор автоматической атаки"
UIConfigLocal.UnitframeThreatGlow = "Свечение угрозы вокруг рамки"
UIConfigLocal.UnitframeThreatValue = "Текст угрозы на рамке игрока"

-- Рамки Рейда
UIConfigLocal.Raidframe = "Рамки Рейда"
UIConfigLocal.RaidframeAuraWatch = "Отображать таймеры для специфических заклинаний каждого класса на рамках рейда"
UIConfigLocal.RaidframeDeficitThreshold = "Недостающее здоровье"
UIConfigLocal.RaidframeEnable = "Включить рамки рейда"
UIConfigLocal.RaidframeHeight = "Высота рамок рейда"
UIConfigLocal.RaidframeHorizontalHealthBars = "Показывать полосы здоровья горизонтально"
UIConfigLocal.RaidframeIconSize = "Размер иконок дебаффов на рамках рейда."
UIConfigLocal.RaidframeMainTankFrames = "Включить использование рамок главного танка и помощника в рейде."
UIConfigLocal.RaidframeManabarHorizontal = "Показывать полосу ресурса горизонтально"
UIConfigLocal.RaidframeManabarShow = "Включить полосу ресурса"
UIConfigLocal.RaidframeMaxUnitPerColumn = "Сколько игроков в столбце"
UIConfigLocal.RaidframeRaidAsParty = "Display raid frames instead of party frames" -- Needs translation
UIConfigLocal.RaidframeScale = "Масштабирование рамок рейда"
UIConfigLocal.RaidframeShowMouseoverHighlight = "Подсвечивать рамки при наведении мыши"
UIConfigLocal.RaidframeShowNotHereTimer = "Показывать таймер АФК/Оффлайн"
UIConfigLocal.RaidframeShowResurrectText = "Показывать текст воскрешения"
UIConfigLocal.RaidframeShowRolePrefix = "Показывать префиксы ролей"
UIConfigLocal.RaidframeShowThreatText = "Показывать текст угрозы"
UIConfigLocal.RaidframeSmooth = "Bars will transition smoothly."
UIConfigLocal.RaidframeWidth = "Ширина рамок рейда"

-- Карта мира
UIConfigLocal.WorldMap = "Карта мира"
UIConfigLocal.WorldMapAlphaWhenMoving = "Прозрачность карты мира во время движения."
UIConfigLocal.WorldMapCoordinates = "Координаты на карте мира."
UIConfigLocal.WorldMapFadeWhenMoving = "Затухание карты мира во время движения."
UIConfigLocal.WorldMapFogOfWar = "Убрать туман войны на карте мира"
UIConfigLocal.WorldMapSmallWorldMap = "Сделать карту мира меньше."