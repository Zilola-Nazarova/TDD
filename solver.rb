class Solver
  def factorial(n)
    if n == 0
      1
    elsif n > 0
      n * factorial(n - 1)
    elsif n < 0
      raise StandardError.new('Can not calculate facotrial for negative integer')
    end
  end
end
