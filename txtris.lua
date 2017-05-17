function file_exists(name)
    local f = io.open(name, 'r')
    
    if f ~= nil then
        io.close(f)
        return true
    end 

    return false
end
    
function read_file(name)
    if file_exists(name) then
        local input = io.open(name, 'r')
        io.input(input)
        content = io.read()
        io.close()

        return content
    end
    
    return nil

end

function press_button(button)
    input_table = {}
    input_table[button] = true
    joypad.set(1, input_table)
end

while true do
    if file_exists('button.txt') then
        local button = read_file('button.txt')
        os.remove('button.txt')
        emu.message('Pressing: ' .. button)

        for i= 0,5 do
            press_button(button)
            emu.frameadvance()
        end
    end
    emu.frameadvance()
end
