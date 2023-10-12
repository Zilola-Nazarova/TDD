class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.positive?
      num * factorial(num - 1)
    elsif num.negative?
      raise StandardError, 'Can not calculate facotrial for negative integer'
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 15).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?
​
    num.to_s
  end
end

