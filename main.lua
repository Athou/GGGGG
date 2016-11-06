local frame = CreateFrame("Frame", "GGGGG");
frame:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT");

local last_trigger_time = 0
local function eventHandler(self, event, ...)
  local _, sender = ...
  if sender ~= UnitName("player") and (time() - last_trigger_time) > 5 then
    SendChatMessage(string.rep("G", math.random(5, 12)), "GUILD")
	last_trigger_time = time()
  end
end
frame:SetScript("OnEvent", eventHandler);