class MagicSquare
  class << self
    # Implement a method that takes a 2D array,
    # checks if it's a magic square and returns either true or false depending on the result.
    # sequence (https://en.wikipedia.org/wiki/Magic_square)
    def validate(square)
       all_sum_by_rows_are_equal(square) && all_diagonal_sums_are_equal(square)
    end

    private

    def all_sum_by_rows_are_equal(square)
      sum_by_rows_list = sum_by_rows(square)
      first_row_sum = sum_by_rows_list.first

      sum_by_rows_list.all? { |row_sum| row_sum == first_row_sum }
    end

    def sum_by_rows(square)
      a = square.map { |row| row.sum }
    end

    def all_diagonal_sums_are_equal(square)
      square_length = square.length - 1
      square_range = (0..square_length)

      main_diagonal_sum = square_range.sum { |main_diagonal| square[main_diagonal][main_diagonal] }

      secondary_diagonal_sum = square_range.sum do |column|
        left_to_right_row = -column - 1

        square[left_to_right_row][column]
      end

      main_diagonal_sum == secondary_diagonal_sum
    end
  end
end
