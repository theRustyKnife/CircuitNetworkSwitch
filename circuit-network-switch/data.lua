local FML = require "FML.init"
local config = require "config"


local v_sprite = {
	filename = "__circuit-network-switch__/graphics/switch/vertical-off.png",
	width = 63,
	height = 87,
	frame_count = 1,
	shift = {0.15, 0},
}
local v_sprite_on = FML.table.deep_copy(v_sprite)
v_sprite_on.filename = "__circuit-network-switch__/graphics/switch/vertical-on.png"

local h_sprite = {
	filename = "__circuit-network-switch__/graphics/switch/horizontal-off.png",
	width = 105,
	height = 51,
	frame_count = 1,
	scale = 0.95,
	shift = {0.2, -0.05},
}
local h_sprite_on = FML.table.deep_copy(h_sprite)
h_sprite_on.filename = "__circuit-network-switch__/graphics/switch/horizontal-on.png"


local trans_sprite = {
	filename = "__circuit-network-switch__/graphics/trans.png",
	x = 0,
	y = 0,
	width = 0,
	height = 0,
}
local trans_sprites = {
	north = trans_sprite,
	east = trans_sprite,
	south = trans_sprite,
	west = trans_sprite,
}


-- the inner proxy combinator - the part that actually does the connecting
FML.data.make_prototype{
	base = FML.data.inherit("constant-combinator"),
	properties = {
		name = config.PROXY_IN_NAME,
		icon = "__circuit-network-switch__/graphics/trans.png",
		selectable_in_game = false,
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}}, -- can't be 0 because of weird alignment issues
		collision_mask = {},
		item_slot_count = 0,
		
		circuit_wire_connection_points = {
			{
				shadow = {
					red = {0.21875, -0.1},
					green = {0.75, -0.1},
				},
				wire = {
					red = {-0.35, -0.1},
					green = {0.35, -0.1},
				},
			},
			{
				shadow = {
					red = {0.15, -0.15625},
					green = {0.15, 0.25},
				},
				wire = {
					red = {-0.13125, -0.5},
					green = {-0.13125, -0.09375},
				},
			},
			{
				shadow = {
					red = {0.75, 0.5625},
					green = {0.21875, 0.5625},
				},
				wire = {
					red = {0.35, 0.15625},
					green = {-0.35, 0.15625},
				},
			},
			{
				shadow = {
					red = {0.56875, 0.28125},
					green = {0.56875, -0.125},
				},
				wire = {
					red = {0.13125, -0.05},
					green = {0.13125, -0.50625},
				},
			},
		},
		
		circuit_wire_max_distance = 3,
		
		sprites = trans_sprites,
		activity_led_sprites = trans_sprites,
		
		activity_led_light = {
			intensity = 0,
			size = 0,
		},
		activity_led_light_offsets = {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
	},
	auto_generate = {"item"},
}

-- the outer proxy - selectable, only for user interaction
FML.data.make_prototype{
	base = FML.data.inherit("constant-combinator", config.PROXY_IN_NAME),
	properties = {
		name = config.PROXY_OUT_NAME,
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		selectable_in_game = true,
		
		circuit_wire_connection_points = {
			{
				shadow = {
					red = {0.25, 0},
					green = {0.75, 0},
				},
				wire = {
					red = {-0.25, -0.1},
					green = {0.28125, -0.1},
				},
			},
			{
				shadow = {
					red = {0.15, -0.15625},
					green = {0.15, 0.25},
				},
				wire = {
					red = {-0.13125, -0.5},
					green = {-0.13125, -0.09375},
				},
			},
			{
				shadow = {
					red = {0.25, 0.2},
					green = {0.75, 0.2},
				},
				wire = {
					red = {-0.25, -0.15},
					green = {0.28125, -0.15},
				},
			},
			{
				shadow = {
					red = {0.56875, 0.28125},
					green = {0.56875, -0.125},
				},
				wire = {
					red = {0.13125, -0.05},
					green = {0.13125, -0.50625},
				},
			}
		},

		circuit_wire_max_distance = 7.5,
	},
	auto_generate = {"item"},
}


-- the actual switch entity - horizontal position
FML.data.make_prototype{
	base = FML.data.inherit("lamp", "small-lamp"),
	properties = {
		name = config.SWITCH_H_NAME,
		max_health = 55,
		icon = "__circuit-network-switch__/graphics/icons/switch.png",
		
		collision_box = {{-1.15, -0.15}, {1.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		
		energy_usage_per_tick = "1KW",
		
		picture_off = h_sprite,
		picture_on = h_sprite_on,
		
		circuit_wire_connection_point = {
			shadow = {
				red = {0.734375, 0.578125},
				green = {0.609375, 0.640625},
			},
			wire = {
				red = {-0.25, -0.65},
				green = {0.25, -0.65},
			},
		},
		circuit_wire_max_distance = 7.5,
	},
	auto_generate = {"item"},
}.minable.result = config.ITEM_NAME

-- the switch entity vertical version (lamps can't be rotated)
FML.data.make_prototype{
	base = FML.data.inherit("lamp", config.SWITCH_H_NAME),
	properties = {
		name = config.SWITCH_V_NAME,
		collision_box = {{-0.15, -1.15}, {0.15, 1.15}},
		picture_off = v_sprite,
		picture_on = v_sprite_on,
		
		circuit_wire_connection_point = {
			shadow = {
				red = {0.734375, 0.578125},
				green = {0.609375, 0.640625},
			},
			wire = {
				red = {-0.25, -0.4},
				green = {0.25, -0.4},
			},
		},
	},
	auto_generate = {"item"},
}.minable.result = config.ITEM_NAME

FML.data.make_prototypes{
	-- thing that's going to be placed - can't be direct because lamps are not rotatable
	{
		base = FML.data.inherit("constant-combinator"),
		properties = {
			name = config.SWITCH_NAME,
			sprites = {
				north = v_sprite,
				east = h_sprite,
				south = v_sprite,
				west = h_sprite
			},
			collision_box = data.raw["lamp"][config.SWITCH_V_NAME].collision_box,
		},
	},
	{
		type = "item",
		name = config.ITEM_NAME,
		icon = "__circuit-network-switch__/graphics/icons/switch.png",
		flags = {"goes-to-quickbar"},
		subgroup = "circuit-network",
		order = "b[combinators]-f[circuit-network-switch]",
		place_result = config.SWITCH_NAME,
		stack_size = 50,
	},
	{
		type = "recipe",
		name = config.ITEM_NAME,
		enabled = false,
		ingredients = {
			{"copper-cable", 5},
			{"electronic-circuit", 5},
		},
		result = config.ITEM_NAME,
	},
}

table.insert(data.raw["technology"]["circuit-network"].effects, {
		type = "unlock-recipe",
		recipe = config.ITEM_NAME,
	})
