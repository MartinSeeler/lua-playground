local Inventory
do
  local _base_0 = {
    add_item = function(self, name)
      if self.items[name] then
        self.items[name] = self.items[name] + 1
      else
        self.items[name] = 1
      end
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self)
      self.items = { }
    end,
    __base = _base_0,
    __name = "Inventory"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Inventory = _class_0
  return _class_0
end
