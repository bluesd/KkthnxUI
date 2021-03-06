local K, C, L = unpack(select(2, ...))
if C.ActionBar.Enable ~= true or C.ActionBar.SelfCast ~= true then return end

-- Lua API
local _G = _G
local ipairs = ipairs

-- Wow API
local CreateFrame = _G.CreateFrame
local UIParent = _G.UIParent
local InCombatLockdown = _G.InCombatLockdown
local IsLoggedIn = _G.IsLoggedIn

-- This will not make your macros right-click self-cast.
-- You have to manually add the [button:2] modifier to your macro in order for it to work with right-clicks.
local SelfCast = CreateFrame("frame", "RightClickSelfCast", UIParent)
SelfCast:SetScript("OnEvent", function(self, event, ...) self[event](self, ...) end)

function SelfCast:PLAYER_REGEN_ENABLED()
	self:PLAYER_LOGIN()

	self:UnregisterEvent("PLAYER_REGEN_ENABLED")
	self.PLAYER_REGEN_ENABLED = nil
end

function SelfCast:PLAYER_LOGIN()
	-- if we load/reload in combat don't try to set secure attributes or we get action_blocked errors
	if InCombatLockdown() then self:RegisterEvent("PLAYER_REGEN_ENABLED") return end

	for id = 1, 12 do
		local button = _G["ActionButton"..id]
		if button ~= nil then
			button:SetAttribute("unit2", "player")
		end
	end

	if event == "PLAYER_LOGIN" then
		self:UnregisterEvent("PLAYER_LOGIN")
		self.PLAYER_LOGIN = nil
	end
end

if IsLoggedIn() then SelfCast:PLAYER_LOGIN() else SelfCast:RegisterEvent("PLAYER_LOGIN") end