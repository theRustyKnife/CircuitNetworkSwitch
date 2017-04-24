local FML = require "therustyknife.FML"
local util = require "util"
local config = require "config"


local function enable_researched_recipes()
	for _, force in pairs(game.forces) do
		if force.technologies["circuit-network"].researched then
			force.recipes[config.ITEM_NAME].enabled = true
		end
	end
end


FML.global.on_init(function() enable_researched_recipes(); end)

FML.global.on_mod_config_change(function(data)
	enable_researched_recipes()
	
	local old_v = data.mod_changes["circuit-network-switch"].old_version
	
	if not old_v then return; end
	
	log("found circuit-network-switch version "..tostring(old_v))
	
	if old_v < "0.1.3" then
		log(" - updating to 0.1.3")
		
		for i, switch in pairs(global.switches) do
			switch.proxies[1].destroy()
			switch.proxies[2].destroy()
			
			global.switches[i] = {
				switch = switch.switch,
				proxies = util.create_proxies(switch.switch),
				state = true,
				control_behavior = switch.switch.get_or_create_control_behavior(),
			}
		end
	end
	if old_v < "0.2.0" then
		log(" - updating to 0.2.0...")
		
		global.switches = global.switches or {}
		
		for _, switch in pairs(global.switches) do
			switch.entity = switch.switch
			switch.switch = nil
		end
	end
end)
