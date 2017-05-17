--Author: Douglas Rudolph
--File: txtris.lua
--Date Created: May 16, 2017

--checks to see if file 'name' exists within the current directory
function file_exists(name)

    --open file 
    local f = io.open(name, 'r')
    
    --if file exists, close the file and return true
    if f ~= nil then
        io.close(f)
        return true
    end 

    --otherwise return false
    return false
end

--reads data from a file
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

--presses that is read in from file
function press_button(button)
    input_table = {}
    input_table[button] = true
    joypad.set(1, input_table)
end

--infinite loop
while true do

    --check to see if button.txt exists,
    if file_exists('button.txt') then
        
        --if so, then read data from file
        local button = read_file('button.txt')

        --remove the file
        os.remove('button.txt')

        --print the button that is being pressed to the emulator
        emu.message('Pressing: ' .. button)

        --press button for 5 frames
        for i= 0,5 do
            press_button(button)
            emu.frameadvance()
        end
    end
    
    --advance the frame of the game
    emu.frameadvance()
end
