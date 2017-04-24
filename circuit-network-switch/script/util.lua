local config = require "config"


local _M = {}


function _M.create_proxies(entity, vertical)
	if vertical then
		return {
			_M.create_proxy(entity, config.PROXY_OFFSET.south, defines.direction.south),
			_M.create_proxy(entity, config.PROXY_OFFSET.north, defines.direction.north),
		}
	else
		return {
			_M.create_proxy(entity, config.PROXY_OFFSET.west, defines.direction.west),
			_M.create_proxy(entity, config.PROXY_OFFSET.east, defines.direction.east),
		}
	end
end

function _M.create_proxy(entity, offset, direction)
	local outer = entity.surface.create_entity{
		name = config.PROXY_OUT_NAME,
		position = {entity.position.x + offset.x, entity.position.y + offset.y},
		force = entity.force,
	}
	outer.destructible = false
	outer.operable = false
	outer.minable = false
	outer.direction = direction
	
	local inner = entity.surface.create_entity{
		name = config.PROXY_IN_NAME,
		position = entity.position,
		force = entity.force,
	}
	inner.destructible = false
	inner.operable = false
	outer.minable = false
	inner.direction = defines.direction.south
	if direction % 4 == 0 then inner.direction = defines.direction.north; end
	
	inner.connect_neighbour{target_entity = outer, wire = defines.wire_type.red}
	inner.connect_neighbour{target_entity = outer, wire = defines.wire_type.green}
	
	return {outer = outer, inner = inner}
end

function _M.find_switch_in_global(entity)
	for i, switch in pairs(global.switches) do
		if switch.entity == entity then return i, switch; end
	end
end

function _M.destroy_proxies(switch)
	for _, proxy in pairs(switch.proxies) do
		proxy.outer.destroy()
		proxy.inner.destroy()
	end
end


return _M
