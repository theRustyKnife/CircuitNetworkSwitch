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
					red = {0.75, -0.15625},
					green = {0.75, 0.25},
				},
				wire =
				{
					red = {0.46875, -0.5},
					green = {0.46875, -0.09375},
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
					red = {-0.03125, 0.28125},
					green = {-0.03125, -0.125},
				},
				wire =
				{
					red = {-0.46875, 0},
					green = {-0.46875, -0.40625},
				}
			}
		},

		circuit_wire_max_distance = 7.5
	},
	{
		type = "constant-combinator",
		name = "circuit-network-switch-proxy",
		icon = "__circuit-network-switch__/graphics/trans.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 100000,
		order = "itsdafirstman",
		
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

		item_slot_count = 0,

		sprites =
		{
			north =
			{
				filename = "__base__/graphics/entity/combinator/combinator-entities.png",
				x = 158,
				y = 126,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			east =
			{
				filename = "__base__/graphics/entity/combinator/combinator-entities.png",
				y = 126,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			south =
			{
				filename = "__base__/graphics/entity/combinator/combinator-entities.png",
				x = 237,
				y = 126,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			west =
			{
				filename = "__base__/graphics/entity/combinator/combinator-entities.png",
				x = 79,
				y = 126,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			}
		},

		activity_led_sprites =
		{
			north =
			{
				filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-north.png",
				width = 11,
				height = 10,
				frame_count = 1,
				shift = {0.296875, -0.40625},
			},
			east =
			{
				filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-east.png",
				width = 14,
				height = 12,
				frame_count = 1,
				shift = {0.25, -0.03125},
			},
			south =
			{
				filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-south.png",
				width = 11,
				height = 11,
				frame_count = 1,
				shift = {-0.296875, -0.078125},
			},
			west =
			{
				filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-west.png",
				width = 12,
				height = 12,
				frame_count = 1,
				shift = {-0.21875, -0.46875},
			}
		},

		activity_led_light =
		{
			intensity = 0.8,
			size = 1,
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
					red = {0.75, -0.15625},
					green = {0.75, 0.25},
				},
				wire =
				{
					red = {0.46875, -0.5},
					green = {0.46875, -0.09375},
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
					red = {-0.03125, 0.28125},
					green = {-0.03125, -0.125},
				},
				wire =
				{
					red = {-0.46875, 0},
					green = {-0.46875, -0.40625},
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
		--light = {intensity = 0.9, size = 40},
		--light_when_colored = {intensity = 1, size = 6},
		--glow_size = 6,
		--glow_color_intensity = 0.135,
		picture_off =
		{
			filename = "__base__/graphics/entity/small-lamp/light-off.png",
			priority = "high",
			width = 67,
			height = 58,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.015625, 0.15625},
		},
		picture_on =
		{
			filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
			priority = "high",
			width = 62,
			height = 62,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.03125, -0.03125},
		},
		signal_to_color_mapping =
		{
			{signal="signal-red", color={r=1,g=0,b=0}},
			{signal="signal-green", color={r=0,g=1,b=0}},
			{signal="signal-blue", color={r=0,g=0,b=1}},
			{signal="signal-yellow", color={r=1,g=1,b=0}},
			{signal="signal-pink", color={r=1,g=0,b=1}},
			{signal="signal-cyan", color={r=0,g=1,b=1}},
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
				red = {0.40625, 0.34375},
				green = {0.40625, 0.5},
			}
		},
		circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.28125}, {0.1875, 0.28125}, 18),
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