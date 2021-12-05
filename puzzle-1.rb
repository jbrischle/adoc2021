class PuzzleOne
  def self.increased_value(input)
    return unless input.is_a?(Array)

    increased_count = 0
    input.each_with_index do |val, index|
      increased_count += 1 if input[index + 1] && (input[index + 1] - val).positive?
    end
    return increased_count
  end

end

input = File.readlines('puzzle-1-data.txt').map(&:to_i)
puts "Answer part 1: #{PuzzleOne.increased_value(input)}"
