local computer, component = require("computer"), require("component")
local eeprom = component.eeprom

local function download(url)
	local handle, data, chunk = component.proxy(component.list("internet")()).request(url), ""

	while true do
		chunk = handle.read(math.huge)
		if chunk then
			data = data .. chunk
		else
			break
		end
	end

	handle.close()
	return data
end

eeprom.set(download ("http://raw.githubusercontent.com/GeorgNation/Wishmaster_Mineos/master/eeprom.lua"))

error("Unrecoverable error.", 0)
