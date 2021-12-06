require 'test/unit'
require_relative './puzzle-3'

class PuzzleThreeTest < Test::Unit::TestCase

  def test_part_one
    input = %w[00100 11110 10110 10111 10101 01111 00111 11100 10000 11001 00010 01010]
    assert_equal 198, PuzzleThree.method_one(input)
  end

  def test_part_two
    input = %w[00100 11110 10110 10111 10101 01111 00111 11100 10000 11001 00010 01010]
    assert_equal 230, PuzzleThree.method_two(input)
  end

  def test_part_one_real
    input = File.readlines('puzzle-3-data.txt')
    value = PuzzleThree.method_one(input)

    puts "Answer part 1: #{value}"
    assert_equal 4006064, value
  end

  def test_part_two_real
    input = File.readlines('puzzle-3-data.txt')
    value = PuzzleThree.method_two(input)

    puts "Answer part 2: #{value}"
    assert_equal 5941884, value
  end

end
