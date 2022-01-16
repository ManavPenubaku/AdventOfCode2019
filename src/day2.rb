$raw_input = File.read("../input/day2.txt").split(?,).map &:to_i
current_index = 0

def intcode_computer x,y
    input = $raw_input.dup
    input[1] = x
    input[2] = y
    current_index = 0
    while input[current_index] != 99
        if input[current_index] == 1
            input[input[current_index+3]] = input[input[current_index+1]] + input[input[current_index+2]]
        elsif input[current_index] == 2
            input[input[current_index+3]] = input[input[current_index+1]] * input[input[current_index+2]]
        end
        current_index += 4
    end
    return input[0]
end

puts intcode_computer 12,2
for x in 0..99
    for y in 0..99
        check = intcode_computer x,y
        if check == 19690720
            puts 100*x + y
        end
    end
end