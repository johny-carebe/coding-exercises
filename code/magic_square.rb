class MagicSquare
  class << self
    # Implement a method that takes a 2D array,
    # checks if it's a magic square and returns either true or false depending on the result.
    # sequence (https://en.wikipedia.org/wiki/Magic_square)
    def validate(square)
       all_sum_by_rows_are_equal(square) && all_sum_by_columns_are_equal(square)
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

    def all_sum_by_columns_are_equal(square)
      sum_by_columns_list = sum_by_columns(square)
      first_column_sum = sum_by_columns_list.first

      sum_by_columns_list.all? { |column_sum| column_sum == first_column_sum }
    end

    def sum_by_columns(square)
      square.transpose.map { |column| column.sum }
    end
  end
end
