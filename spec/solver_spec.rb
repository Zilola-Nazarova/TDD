require_relative '../solver'

describe Solver do
  before :all do
    @solve = Solver.new
  end
  
  describe '#factorial' do
    it 'should return factorial for a positive number' do
      expect(@solve.factorial(4)).to eql 24
    end
    it 'should return 1 for a number 0 (special case)' do
      expect(@solve.factorial(0)).to eql 1
    end
    it 'should raise an exception for a negative integer' do
      expect { @solve.factorial(-2) }.to raise_error('Can not calculate facotrial for negative integer', StandardError)
    end
  end

  describe '#reverse' do
    it 'should return reversed string "hello" -> "olleh"' do
      expect(@solve.reverse('hello')).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    context 'divisible by 3' do
      it 'should return "fizz" for 3' do

      end
      it 'should return "fizz" for 6' do

      end
    end

    context 'divisible by 5' do
      it 'should return "buzz" for 5' do

      end
      it 'should return "buzz" for 10' do

      end
    end

    context 'divisible by 3 and 5' do
      it 'should return "fizzbuzz" for 15' do

      end
      it 'should return "fizzbuzz" for 30' do

      end
    end

    context 'divisible by 3 and 5' do
      it 'should return "7" for 7' do

      end
      it 'should return "13" for 13' do

      end
    end
  end
end
