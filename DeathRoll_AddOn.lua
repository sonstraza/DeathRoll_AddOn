-- NOTE: Mayron on YouTube has great follow along videos for addons.
-- Using it to make this addons

--Author: Alex
--Last Edit: 6/5/2020

print("Death Roll Initiated");
print("MAY THE GODS BE IN YOUR FAVOR " .. UnitName("player"));


--playersInGroup[GetNumGroupMembers()];
print("Number of party memembers = " .. GetNumGroupMembers());
print("Number of friends = " .. GetNumFriends());

local frame_deathRoll = CreateFrame("DeathRoll",nil,UIParent);
frame_deathRoll:SetSize(300,360);
frame_deathRoll:SetPoint("CENTER", UIParent, "CENTER");

-- frame_deathRoll is the Parent frame for all other child frames and layered.
-- Regions will be added on top to make it graphical!

-- Child frames: