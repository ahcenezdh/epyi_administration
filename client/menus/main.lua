---main_showContentThisFrame → Function to show the main menu content
---@param playerGroup string
---@return void
function main_showContentThisFrame(playerGroup)
	RageUI.Checkbox(
		_U("main_menu_staffmode"),
		_U("main_menu_staffmode_desc"),
		isStaffModeEnabled,
		{},
		function() end,
		function()
			isStaffModeEnabled = true
		end,
		function()
			isStaffModeEnabled = false
			stopAllThreads()
		end
	)
	if not isStaffModeEnabled then
		return
	end
	RageUI.Separator("")
	RageUI.ButtonWithStyle(
		_U("main_menu_access_personnal"),
		_U("main_menu_access_personnal_desc"),
		{ RightLabel = "→" },
		Config.Groups[playerGroup].Access["submenu_personnal_access"],
		function(_, _, _) end,
		RMenu:Get("epyi_administration", "main_personnal")
	)
	RageUI.ButtonWithStyle(
		_U("main_menu_access_players"),
		_U("main_menu_access_players_desc"),
		{ RightLabel = "→" },
		Config.Groups[playerGroup].Access["submenu_players_access"],
		function(_, _, _) end
	)
	RageUI.ButtonWithStyle(
		_U("main_menu_access_vehicles"),
		_U("main_menu_access_vehicles_desc"),
		{ RightLabel = "→" },
		Config.Groups[playerGroup].Access["submenu_vehicles_access"],
		function(_, _, _) end,
		RMenu:Get("epyi_administration", "main_vehicles")
	)
	RageUI.ButtonWithStyle(
		_U("main_menu_access_reports"),
		_U("main_menu_access_reports_desc"),
		{ RightLabel = "→" },
		Config.Groups[playerGroup].Access["submenu_reports_access"],
		function(_, _, _) end
	)
	RageUI.ButtonWithStyle(
		_U("main_menu_access_server"),
		_U("main_menu_access_server_desc"),
		{ RightLabel = "→" },
		Config.Groups[playerGroup].Access["submenu_server_access"],
		function(_, _, _) end
	)
end
