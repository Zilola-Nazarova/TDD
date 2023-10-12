require_relative '../solver'

describe Solver do
  describe '#factorial' do
    context 'positive integers' do
      it 'should return correct factorial' do
        expect(subject.factorial(4)).to eql 24
      end
    end

    context 'special case 0' do
      it 'should return 1' do
        expect(subject.factorial(0)).to eql 1
      end
    end

    context 'negative integers' do
      it 'should raise an exception' do
        expect do
          subject.factorial(-2)
        end.to raise_error('Can not calculate facotrial for negative integer', StandardError)
      end
    end
  end

  describe '#reverse' do
    it 'should return reversed string "hello" -> "olleh"' do
      expect(subject.reverse('hello')).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    context 'divisible by 3' do
      it 'should return "fizz" for 3' do
        expect(subject.fizzbuzz(3)).to eql 'fizz'
      end
      it 'should return "fizz" for 6' do
        expect(subject.fizzbuzz(6)).to eql 'fizz'
      end
    end

    context 'divisible by 5' do
      it 'should return "buzz" for 5' do
        expect(subject.fizzbuzz(5)).to eql 'buzz'
      end
      it 'should return "buzz" for 10' do
        expect(subject.fizzbuzz(10)).to eql 'buzz'
      end
    end

    context 'divisible by 5 and 3' do
      it 'should return "fizzbuzz" for 15' do
        expect(subject.fizzbuzz(15)).to eql 'fizzbuzz'
      end
      it 'should return "fizzbuzz" for 30' do
        expect(subject.fizzbuzz(30)).to eql 'fizzbuzz'
      end
    end

    context 'not divisible by 5 or 3' do
      it 'should return "7" for 7' do
        expect(subject.fizzbuzz(7)).to eql '7'
      end
      it 'should return "13" for 13' do
        expect(subject.fizzbuzz(13)).to eql '13'
      end
    end
  end
end
