Queue = {
    values = {},
    new = function(self)
            local obj = {
                values = self.values
            }
            setmetatable(obj, self)
            return obj
        end,
    remove = function(self) 
            local val = values[#values]
            values[#values] = nil
            return val
        end,
    add = function(self, value) values[#values + 1] = value end,
}
