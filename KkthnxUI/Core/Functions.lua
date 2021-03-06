local K, C, L = unpack(select(2, ...))

-- Lua API
local _G = _G
local format = format
local GetCVar = GetCVar
local InCombatLockdown = InCombatLockdown
local math_abs = math.abs
local math_floor = math.floor
local math_modf = math.modf
local pairs = pairs
local print = print
local SetCVar = SetCVar
local string_gsub = string.gsub
local string_lower = string.lower
local string_match = string.match
local string_reverse = string.reverse
local string_sub = string.sub
local table_insert, table_remove = table.insert, table.remove
local type = type
local unpack, select = unpack, select

-- Wow API
local CreateFrame = CreateFrame
local IsEveryoneAssistant = IsEveryoneAssistant
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local LE_PARTY_CATEGORY_HOME = LE_PARTY_CATEGORY_HOME
local LE_PARTY_CATEGORY_INSTANCE = LE_PARTY_CATEGORY_INSTANCE
local UnitIsGroupAssistant = UnitIsGroupAssistant
local UnitIsGroupLeader = UnitIsGroupLeader

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: GameTooltip, WEEKLY, UIFrameHider, UIHider,UIParent

K.Backdrop = {bgFile = C.Media.Blank, edgeFile = C.Media.Blizz, edgeSize = 14, insets = {left = 2.5, right = 2.5, top = 2.5, bottom = 2.5}}
K.Border = {edgeFile = C.Media.Blizz, edgeSize = 14}
K.BorderBackdrop = {bgFile = C.Media.Blank}
K.BorderBackdropTwo = {bgFile = C.Media.Blank, insets = {top = -K.Mult, left = -K.Mult, bottom = -K.Mult, right = -K.Mult}}
K.PixelBorder = {edgeFile = C.Media.Blank, edgeSize = K.Mult, insets = {left = K.Mult, right = K.Mult, top = K.Mult, bottom = K.Mult}}
K.TwoPixelBorder = {bgFile = C.Media.Blank, edgeFile = C.Media.Blank, tile = true, tileSize = 16, edgeSize = 2, insets = {left = 2, right = 2, top = 2, bottom = 2}}
K.ShadowBackdrop = {edgeFile = C.Media.Glow, edgeSize = 3, insets = {left = 5, right = 5, top = 5, bottom = 5}}

K.TexCoords = {0.08, 0.92, 0.08, 0.92}

K.PriestColors = {r = 0.86, g = 0.92, b = 0.98, colorStr = "dbebfa"}

function K.Print(...)
	print("|cff3c9bed" .. K.UIName .. "|r:", ...)
end

function K.SetFontString(parent, fontName, fontHeight, fontStyle, justify)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	fs:SetFont(fontName, fontHeight, fontStyle)
	fs:SetJustifyH(justify or "CENTER")
	fs:SetShadowColor(0, 0, 0, 1)
	fs:SetShadowOffset(K.Mult, -K.Mult)

	return fs
end

function K.Comma(num)
	local Left, Number, Right = string_match(num, "^([^%d]*%d)(%d*)(.-)$")

	return 	Left .. string_reverse(string_gsub(string_reverse(Number), "(%d%d%d)", "%1,")) .. Right
end

function K.ShortValue(value)
	if value >= 1e11 then
		return ("%.0fb"):format(value / 1e9)
	elseif value >= 1e10 then
		return ("%.1fb"):format(value / 1e9):gsub("%.?0+([km])$", "%1")
	elseif value >= 1e9 then
		return ("%.2fb"):format(value / 1e9):gsub("%.?0+([km])$", "%1")
	elseif value >= 1e8 then
		return ("%.0fm"):format(value / 1e6)
	elseif value >= 1e7 then
		return ("%.1fm"):format(value / 1e6):gsub("%.?0+([km])$", "%1")
	elseif value >= 1e6 then
		return ("%.2fm"):format(value / 1e6):gsub("%.?0+([km])$", "%1")
	elseif value >= 1e5 then
		return ("%.0fk"):format(value / 1e3)
	elseif value >= 1e3 then
		return ("%.1fk"):format(value / 1e3):gsub("%.?0+([km])$", "%1")
	else
		return value
	end
end

-- Rounding
function K.Round(num, idp)
	if (idp and idp > 0) then
		local mult = 10 ^ idp
		return math_floor(num * mult + 0.5) / mult
	end
	return math_floor(num + 0.5)
end

-- RgbToHex color
function K.RGBToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return format("|cff%02x%02x%02x", r*255, g*255, b*255)
end

function K.CheckAddOn(addon)
	return K.AddOns[string_lower(addon)] or false
end

function K.CreateBlizzardFrame(frame, point)
	if point == nil then point = frame end

	if point.backdrop then return end
	frame.backdrop = CreateFrame("Frame", nil , frame)
	frame.backdrop:SetAllPoints()
	frame.backdrop:SetBackdrop(K.Backdrop)
	frame.backdrop:SetPoint("TOPLEFT", point, -3 * K.NoScaleMult, 3 * K.NoScaleMult)
	frame.backdrop:SetPoint("BOTTOMRIGHT", point, 3 * K.NoScaleMult, -3 * K.NoScaleMult)
	frame.backdrop:SetBackdropColor(C.Media.Backdrop_Color[1], C.Media.Backdrop_Color[2], C.Media.Backdrop_Color[3], C.Media.Backdrop_Color[4])
	frame.backdrop:SetBackdropBorderColor(C.Media.Border_Color[1], C.Media.Border_Color[2], C.Media.Border_Color[3])

	if frame:GetFrameLevel() - 1 > 0 then
		frame.backdrop:SetFrameLevel(frame:GetFrameLevel() - 1)
	else
		frame.backdrop:SetFrameLevel(0)
	end
end

function K.SetBlizzardBorder(frame, r, g, b, a)
	if not a then a = 1 end
	frame.backdrop:SetBackdropBorderColor(r, g, b, a)
end

function K.CreateShadowFrame(frame, point)
	if point == nil then point = frame end

	if point.backdrop then return end
	frame.backdrop = CreateFrame("Frame", nil , frame)
	frame.backdrop:SetAllPoints()
	frame.backdrop:SetBackdrop({
		bgFile = C.Media.Blank,
		edgeFile = C.Media.Glow,
		edgeSize = 3 * K.NoScaleMult,
		insets = {top = 3 * K.NoScaleMult, left = 3 * K.NoScaleMult, bottom = 3 * K.NoScaleMult, right = 3 * K.NoScaleMult}
	})
	frame.backdrop:SetPoint("TOPLEFT", point, -3 * K.NoScaleMult, 3 * K.NoScaleMult)
	frame.backdrop:SetPoint("BOTTOMRIGHT", point, 3 * K.NoScaleMult, -3 * K.NoScaleMult)
	frame.backdrop:SetBackdropColor(C.Media.Backdrop_Color[1], C.Media.Backdrop_Color[2], C.Media.Backdrop_Color[3], C.Media.Backdrop_Color[4])
	frame.backdrop:SetBackdropBorderColor(0, 0, 0, 1)

	if frame:GetFrameLevel() - 1 > 0 then
		frame.backdrop:SetFrameLevel(frame:GetFrameLevel() - 1)
	else
		frame.backdrop:SetFrameLevel(0)
	end
end

function K.SetShadowBorder(frame, r, g, b, a)
	if not a then a = 0.9 end
	frame.backdrop:SetBackdropBorderColor(r, g, b, a)
end

-- Chat channel check
function K.CheckChat(warning)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
		return "INSTANCE_CHAT"
	elseif IsInRaid(LE_PARTY_CATEGORY_HOME) then
		if warning and (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") or IsEveryoneAssistant()) then
			return "RAID_WARNING"
		else
			return "RAID"
		end
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		return "PARTY"
	end
	return "SAY"
end

function K.UTF8Sub(string, numChars, dots)
	local bytes = string:len()
	if (bytes <= numChars) then
		return string
	else
		local len, pos = 0, 1
		while(pos <= bytes) do
			len = len + 1
			local c = string:byte(pos)
			if (c > 0 and c <= 127) then
				pos = pos + 1
			elseif (c >= 192 and c <= 223) then
				pos = pos + 2
			elseif (c >= 224 and c <= 239) then
				pos = pos + 3
			elseif (c >= 240 and c <= 247) then
				pos = pos + 4
			end
			if (len == numChars) then break end
		end

		if (len == numChars and pos <= bytes) then
			return string:sub(1, pos - 1)..(dots and '...' or '')
		else
			return string
		end
	end
end

function K.FormatMoney(value)
	if value >= 1e4 then
		return format("|cffffd700%dg |r|cffc7c7cf%ds |r|cffeda55f%dc|r", value/1e4, string_sub(value, -4) / 1e2, string_sub(value, -2))
	elseif value >= 1e2 then
		return format("|cffc7c7cf%ds |r|cffeda55f%dc|r", string_sub(value, -4) / 1e2, string_sub(value, -2))
	else
		return format("|cffeda55f%dc|r", string_sub(value, -2))
	end
end

-- LockedCVars
K.LockedCVars = {}
function K:PLAYER_REGEN_ENABLED(_)
	if(self.CVarUpdate) then
		for cvarName, value in pairs(K.LockedCVars) do
			if(GetCVar(cvarName) ~= value) then
				SetCVar(cvarName, value)
				-- print(cvarName, value)
			end
		end
		K.CVarUpdate = nil
	end
end

local function CVAR_UPDATE(cvarName, value)
	if(K.LockedCVars[cvarName] and K.LockedCVars[cvarName] ~= value) then
		if(InCombatLockdown()) then
			K.CVarUpdate = true
			return
		end

		SetCVar(cvarName, K.LockedCVars[cvarName])
		-- print(cvarName, K.LockedCVars[cvarName])
	end
end

hooksecurefunc("SetCVar", CVAR_UPDATE)
function K.LockCVar(cvarName, value)
	if(GetCVar(cvarName) ~= value) then
		SetCVar(cvarName, value)
		-- print(cvarName, value)
	end
	K.LockedCVars[cvarName] = value
	-- print(value)
end

-- Personal Dev use only
K.IsDev = {Aceer = true, Kkthnx = true, Kkthnxx = true, Pervie = true, Tatterdots = true} -- We will add more of my names as we go.
K.IsDevRealm = {Stormreaver = true} -- Don't forget to update realm name(s) if we ever transfer realms.
-- If we forget it could be easly picked up by another player who matches these combinations.
-- End result we piss off people and we do not want to do that. :(

function K.IsDeveloper()
    return K.IsDev[K.Name] or false
end

function K.IsDeveloperRealm()
    return K.IsDevRealm[K.Realm] or false
end

-- if K.IsDeveloper() then
-- 	print(K.Name .." is a Dev of ".. K.UIName)
-- end
--
-- if K.IsDeveloperRealm() then
-- 	print("Dev realm is ".. K.Realm)
-- end

-- http://www.wowwiki.com/ColorGradient
function K.ColorGradient(a, b, ...)
	local percent

	if(b == 0) then
		percent = 0
	else
		percent = a / b
	end

	if (percent >= 1) then
		local r, g, b = select(select("#", ...) - 2, ...)

		return r, g, b
	elseif (percent <= 0) then
		local r, g, b = ...

		return r, g, b
	end

	local num = (select("#", ...) / 3)
	local segment, relpercent = math_modf(percent * (num - 1))
	local r1, g1, b1, r2, g2, b2 = select((segment * 3) + 1, ...)

	return r1 + (r2 - r1) * relpercent, g1 + (g2 - g1) * relpercent, b1 + (b2 - b1) * relpercent
end

-- Example: killMenuOption(true, "InterfaceOptionsCombatPanelEnemyCastBarsOnPortrait")
function K.KillMenuOption(option_shrink, option_name)
	local option = _G[option_name]
	if not(option) or not(option.IsObjectType) or not(option:IsObjectType("Frame")) then
		return
	end
	option:SetParent(UIFrameHider)
	if option.UnregisterAllEvents then
		option:UnregisterAllEvents()
	end
	if option_shrink then
		option:SetHeight(0.00001)
	end
	option.cvar = ""
	option.uvar = ""
	option.value = nil
	option.oldValue = nil
	option.defaultValue = nil
	option.setFunc = function() end
end

-- Example (killing the status text panel in WotLK, Cata and MoP):
-- K.KillMenuPanel(9, "InterfaceOptionsStatusTextPanel")
--
-- 'panel_id' is basically the number of the submenu, when all menus are still there.
-- Note that the this sometimes change between expansions, so you really need to check
-- to make sure you are removing the right one.
function K.KillMenuPanel(panel_id, panel_name)
	-- remove an entire blizzard options panel,
	-- and disable its automatic cancel/okay functionality
	-- this is needed, or the option will be reset when the menu closes
	-- it is also a major source of taint related to the Compact group frames!
	if panel_id then
		local category = _G["InterfaceOptionsFrameCategoriesButton" .. panel_id]
		if category then
			category:SetScale(0.00001)
			category:SetAlpha(0)
		end
	end
	if panel_name then
		local panel = _G[panel_name]
		if panel then
			panel:SetParent(UIHider)
			if panel.UnregisterAllEvents then
				panel:UnregisterAllEvents()
			end
			panel.cancel = function() end
			panel.okay = function() end
			panel.refresh = function() end
		end
	end
end

-- Format seconds to min/ hour / day
function K.FormatTime(s)
	local day, hour, minute = 86400, 3600, 60

	if s >= day then
		return format("%dd", math_floor(s / day + 0.5)), s % day
	elseif s >= hour then
		return format("%dh", math_floor(s / hour + 0.5)), s % hour
	elseif s >= minute then
		return format("%dm", math_floor(s / minute + 0.5)), s % minute
	elseif s >= minute / 12 then
		return math_floor(s + 0.5), (s * 100 - math_floor(s * 100)) / 100
	end
	return format("%.1f", s), (s * 100 - math_floor(s * 100)) / 100
end

--Add time before calling a function
local waitTable = {}
local waitFrame
function K.Delay(delay, func, ...)
	if (type(delay) ~= "number" or type(func) ~= "function") then
		return false
	end
	if (waitFrame == nil) then
		waitFrame = CreateFrame("Frame", "WaitFrame", UIParent)
		waitFrame:SetScript("onUpdate", function (_, elapse)
			local count = #waitTable
			local i = 1
			while(i <= count) do
				local waitRecord = table_remove(waitTable, i)
				local d = table_remove(waitRecord,1)
				local f = table_remove(waitRecord,1)
				local p = table_remove(waitRecord,1)
				if (d > elapse) then
					table_insert(waitTable, i, {d-elapse, f, p})
					i = i + 1
				else
					count = count - 1
					f(unpack(p))
				end
			end
		end)
	end
	table_insert(waitTable, {delay, func, {...}})
	return true
end