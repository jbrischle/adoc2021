class PuzzleOne
  def self.increased_value(input)
    return unless input.is_a?(Array)

    increased_count = 0
    input.each_with_index do |val, index|
      increased_count += 1 if input[index + 1] && (input[index + 1] - val).positive?
    end
    return increased_count
  end

  def self.increased_value_sliding_window(input)
    return unless input.is_a?(Array)

    adjusted_input = []
    input.each_with_index do |val, index|
      if input[index + 1] && input[index + 2]
        adjusted_input.push(val + input[index + 1] + input[index + 2])
      end
    end
    return PuzzleOne.increased_value(adjusted_input)
  end
end

input = File.readlines('puzzle-1-data.txt').map(&:to_i)
puts "Answer part 1: #{PuzzleOne.increased_value(input)}"
puts "Answer part 2: #{PuzzleOne.increased_value_sliding_window(input)}"
