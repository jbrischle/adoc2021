input = File.readlines('puzzle-2-data.txt')

horizontal = 0
depth = 0
aim = 0

input.each do |value|
  value_split = value.split(' ')
  case value_split[0]
  when 'forward'
    horizontal += value_split[1].to_i
    depth += aim * value_split[1].to_i
  when 'up'
    aim -= value_split[1].to_i
  when 'down'
    aim += value_split[1].to_i
  else
    puts 'no matching command'
  end
end

puts "horizontal position: #{horizontal}"
puts "depth: #{depth}"
puts "aim: #{aim}"
puts horizontal * depth
