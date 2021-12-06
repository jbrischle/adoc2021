require 'test/unit'
require_relative './puzzle-1'

class PuzzleOneTest < Test::Unit::TestCase
  def test_part_one
    input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    assert_equal 7, PuzzleOne.increased_value(input)
  end

  def test_part_two
    input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    assert_equal 5, PuzzleOne.increased_value_sliding_window(input)
  end

  def test_part_one_real
    input = File.readlines('puzzle-1-data.txt')
    value = PuzzleOne.increased_value(input)

    puts "Answer part 1: #{value}"
    assert_equal 1711, value
  end

  def test_part_two_real
    input = File.readlines('puzzle-1-data.txt')
    value = PuzzleOne.increased_value_sliding_window(input)

    puts "Answer part 1: #{value}"
    assert_equal 1743, value
  end

end
