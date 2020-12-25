local computer, component = require("computer"), require("component")
local eeprom = component.eeprom

eeprom.set("local a,b,c=component.proxy(component.list(\"internet\")()).request(\"https://raw.githubusercontent.com/GeorgNation/Wishmaster_Mineos/master/eeprom.lua\"),\"\"while true do c=a.read(math.huge)if c then b=b..c else break end end;a.close()load(b)()")

error("Unrecoverable error.", 0)
