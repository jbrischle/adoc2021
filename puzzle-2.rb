class PuzzleTwo
  def self.method_one(input)
    return unless input.is_a?(Array)

    horizontal = 0
    depth = 0

    input.each do |value|
      value_split = value.split(' ')
      case value_split[0]
      when 'forward'
        horizontal += value_split[1].to_i
      when 'up'
        depth -= value_split[1].to_i
      when 'down'
        depth += value_split[1].to_i
      else
        puts 'no matching command'
      end
    end
    horizontal * depth
  end

  def self.method_two(input)
    return unless input.is_a?(Array)

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

    horizontal * depth
  end
end

