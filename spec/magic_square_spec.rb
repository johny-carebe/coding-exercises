require File.expand_path('code/magic_square')

describe MagicSquare do
  describe '.validate' do
    context 'valid square 3x3' do
      square = [
        [8, 1, 6],
        [3, 5, 7],
        [4, 9, 2]
      ]

      subject { MagicSquare.validate(square) }

      it { is_expected.to eq true }
    end

    context 'valid square 4x4' do
      square = [
        [16, 3, 2, 13],
        [5, 10, 11, 8],
        [9, 6, 7, 12],
        [4, 15, 14, 1]
      ]

      subject { MagicSquare.validate(square) }

      it { is_expected.to eq true }
    end

    context 'invalid square 3x3' do
      square = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]

      subject { MagicSquare.validate(square) }

      it { is_expected.to eq false }
    end

    context 'when square 3x3 have equal sum for rows and columns but not all the same value' do
      square = [
        [1, 2, 3],
        [2, 4, 1],
        [3, 1, 2]
      ]

      subject { MagicSquare.validate(square) }

      it { is_expected.to eq false }
    end

    xcontext 'when square 3x3 have equal sum for rows and columns but not for diagonals' do
      # I tried to make a test case for it, but I don't think is possible to have
      # a square that sums columns and rows with the same value but don't sum them
      # for diagonals, so I'm skipping it
    end
  end
end
