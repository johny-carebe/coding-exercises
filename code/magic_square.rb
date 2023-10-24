# frozen_string_literal: true

class MagicSquare
  class << self
    # Implement a method that takes a 2D array,
    # checks if it's a magic square and returns either true or false depending on the result.
    # sequence (https://en.wikipedia.org/wiki/Magic_square)
    def validate(square)
      a_square?(square) && all_row_sums_equal?(square) && all_diagonal_sums_equal?(square)
    end

    private

    def a_square?(square)
      square.length == square[0].length
    end

    def all_row_sums_equal?(square)
      sum_by_rows_list = sum_by_rows(square)
      first_row_sum = sum_by_rows_list.first

      sum_by_rows_list.all? { |row_sum| row_sum == first_row_sum }
    end

    def all_diagonal_sums_equal?(square)
      main_diagonal_sum(square) == secondary_diagonal_sum(square)
    end

    def sum_by_rows(square)
      square.map(&:sum)
    end

    def main_diagonal_sum(square)
      square_range(square).sum { |main_diagonal| square[main_diagonal][main_diagonal] }
    end

    def secondary_diagonal_sum(square)
      square_range(square).sum do |column|
        right_to_left_row = -column - 1

        square[right_to_left_row][column]
      end
    end

    def square_range(square)
      (0...square.length)
    end
  end
end
