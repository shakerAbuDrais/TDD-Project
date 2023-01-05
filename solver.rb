# frozen_string_literal: true

# This solves certain problems
class Solver
  def factorial(num)
    if num.negative?
      raise 'Factorial is only defined for positive integers'
    elsif num.zero?
      1
    else
      (1..num).inject(:*)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
