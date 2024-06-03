---doesPlayerHavePermission → get the if the staff has enough permission
---@return boolean
function doesPlayerHavePermission(player)
	if not (Config.Groups[player.getGroup()]) then
		xPlayer.kick(_U("insuficient_permissions"))
		return false
	end
	return true
end