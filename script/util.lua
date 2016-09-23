local util = {}

function util.destroy_proxies(switch)
	for _, v in pairs(switch.proxies) do
		v.destroy()
	end
end

function util.create_proxies(switch)
	return {
		util.create_proxy(switch, {x = 1, y = 0}),
		util.create_proxy(switch, {x = -1, y = 0})
	}
end

function util.create_proxy(switch, offset)
	local res = switch.surface.create_entity{
		name = "circuit-network-switch-proxy",
		position = {switch.position.x + offset.x, switch.position.y + offset.y},
		force = switch.force
	}
	
	res.destructible = false
	res.operable = false
	
	return res
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