for i = 1, 5 do
    print(i)
end

-- using steps is possible
for i = 0, 100, 20 do
    print(i)
end

math.randomseed(tonumber(tostring(os.time()):reverse():sub(1,6)))
while math.random(100) < 75 do
    print('Let\'s shuffle it all, again!')
end

repeat
  over = os.time() % 10
until over ~= 5
print(over)

while over2 ~= 0 do
    over2 = os.time() % 3
end
