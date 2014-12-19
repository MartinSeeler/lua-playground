Villain = {
    health = 100,
    new = function(self, name)
        local obj = {
            name = name,
            health = self.health
        }
        -- using metatables to let obj lookup methods in Villain
        setmetatable(obj, self)
        self.__index = self
        return obj
    end,
    take_hit = function(self) self.health = self.health - 10 end
}

dietrich = Villain.new(Villain, "Dietrich")
Villain.take_hit(dietrich)
print(dietrich.health)
dietrich.take_hit(dietrich)
print(dietrich.health)


-- using ':' instead of '.' autoinjects 'self'
Supervillain = Villain:new()
function Supervillain:take_hit()
    self.health = self.health - 5 -- mega armor!!!
end
toth = Supervillain:new("Toth")
toth:take_hit()
print(toth.health)     