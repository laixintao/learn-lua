function valus(t)
    local i = 0
    return function ()
        i = i + 1
        return t[i]
    end
end


local a = {hello = "world", foo = "bar"}

print(a)
print(a.hello)

for v in valus(a) do
    print(v)
end

for i, v in ipairs(a) do
    print(i .. v)
end

for i, v in pairs(a) do
    print(i .. v)
end

local array = {"kel", "s", "mother"}
for i, key in pairs(array) do
    print(i, key)
end
