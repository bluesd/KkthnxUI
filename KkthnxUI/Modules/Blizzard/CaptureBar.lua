local K, C, L = unpack(select(2, ...))

-- Wow Lua
local _G = _G

-- Wow API
local UIParent = _G.UIParent

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: NUM_EXTENDED_UI_FRAMES, hooksecurefunc

local function CaptureUpdate()
	if NUM_EXTENDED_UI_FRAMES then
		local captureBar
		for i = 1, NUM_EXTENDED_UI_FRAMES do
			captureBar = _G["WorldStateCaptureBar" .. i]

			if captureBar and captureBar:IsVisible() then
				captureBar:ClearAllPoints()

				if (i == 1) then
					captureBar:SetPoint("TOP", UIParent, "TOP", 0, -170)
				else
					captureBar:SetPoint("TOPLEFT", _G["WorldStateCaptureBar" .. i - 1], "TOPLEFT", 0, -45)
				end
			end
		end
	end
end

local Loading = CreateFrame("Frame")
Loading:RegisterEvent("PLAYER_LOGIN")
Loading:SetScript("OnEvent", function()
	hooksecurefunc("UIParent_ManageFramePositions", CaptureUpdate)
end)