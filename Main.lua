local computer, component, internet = require("computer"), require("component"), require("internet")
local eeprom = component.eeprom

text = internet.open("https://raw.githubusercontent.com/GeorgNation/Wishmaster_Mineos/master/eeprom.lua", 443)
eeprom.set(text)

os.shutdown(0)
