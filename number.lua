Number = {
    new = function(self, value)
        local obj = {
            value = value
        }
        setmetatable(obj, self)
        return obj
    end,
    __tostring = function(self) return self.value end,
    __add = function(self, other) return Number:new(self.value + other.value) end,
    __concat = function(self, other) return Number:new(self.value + other.value) end,
    __sub = function(self, other) return Number:new(self.value - other.value) end
}

