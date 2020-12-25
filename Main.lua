local computer, component, io = require("computer"), require("component"), require("filesystem")
local eeprom = component.eeprom

file = io.open("eeprom.lua")
text = file:read("*a")

file:close()

eeprom.set(text)

error("Unrecoverable error.", 0)
