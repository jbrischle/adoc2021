class PuzzleThree
  def self.method_one(input)
    return unless input.is_a?(Array)

    max_positions = input.first.length
    gamma_rate = ''
    epsilon_rate = ''

    map_input = {}
    (0..max_positions - 1).each do |position|
      map_input[position] = get_bits_by_position(input, position)
    end

    map_input.each do |key, value|
      gamma_rate += get_most_common_bit(value).to_s
      epsilon_rate += get_least_common_bit(value).to_s
    end

    gamma_rate.to_i(2) * epsilon_rate.to_i(2)
  end

  def self.method_two(input)
    return unless input.is_a?(Array)

    max_positions = input.first.length
    oxygen_generator_rating = input
    co2_scrubber_rating = input

    while oxygen_generator_rating.length > 1
      (0..max_positions - 1).each do |position|
        oxygen_generator_rating.length <= 1 ? break : ''

        bits = get_bits_by_position(oxygen_generator_rating, position)
        oxygen_generator_rating = oxygen_generator_rating.select do |value|
          value.chars[position].to_i == get_most_common_bit(bits)
        end
      end
    end

    while co2_scrubber_rating.length > 1
      (0..max_positions - 1).each do |position|
        co2_scrubber_rating.length <= 1 ? break : ''

        bits = get_bits_by_position(co2_scrubber_rating, position)
        co2_scrubber_rating = co2_scrubber_rating.select do |value|
          value.chars[position].to_i == get_least_common_bit(bits)
        end
      end
    end

    oxygen_generator_rating.first.to_i(2) * co2_scrubber_rating.first.to_i(2)
  end

  private_methods def self.get_bits_by_position(input, position)
    bits = ''
    input.each do |value|
      bits = "#{bits}#{value[position]}"
    end
    bits
  end

  private_methods def self.get_least_common_bit(value)
    get_most_common_bit(value) == 1 ? 0 : 1
  end

  private_methods def self.get_most_common_bit(value)
    (value.chars.map(&:to_i).sum.to_f / value.length).round
  end
end
