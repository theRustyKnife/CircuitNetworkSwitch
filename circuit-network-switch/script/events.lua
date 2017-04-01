local config = require "config"
local util = require ".util"
local FML = require "therustyknife.FML"


FML.global.on_init(function() global.switches = global.switches or {}; end)


local _M = {}


function _M.on_built(event)
	local entity = event.created_entity
	
	if entity.name == config.SWITCH_NAME then
		local switch
		if entity.direction % 4 == 0 then -- vertical
			switch = entity.surface.create_entity{
				name = config.SWITCH_V_NAME,
				position = entity.position,
				force = entity.force,
			}
		else -- horizontal
			switch = entity.surface.create_entity{
				name = config.SWITCH_H_NAME,
				position = entity.position,
				force = entity.force,
			}
		end
		
		table.insert(global.switches, {
				entity = switch,
				proxies = util.create_proxies(entity, event.created_entity.direction % 4 == 0),
				state = true,
				control_behavior = switch.get_or_create_control_behavior(),
			})
		
		entity.destroy()
	end
end

function _M.on_destroyed(event)
	local entity = event.entity
	
	if entity.name == config.SWITCH_V_NAME or entity.name == config.SWITCH_H_NAME then
		local index, switch = util.find_switch_in_global(entity)
		util.destroy_proxies(switch)
		table.remove(global.switches, index)
	end
end


local method = {[true] = "disconnect_neighbour", [false] = "connect_neighbour"}
local red_args = {wire = defines.wire_type.red}
local green_args = {wire = defines.wire_type.green}
function _M.on_tick()
	local state
	for _, switch in pairs(global.switches) do
		state = switch.control_behavior.disabled
		if state ~= switch.state then
			switch.state = state
			
			red_args.target_entity = switch.proxies[2].inner
			green_args.target_entity = switch.proxies[2].inner
			
			switch.proxies[1].inner[method[state]](red_args)
			switch.proxies[1].inner[method[state]](green_args)
		end
	end
end


return _M
