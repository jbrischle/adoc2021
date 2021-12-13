class PuzzleFourA

  @number_of_columns = 0
  @number_of_lines = 0

  def self.bingo(drawn_numbers, bingo_boards)
    return unless drawn_numbers.is_a?(Array)
    return unless bingo_boards.is_a?(Array)

    boards = create_bingo_boards(bingo_boards)

    drawn_numbers.each do |drawn_number|
      stamp_boards(boards, drawn_number)
    end
    pp boards
  end

  private

  def self.stamp_boards(boards, drawn_number)
    boards.each do |_board_key, board_lines|
      board_lines.each do |_line_key, line_values|
        line_values.each do |item|
          item['marked'] = true if item['number'].eql? drawn_number.to_s
        end
      end
    end
  end

  def self.create_bingo_boards(bingo_boards)
    line_counter = 0
    board = {}
    boards_counter = 0
    boards = {}

    bingo_boards.each do |line|
      numbers = line.gsub(/\s+/m, ' ').strip.split(' ')
      @number_of_columns = numbers.length
      if numbers.length <= 0
        boards_counter += 1
        @number_of_lines = line_counter
        line_counter = 0
      else
        array = []
        numbers.each do |number|
          array.push({ 'number' => number, 'marked' => false })
        end

        board["line#{line_counter}"] = array
        boards["board#{boards_counter}"] = board
        line_counter += 1
      end
    end
    boards
  end
end
