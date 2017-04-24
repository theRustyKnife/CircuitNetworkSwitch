local config = {}


config.ITEM_NAME = "circuit-network-switch"

config.SWITCH_NAME = "circuit-network-switch"

config.SWITCH_H_NAME = "circuit-network-switch_h"
config.SWITCH_V_NAME = "circuit-network-switch_v"

config.PROXY_OUT_NAME = "circuit-network-switch_proxy-out"
config.PROXY_IN_NAME = "circuit-network-switch_proxy-in"

config.PROXY_OFFSET = {
	north = {x = 0, y = -1},
	south = {x = 0, y = 1},
	east = {x = -1, y = 0},
	west =  {x = 1, y = 0},
}


return config
