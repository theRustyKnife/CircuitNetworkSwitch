local util = {}

function util.destroy_proxies(switch)
	for _, v in pairs(switch.proxies) do
		v.out.destroy()
		v.inner.destroy()
	end
end

function util.create_proxies(switch, direction)
	if direction then
		return {
			util.create_proxy(switch, {x = 0, y = 1}, defines.direction.south),
			util.create_proxy(switch, {x = 0, y = -1}, defines.direction.north)
		}
	end
	return {
		util.create_proxy(switch, {x = 1, y = 0}, defines.direction.west),
		util.create_proxy(switch, {x = -1, y = 0}, defines.direction.east)
	}
end

function util.create_proxy(switch, offset, direction)
	local out = switch.surface.create_entity{
		name = "circuit-network-switch-proxy",
		position = {switch.position.x + offset.x, switch.position.y + offset.y},
		force = switch.force
	}
	out.destructible = false
	out.operable = false
	out.direction = direction
	
	local inner = switch.surface.create_entity{
		name = "circuit-network-switch-proxy-trans",
		position = {switch.position.x, switch.position.y},
		force = switch.force
	}
	inner.destructible = false
	inner.operable = false
	inner.direction = defines.direction.south
	if direction == defines.direction.north or direction == defines.direction.south then
		inner.direction = defines.direction.north
	end
	
	inner.connect_neighbour{target_entity = out, wire = defines.wire_type.red}
	inner.connect_neighbour{target_entity = out, wire = defines.wire_type.green}
	
	return {out = out, inner = inner}
end

function util.find_switch_in_global(switch)
	for i, v in pairs(global.switches) do
		if v.switch == switch then return i end
	end
end

function util.are_connected(proxies)
	local res = {red = false, green = false}
	
	--check red  wire
	for _, v in pairs(proxies[1].circuit_connected_entities.red) do
		if v == proxies[2] then res.red = true; break; end
	end
	
	--check green wire
	for _, v in pairs(proxies[1].circuit_connected_entities.green) do
		if v == proxies[2] then res.green = true; break; end
	end
	
	return res
end

return util