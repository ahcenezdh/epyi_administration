---
--- @author Epyi - Work FiveM
--- @version 0.2.0
--- created at [04/08/2023 14:21]
---

fx_version("cerulean")
game("gta5")

name("epyi_administration")
description("A RageUI Administration for ESX Legacy 1.7.5 or newer")
author("Epyi (https://discord.gg/VyRPheG6Es)")
version("0.2.0")

shared_scripts({
	"shared/locale.lua",
	"locales/*.lua",

	"@es_extended/imports.lua",
	"config.lua",
})

client_scripts({
	"src/RMenu.lua",
	"src/menu/RageUI.lua",
	"src/menu/Menu.lua",
	"src/menu/MenuController.lua",
	"src/components/*.lua",
	"src/menu/elements/*.lua",
	"src/menu/items/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/windows/*.lua",

	"client/var_init.lua",
	"client/instructionnal.lua",
	"client/menus_init.lua",
	"client/keys.lua",
	"client/misc.lua",
	"client/threads.lua",
	"client/menus/*.lua",
})

server_scripts({
	"@oxmysql/lib/MySQL.lua",
	"server/misc.lua",
	"server/version.lua",
	"server/logs.lua",
	"server/var_init.lua",
	"server/permissions.lua",
	"server/datastore.lua",
	"server/players.lua",
	"server/ban.lua",
	"server/reports.lua",
	"server/spectate.lua",
	"server/favorites_vehicles.lua",
})

dependencies({
	"es_extended",
	"oxmysql",
	"esx_status",
})
