local frame = CreateFrame("Frame", "GGGGG");
frame:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT");

local function eventHandler(self, event, ...)
  SendChatMessage(string.rep("G", math.random(5, 12)), "GUILD")
end
frame:SetScript("OnEvent", eventHandler);