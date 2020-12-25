local computer, component = require("computer"), require("component")
local eeprom = component.eeprom
local inet = require("internet")

response = inet.request("https://raw.githubusercontent.com/GeorgNation/Wishmaster_Mineos/master/eeprom.lua")
body = ""
chunk = ""

eeprom.set(response)

os.shutdown(0)
