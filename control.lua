migration = require "script.migration"

script.on_init(migration.init)

require("script.events")