local FML = require "FML.init"
local events = require "script.events"


require "script.migration"


script.on_event(defines.events.on_built_entity, events.on_built)
script.on_event(defines.events.on_robot_built_entity, events.on_built)

script.on_event(defines.events.on_entity_died, events.on_destroyed)
script.on_event(defines.events.on_preplayer_mined_item, events.on_destroyed)
script.on_event(defines.events.on_robot_pre_mined, events.on_destroyed)

script.on_event(defines.events.on_tick, events.on_tick)
