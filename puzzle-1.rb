class PuzzleOne
  def self.increased_value(input)
    return unless input.is_a?(Array)

    increased_count = 0
    input.each_with_index do |val, index|
      var = input[index + 1].to_i
      positive_ = (var - val.to_i).positive?
      increased_count += 1 if var && positive_
    end
    increased_count
  end

  def self.increased_value_sliding_window(input)
    return unless input.is_a?(Array)

    adjusted_input = []
    input.each_with_index do |val, index|
      adjusted_input.push(val + input[index + 1] + input[index + 2]) if input[index + 1] && input[index + 2]
    end
    increased_value(adjusted_input)
  end
end
