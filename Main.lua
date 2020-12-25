local computer, component = require("computer"), require("component")
local eeprom = component.eeprom
local inet = require("internet")

local response = inet.request("https://raw.githubusercontent.com/GeorgNation/Wishmaster_Mineos/master/eeprom.lua")
local body = ""
for chunk in response do
  body = body .. chunk
end

eeprom.set(body)

os.shutdown(0)
