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
end
