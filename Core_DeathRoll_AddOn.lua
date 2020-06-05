-- NOTE: Mayron on YouTube has great follow along videos for addons.
-- Using it to make this addons

--Author: Alex
--Last Edit: 6/5/2020


---------------------
--Quality of life----
--Copied from Mayron on YouTube from tutorials
---------------------
SLASH_RELOADUI1 = "/rl" --
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- For quicker access to frame stack
--SlashCmdList.FRAMESTK = function()
--    LoadAddOn('Blizzard_DebugTools')
--    FrameStackTooltip_Toggle()
--end

-- to be able to use the left and right arrows in the edit box
-- without rotating your character
for i = 1, NUM_CHAT_WINDOWS do
  _G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end
----------------------
----------------------
print("Death Roll Initiated");
print("MAY THE GODS BE IN YOUR FAVOR " .. UnitName("player"));


--playersInGroup[GetNumGroupMembers()];
print("Number of party memembers = " .. GetNumGroupMembers());
print("Number of friends = " .. GetNumFriends());

--Notes on layers in WoW:
--The 5 layers go (lowest to highest):
--BACKGROUND >  >>Lowest
--BORDER >
--ARTWORK >
--OVERLAY >
--HIGHLIGHT >> Highest
--These layers overlap in that order

--Consider frame as the super to all other objects like button, slider, etc.

--Create methods make unattached items not requiring other objects

--[[
Create Frame Arguments:
1. The type of frame - "Frame"
2. The global frame name - "DeathRoll_Base"
3. The parent frame (NOT a string!!!)

Less commonly used:
4. A comma separated LIST (string LIST) of XML templates to inherit from
]]
local frame_Base = CreateFrame("Frame", "DeathRoll_Base", UIParent, "BasicFrameTemplateWithInset");

frame_Base:SetSize(300,180);
-- 5 params
----point, relativeFrame, relativePoint, xOffset, yOffset
frame_Base:SetPoint("CENTER", UIParent, "CENTER");
--frame_Base.Show();
-- frame_deathRoll is the Parent frame for all other child frames and layered.
-- Regions will be added on top to make it graphical!

--Child frames:
--local frame_deathRoll = CreateFrame("DeathRoll");

frame_Base.title = frame_Base:CreateFontString(nil, "OVERLAY");
frame_Base.title:SetFontObject("GameFontHighlight");

--UIConfig.TitleBg is relative frame but is a texture not a frame
--SetPoint(point, relativeFrame, relativePoint, x, y)
--Can position widgets realitve to regions and not just frames in realtiveFrame
frame_Base.title:SetPoint("LEFT", frame_Base.TitleBg, "LEFT", 5, 0);
frame_Base.title:SetText("God of Fortune's Death Roller");


-- MAIN Buttons
--- Roll Button

frame_base.rollButton = CreateFrame("Button", nil, frame_Base, "GameMenuButtonTemplate");
--frame_base.rollButton.SetPoint = ("RIGHT", frame_Base, "TOP")
--frame_base.rollButton.SetSize = (140,40);
frame_base.rollButton.SetText("ROLL");
frame_base.rollButton.SetNormalFontObject("GameFontNormalLarge");
frame_base.rollButton.SetHighlightFontObject("GameFontNormalLarge");
