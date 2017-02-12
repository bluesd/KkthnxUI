local K, C, L = unpack(select(2, ...))

-- Lua API
local _G = _G
local select = select
local string_lower = string.lower
local tonumber = tonumber

-- Wow API
local GetAddOnEnableState = _G.GetAddOnEnableState
local GetBuildInfo = _G.GetBuildInfo
local GetSpecialization = _G.GetSpecialization
local UnitClass = _G.UnitClass
local UnitName = _G.UnitName

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: SLASH_RELOADUI2, SLASH_RELOADUI1, newVersion

local function CheckRole(self, event)
	local Tank = "TANK" or "Tank"
	local Melee = "MELEE" or "Melee"
	local Caster = "CASTER" or "Caster"
	local Healer = "HEALER" or "Healer"

	local Roles = {
		DEATHKNIGHT = {Tank, Melee, Melee},
		DEMONHUNTER = {Melee, Tank},
		DRUID = {Caster, Melee, Tank, Healer},
		HUNTER = {Melee, Melee, Melee},
		MAGE = {Caster, Caster, Caster},
		MONK = {Tank, Healer, Melee},
		PALADIN = {Healer, Tank, Melee},
		PRIEST = {Healer, Healer, Caster},
		ROGUE = {Melee, Melee, Melee},
		SHAMAN = {Caster, Melee, Healer},
		WARLOCK = {Caster, Caster, Caster},
		WARRIOR = {Melee, Melee, Tank}
	}

	local Specialization = GetSpecialization() or 0
	local Class = select(2, UnitClass("player"))
	return Roles[Class][Specialization]
end

K.UIName = "KkthnxUI"
K.Noop = function() return end
K.Unit = UnitGUID("player")
K.Name = UnitName("player")
K.Class = select(2, UnitClass("player"))
K.Role = CheckRole("player")
K.Spec = GetSpecialization() or 0
K.Race = select(2, UnitRace("player"))
K.Level = UnitLevel("player")
K.Client = GetLocale()
K.Realm = GetRealmName()
-- Currently in Legion logging in while in Windowed mode will cause the game to use "Custom" resolution and GetCurrentResolution() returns 0. We use GetCVar("gxWindowedResolution") as fail safe
K.Resolution = ({GetScreenResolutions()})[GetCurrentResolution()] or GetCVar("gxWindowedResolution")
K.Color = K.Class == "PRIEST" and K.PriestColors or (CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[K.Class] or RAID_CLASS_COLORS[K.Class])
K.Version = GetAddOnMetadata(K.UIName, "Version")
K.ScreenWidth, K.ScreenHeight = DecodeResolution(K.Resolution)
K.VersionNumber = tonumber(K.Version)
K.WoWPatch, K.WoWBuild, K.WoWPatchReleaseDate, K.TocVersion = GetBuildInfo()
K.WoWBuild = select(2, GetBuildInfo()) K.WoWBuild = tonumber(K.WoWBuild)

K.AddOns = {}
for i = 1, GetNumAddOns() do
	local AddOnName = GetAddOnInfo(i)
	K.AddOns[string_lower(AddOnName)] = GetAddOnEnableState(K.Name, AddOnName) > 0
end

local RoleUpdater = CreateFrame("Frame")
RoleUpdater:RegisterEvent("PLAYER_ENTERING_WORLD")
RoleUpdater:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
RoleUpdater:RegisterEvent("PLAYER_TALENT_UPDATE")
RoleUpdater:RegisterEvent("CHARACTER_POINTS_CHANGED")
RoleUpdater:RegisterEvent("UNIT_INVENTORY_CHANGED")
RoleUpdater:RegisterEvent("UPDATE_BONUS_ACTIONBAR")
RoleUpdater:SetScript("OnEvent", CheckRole)