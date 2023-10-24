# frozen_string_literal: true

require File.expand_path('code/magic_square')

describe MagicSquare do
  describe '.validate' do
    subject { MagicSquare.validate(square) }

    context 'valid square 3x3' do
      let(:square) do
        [
          [8, 1, 6],
          [3, 5, 7],
          [4, 9, 2]
        ]
      end

      it { is_expected.to eq true }
    end

    context 'valid square 4x4' do
      let(:square) do
        [
          [16, 3, 2, 13],
          [5, 10, 11, 8],
          [9, 6, 7, 12],
          [4, 15, 14, 1]
        ]
      end

      it { is_expected.to eq true }
    end

    context 'invalid square 3x3' do
      let(:square) do
        [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
        ]
      end

      it { is_expected.to eq false }
    end

    context 'when square 3x3 have equal sum for rows and columns but not all the same value' do
      let(:square) do
        [
          [1, 2, 3],
          [2, 4, 1],
          [3, 1, 2]
        ]
      end

      it { is_expected.to eq false }
    end

    context 'when square 3x3 have equal sum for rows and columns but not for diagonals' do
      let(:square) do
        [
          [3, 2, 3],
          [2, 3, 3],
          [3, 3, 2]
        ]
      end

      it { is_expected.to eq false }
    end

    context 'when the input is not a square' do
      let(:square) do
        [
          [3, 2, 3],
          [2, 3, 3],
          [3, 3, 2],
          [8]
        ]
      end

      it { is_expected.to eq false }
    end

    xcontext 'when square 3x3 have equal sum for rows and equal sum for columns,
              but not same for both' do
      # Skipping this one as is matematically impossible
    end
  end
end
