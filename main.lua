local SILENCE_TIME = 10
local RANDOM_WAIT_TIME_LOW = 3
local RANDOM_WAIT_TIME_HIGH = 8
local G_LOW = 5
local G_HIGH = 12


local frame = CreateFrame("Frame", "GGGGG");
frame:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT");

local last_trigger_time = 0
local function eventHandler(self, event, ...)
  local _, sender = ...
  if sender ~= (UnitName("player") .. "-" .. GetRealmName()) and (time() - last_trigger_time) > SILENCE_TIME then
    last_trigger_time = time()
    C_Timer.After(math.random(RANDOM_WAIT_TIME_LOW, RANDOM_WAIT_TIME_HIGH), function() 
      SendChatMessage(string.rep("G", math.random(G_LOW, G_HIGH)), "GUILD") 
    end)
  end
end
frame:SetScript("OnEvent", eventHandler);