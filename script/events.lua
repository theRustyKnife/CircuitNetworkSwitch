util = require "util"

function on_built(event)
	if event.created_entity.name == "circuit-network-switch-place-proxy" then
		local switch
		if event.created_entity.direction % 4 == 0 then --vertical
			switch = event.created_entity.surface.create_entity{
				name = "circuit-network-switch-v",
				position = event.created_entity.position,
				force = event.created_entity.force
			}
		else --horizontal
			switch = event.created_entity.surface.create_entity{
				name = "circuit-network-switch",
				position = event.created_entity.position,
				force = event.created_entity.force
			}
		end
		
		local res = {
			switch = switch,
			proxies = util.create_proxies(switch, event.created_entity.direction % 4 == 0),
			state = true,
			control_behavior = switch.get_or_create_control_behavior()
		}
		table.insert(global.switches, res)
		
		event.created_entity.destroy()
	end
end

function on_destroyed(event)
	if event.entity.name == "circuit-network-switch" or event.entity.name == "circuit-network-switch-v" then
		local switch_index = util.find_switch_in_global(event.entity)
		
		util.destroy_proxies(global.switches[switch_index])
		
		table.remove(global.switches, switch_index)
	end
end

local method = {[true] = 'disconnect_neighbour', [false] = 'connect_neighbour'}
local red_args = {wire = defines.wire_type.red}
local green_args = {wire = defines.wire_type.green}
script.on_event(defines.events.on_tick, function(event)
	local state
	for _, v in pairs(global.switches) do
		state = v.control_behavior.disabled
		if state ~= v.state then
			v.state = state
			
			red_args.target_entity = v.proxies[2].inner
			green_args.target_entity = v.proxies[2].inner
			
			v.proxies[1].inner[method[state]](red_args)
			v.proxies[1].inner[method[state]](green_args)
		end
	end
end)

--built
script.on_event(defines.events.on_built_entity, on_built)
script.on_event(defines.events.on_robot_built_entity, on_built)

--destroyed
script.on_event(defines.events.on_entity_died, on_destroyed)
script.on_event(defines.events.on_preplayer_mined_item, on_destroyed)
script.on_event(defines.events.on_robot_pre_mined, on_destroyed)