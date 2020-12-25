local computer, component = require("computer"), require("component")
local eeprom = component.eeprom

file = io.open("eeprom.lua")
text = file:read("*a")

file:close()

eeprom.set(text)

error("Unrecoverable error.", 0)
