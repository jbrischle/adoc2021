input = File.readlines("puzzle-1-data.txt").map(&:to_i)
increased_count = 0

input.each_with_index do |val, index|
  if input[index + 1] && (input[index + 1] - val).positive?
    increased_count += 1
  end
end

puts increased_count

