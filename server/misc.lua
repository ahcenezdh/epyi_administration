---timeExpression
---@param expression string
---@return number|boolean
---@public
function timeExpression(expression)
    local timestamp = 0
    local time_multipliers = { d = 86400, h = 3600, m = 60 }

    for char, unit in string.gmatch(expression, "(%d+)([dhm]?)") do
        local num = tonumber(char)
        if not num then
            return false
        end
        timestamp = timestamp + num * (time_multipliers[unit] or 1)
    end

    return timestamp
end