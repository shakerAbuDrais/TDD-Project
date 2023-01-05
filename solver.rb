class Solver
  def factorial(n)
    if n < 0
      raise "Factorial is only defined for positive integers"
    elsif n == 0
      1
    else
      (1..n).inject(:*)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      "fizzbuzz"
    elsif n % 3 == 0
      "fizz"
    elsif n % 5 == 0
      "buzz"
    else
      n.to_s
    end
  end
end
