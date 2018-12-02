function all_words()
    local line = io.read()
    local pos = 1
    return function()
        while line do
            local w, after = string.match(line, "(%w+)()", pos)
            if w then
                pos = after
                return w
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end

for word in all_words() do
    print(word)
end
