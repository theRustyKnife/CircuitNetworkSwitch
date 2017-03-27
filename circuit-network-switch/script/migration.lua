version = require "semver"
util = require "util"

local migration = {}

function migration.init()
	if type(global.switches) ~= "table" then global.switches = {} end
end

function migration.migrate(data)
	if data.mod_changes["circuit-network-switch"] and data.mod_changes["circuit-network-switch"].old_version then
		local old_version = version(data.mod_changes["circuit-network-switch"].old_version)
		if old_version < version"0.1.3" then
			for i, v in pairs(global.switches) do
				v.proxies[1].destroy()
				v.proxies[2].destroy()
				
				local res = {
					switch = v.switch,
					proxies = util.create_proxies(v.switch),
					state = true,
					control_behavior = v.switch.get_or_create_control_behavior()
				}
				global.switches[i] = res
			end
		end
	end
end

return migration