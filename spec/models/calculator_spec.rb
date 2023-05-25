require 'rails_helper'

RSpec.describe Calculator, type: :model do
  context 'sum' do
    it '1 2 equals 3' do
      calculator = build(:calculator)
      res = calculator.sum(1, 2)
      expect(res).to eq(3)
    end

    it '-1 -1 equals -2' do
      calculator = build(:calculator)
      res = calculator.sum(-1, -1)
      expect(res).to eq(-2)
    end
  end

  context 'sub' do
    it '1 2 equals -1' do
      calculator = build(:calculator)
      res = calculator.sub(1, 2)
      expect(res).to eq(-1)
    end
    
    it '-1 -1 equals 0' do
      calculator = build(:calculator)
      res = calculator.sub(-1, -1)
      expect(res).to eq(0)
    end
  end

  context 'transpose' do
    it 'square matrix' do
      mi = [
        [1, 2],
        [3, 4]
      ]
      mf = [
        [1, 3],
        [2, 4]
      ]
      calculator = build(:calculator)
      res = calculator.transpose(mi)
      expect(res).to eq(mf)
    end
    it 'non square matrix' do
      mi = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      mf = [
        [1, 4],
        [2, 5],
        [3, 6]
      ]
      calculator = build(:calculator)
      res = calculator.transpose(mi)
      expect(res).to eq(mf)
    end
  end
end
