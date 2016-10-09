data:extend({
	--proxies for the wires to be switched
	{
		type = "constant-combinator",
		name = "circuit-network-switch-proxy-trans",
		icon = "__circuit-network-switch__/graphics/trans.png",
		flags = {"placeable-neutral", "player-creation"},
		selectable_in_game = false,
		max_health = 100000,
		order = "itsdafirstman",
		
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		collision_mask = {},
		
		item_slot_count = 0,

		sprites =
		{
			north =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				x = 0,
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			east =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			south =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				x = 0,
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			west =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			}
		},

		activity_led_sprites =
		{
			north =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.296875, -0.40625},
			},
			east =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.25, -0.03125},
			},
			south =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {-0.296875, -0.078125},
			},
			west =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {-0.21875, -0.46875},
			}
		},

		activity_led_light =
		{
			intensity = 0,
			size = 0,
		},

		activity_led_light_offsets =
		{
			{0.296875, -0.40625},
			{0.25, -0.03125},
			{-0.296875, -0.078125},
			{-0.21875, -0.46875}
		},

		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {0.15625, -0.28125},
					green = {0.65625, -0.25}
				},
				wire =
				{
					red = {-0.28125, -0.5625},
					green = {0.21875, -0.5625},
				}
			},
			{
				shadow =
				{
					red = {0.15, -0.15625},
					green = {0.15, 0.25},
				},
				wire =
				{
					red = {-0.13125, -0.5},
					green = {-0.13125, -0.09375},
				}
			},
			{
				shadow =
				{
					red = {0.75, 0.5625},
					green = {0.21875, 0.5625}
				},
				wire =
				{
					red = {0.28125, 0.15625},
					green = {-0.21875, 0.15625}
				}
			},
			{
				shadow =
				{
					red = {0.56875, 0.28125},
					green = {0.56875, -0.125},
				},
				wire =
				{
					red = {0.13125, -0.05},
					green = {0.13125, -0.50625},
				}
			}
		},
		
		circuit_wire_max_distance = 3,
	},
	{
		type = "constant-combinator",
		name = "circuit-network-switch-proxy",
		icon = "__circuit-network-switch__/graphics/trans.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 100000,
		order = "itsdafirstman",
		
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		collision_mask = {},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

		item_slot_count = 0,

		sprites =
		{
			north =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				x = 0,
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			east =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			south =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				x = 0,
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			west =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				x = 0,
				y = 0,
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			}
		},

		activity_led_sprites =
		{
			north =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.296875, -0.40625},
			},
			east =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {0.25, -0.03125},
			},
			south =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {-0.296875, -0.078125},
			},
			west =
			{
				filename = "__circuit-network-switch__/graphics/trans.png",
				width = 0,
				height = 0,
				frame_count = 1,
				shift = {-0.21875, -0.46875},
			}
		},

		activity_led_light =
		{
			intensity = 0,
			size = 0,
		},

		activity_led_light_offsets =
		{
			{0.296875, -0.40625},
			{0.25, -0.03125},
			{-0.296875, -0.078125},
			{-0.21875, -0.46875}
		},

		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {0.15625, -0.28125},
					green = {0.65625, -0.25}
				},
				wire =
				{
					red = {-0.28125, -0.5625},
					green = {0.21875, -0.5625},
				}
			},
			{
				shadow =
				{
					red = {0.15, -0.15625},
					green = {0.15, 0.25},
				},
				wire =
				{
					red = {-0.13125, -0.5},
					green = {-0.13125, -0.09375},
				}
			},
			{
				shadow =
				{
					red = {0.75, 0.5625},
					green = {0.21875, 0.5625}
				},
				wire =
				{
					red = {0.28125, 0.15625},
					green = {-0.21875, 0.15625}
				}
			},
			{
				shadow =
				{
					red = {0.56875, 0.28125},
					green = {0.56875, -0.125},
				},
				wire =
				{
					red = {0.13125, -0.05},
					green = {0.13125, -0.50625},
				}
			}
		},

		circuit_wire_max_distance = 7.5
	},
	--the 'middle piece' that's going to control the thing
	{
		type = "lamp",
		name = "circuit-network-switch",
		icon = "__base__/graphics/icons/arithmetic-combinator.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "circuit-network-switch"},
		max_health = 55,
		corpse = "small-remnants",
		collision_box = {{-1.15, -0.15}, {1.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "1KW",
		
		picture_off =
		{
			filename = "__circuit-network-switch__/graphics/switch/horizontal-off.png",
			priority = "high",
			width = 105,
			height = 51,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			scale = 0.9,
			shift = {0.2, -0.1},
		},
		picture_on =
		{
			filename = "__circuit-network-switch__/graphics/switch/horizontal-on.png",
			priority = "high",
			width = 105,
			height = 51,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			scale = 0.9,
			shift = {0.2, -0.1},
		},

		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.734375, 0.578125},
				green = {0.609375, 0.640625},
			},
			wire =
			{
				red = {-0.25, -0.65},
				green = {0.25, -0.65},
			}
		},
		circuit_wire_max_distance = 7.5
	},
	{
		type = "item",
		name = "circuit-network-switch",
		icon = "__base__/graphics/icons/arithmetic-combinator.png",
		flags = {"goes-to-quickbar"},
		subgroup = "circuit-network",
		order = "a[robot]-b[construction-robot]",
		place_result = "circuit-network-switch",
		stack_size = 50
	},
	{
		type = "recipe",
		name = "circuit-network-switch",
		enabled = "false",
		ingredients =
		{
			{"copper-cable", 5},
			{"electronic-circuit", 5},
		},
		result = "circuit-network-switch"
	},
})