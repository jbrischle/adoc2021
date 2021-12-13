require 'test/unit'
require_relative './puzzle-4-a'

class PuzzleFourATest < Test::Unit::TestCase

  def test_part_one
    drawn_numbers = [7, 4, 9, 5, 11, 17, 23, 2, 0, 14, 21, 24, 10, 16, 13, 6, 15, 25, 12, 22, 18, 20, 8, 19, 3, 26, 1]
    bingo_boards = File.readlines('puzzle-4-a-data-test.txt')

    assert_equal 4512, PuzzleFourA.bingo(drawn_numbers, bingo_boards)
  end

  def test_part_one_real
    drawn_numbers = [42, 44, 71, 26, 70, 92, 77, 45, 6, 18, 79, 54, 31, 34, 64, 32, 16, 55, 81, 11, 90, 10, 21, 87, 0, 84, 8, 23, 1, 12, 60, 20, 57, 68, 61, 82, 49, 59, 22, 2, 63, 33, 50, 39, 28, 30, 88, 41, 69, 72, 98, 73, 7, 65, 53, 35, 96, 67, 36, 4, 51, 75, 24, 86, 97, 85, 66, 29, 74, 40, 93, 58, 9, 62, 95, 91, 80, 99, 14, 19, 43, 37, 27, 56, 94, 25, 83, 48, 17, 38, 78, 15, 52, 76, 5, 13, 46, 89, 47, 3
    ]
    bingo_boards = File.readlines('puzzle-4-a-data.txt')

    assert_equal 16674, PuzzleFourA.bingo(drawn_numbers, bingo_boards)
  end

end
