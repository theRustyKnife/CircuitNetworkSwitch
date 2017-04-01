local config = {}


-- GENRAL --
-- The name of the mod FML is installed in - will be used for checking on_configuration_changed and saving some data (needs to be unique)
config.MOD_NAME = "circuit-network-switch"

-- The directory FML is installed in - will be used for adressing graphics
config.FML_PATH = "/FML"

-- If set to true modules won't be loaded using pcall, therefore crashing if there are errors - good for debugging
config.FORCE_LOAD_MODULES = false

-- If set to true then the on_load event will be raised after on_init too
config.ON_LOAD_AFTER_INIT = true

-- The module names with paths that init will attempt to load
config.MODULES_TO_LOAD = {
	Object = ".modules.Object",
	surface = ".modules.surface",
	table = ".modules.table",
	data = ".modules.data",
	blueprint_data = ".modules.blueprint_data",
	format = ".modules.format",
}

-- The name of the global table FML will use. You shouldn't need to change this unless you have a global table with my name for some reason...
-- Changing this will likely break backwards compatibility.
config.GLOBAL_NAME = "therustyknife"


-- DATA --
-- Default icon to use where none was specified and it's mandatory
config.DEFAULT_ICON_PATH = "__core__/graphics/clear.png"

-- The default base for auto-generated items
config.ITEM_BASE = {
	type = "item",
	icon = DEFAULT_ICON_PATH,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "unspecified",
	stack_size = 50,
}

-- The default base for auto-generated recipes
config.RECIPE_BASE = {
	type = "recipe",
	enabled = false,
}

-- Default minable values
config.DEFAULT_MINABLE = {hardness = 0.2, mining_time = 0.5}


-- BLUEPRINT_DATA --
-- The path to the settings definition, nil if none
config.BLUEPRINT_DATA_PATH = nil

-- The name to use for the prototype, will be prefixed with mod name and FML
config.BLUEPRINT_DATA_PROTOTYPE_NAME = "blueprint-data-prototype"

-- The size of the proxy - should be the same as the size of your entity
config.BLUEPRINT_PROXY_SIZE = {{-0.35, -0.35}, {0.35, 0.35}}


return config
