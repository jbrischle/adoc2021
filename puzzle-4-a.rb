require 'matrix'

class PuzzleFourA

  def self.bingo(drawn_numbers, bingo_boards)
    return unless drawn_numbers.is_a?(Array)
    return unless bingo_boards.is_a?(Array)

    boards = create_bingo_boards(bingo_boards)
    drawn_numbers.each do |drawn_number|
      boards.each do |board_key, board|
        boards[board_key] = stamp_board(board, drawn_number)
        if check_bingo(board)
          return sum_up_unmarked_values(board) * drawn_number
        end
      end
    end
  end

  private

  def self.sum_up_unmarked_values(board)
    sum = 0
    board.each_with_index do |value, index|
      sum += value[0].to_i if value[1] != true
    end
    sum
  end

  def self.check_bingo(board)
    row_marks = board.row(0).map { |value| value[1] }.uniq
    return true if row_marks.length == 1 && row_marks[0] == true

    column_marks = board.column(0).map { |value| value[1] }.uniq.inspect
    return true if column_marks.length == 1 && column_marks[0] == true
  end

  def self.stamp_board(board, drawn_number)
    rows = []
    row = []
    current_row = 0

    board.each_with_index do |value, index|
      if current_row != index
        rows.push(row)
        current_row = index
        row = []
      end
      value[1] = true if value[0].eql? drawn_number.to_s
      row.push(value)
    end
    rows.push(row)
    Matrix[*rows]
  end

  def self.create_bingo_boards(bingo_boards)
    boards = {}
    boards_counter = 0
    rows = []

    bingo_boards.each do |line|
      if line.strip.empty?
        boards[boards_counter] = Matrix[*rows]
        boards_counter += 1
        rows = []
      else
        numbers = line.gsub(/\s+/m, ' ').strip.split(' ')
        rows.push(numbers.map { |num| [num, false] })
      end
    end
    boards[boards_counter] = Matrix[*rows]
    boards
  end
end
