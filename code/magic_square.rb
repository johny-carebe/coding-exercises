class MagicSquare
  class << self
    # Implement a method that takes a 2D array,
    # checks if it's a magic square and returns either true or false depending on the result.
    # sequence (https://en.wikipedia.org/wiki/Magic_square)
    def validate(square)
       sum_by_rows(square) == sum_by_columns(square)
    end

    private

    def sum_by_rows(square)
      square.map { |row| row.sum }
    end

    def sum_by_columns(square)
      square.transpose.map { |column| column.sum }
    end
  end
end
