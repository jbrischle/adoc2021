require 'test/unit'
require_relative './puzzle-2'

class PuzzleTwoTest < Test::Unit::TestCase

  def test_part_one
    input = [
      'forward 5',
      'down 5',
      'forward 8',
      'up 3',
      'down 8',
      'forward 2'
    ]
    assert_equal 150, PuzzleTwo.method_one(input)
  end

  def test_part_two
    input = [
      'forward 5',
      'down 5',
      'forward 8',
      'up 3',
      'down 8',
      'forward 2'
    ]
    assert_equal 900, PuzzleTwo.method_two(input)
  end
end
