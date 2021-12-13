require 'test/unit'
require_relative './puzzle-4-a'

class PuzzleFourATest < Test::Unit::TestCase

  def test_part_one
    drawn_numbers = [7, 4, 9, 5, 11, 17, 23, 2, 0, 14, 21, 24, 10, 16, 13, 6, 15, 25, 12, 22, 18, 20, 8, 19, 3, 26, 1]
    bingo_boards = File.readlines('puzzle-4-a-data-test.txt')

    assert_equal 4512, PuzzleFourA.bingo(drawn_numbers, bingo_boards)
  end

end
