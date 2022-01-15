input = File.readlines("../input/day1.txt").map(&:to_i)
total_fuel_p1 = 0
for num in input do
    fuel = (num/3).floor - 2
    total_fuel_p1 = total_fuel_p1 + fuel
end
puts total_fuel_p1
total_fuel_p2 = 0
for num in input do
    fuel = (num/3).floor - 2
    while fuel > 0
        total_fuel_p2 = total_fuel_p2 + fuel
        fuel = (fuel/3).floor - 2
    end
end
puts total_fuel_p2