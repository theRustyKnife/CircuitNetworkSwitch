table.insert(data.raw["technology"]["circuit-network"].effects,
{
	type = "unlock-recipe",
	recipe = "circuit-network-switch"
})

local v_sprite = {
	filename = "__circuit-network-switch__/graphics/switch/vertical-off.png",
	width = 63,
	height = 87,
	frame_count = 1,
	shift = {0.140625, 0.140625},
}

local h_sprite = {
	filename = "__circuit-network-switch__/graphics/switch/horizontal-off.png",
	width = 105,
	height = 51,
	frame_count = 1,
	shift = {0.140625, 0.140625},
}

local place_proxy = util.table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
place_proxy.name = "circuit-network-switch-place-proxy"
place_proxy.sprites = {
	north = v_sprite,
	east = h_sprite,
	south = v_sprite,
	west = h_sprite
}
place_proxy.collision_box = {{-0.15, -1.15}, {0.15, 1.15}}

data:extend{place_proxy}