util = require "util"

function on_built(event)
	if event.created_entity.name == "circuit-network-switch"then
		local res = {
			switch = event.created_entity,
			proxies = util.create_proxies(event.created_entity)
		}
		table.insert(global.switches, res)
	end
end

function on_destroyed(event)
	if event.entity.name == "circuit-network-switch" then
		local switch_index = util.find_switch_in_global(event.entity)
		
		util.destroy_proxies(global.switches[switch_index])
		
		table.remove(global.switches, switch_index)
	end
end

local method = {[true] = 'disconnect_neighbour', [false] = 'connect_neighbour'}
script.on_event(defines.events.on_tick, function(event)
	for _, v in pairs(global.switches) do
		local state = v.switch.get_or_create_control_behavior().disabled
		v.proxies[1][method[state]]{target_entity = v.proxies[2], wire = defines.wire_type.red}
		v.proxies[1][method[state]]{target_entity = v.proxies[2], wire = defines.wire_type.green}
	end
end)

--built
script.on_event(defines.events.on_built_entity, on_built)
script.on_event(defines.events.on_robot_built_entity, on_built)

--destroyed
script.on_event(defines.events.on_entity_died, on_destroyed)
script.on_event(defines.events.on_preplayer_mined_item, on_destroyed)
script.on_event(defines.events.on_robot_pre_mined, on_destroyed)