local migration = {}

function migration.init()
	if type(global.switches) ~= "table" then global.switches = {} end
end

return migration