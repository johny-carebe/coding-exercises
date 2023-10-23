class MagicSquare
  # Implement a method that takes a 2D array,
  # checks if it's a magic square and returns either true or false depending on the result.
  # sequence (https://en.wikipedia.org/wiki/Magic_square)
  def self.validate(square)
     sum_by_rows = square.map { |row| row.sum }
     sum_by_columns = square.transpose.map { |column| column.sum }

     sum_by_rows == sum_by_columns
  end
end
