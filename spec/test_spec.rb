require 'rspec'
require_relative '../solver'

describe '#factorial' do
  context 'when given a positive integer' do
    it 'calculates the correct factorial' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(6)).to eq(720)
    end
  end

  context 'when given a negative integer' do
    it 'raises an exception' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error('Factorial is only defined for positive integers')
    end
  end
end

describe '#reverse' do
  it 'reverses the given word' do
    solver = Solver.new
    expect(solver.reverse('hello')).to eq('olleh')
    expect(solver.reverse('world')).to eq('dlrow')
  end
end

describe '#fizzbuzz' do
  context 'when given a number that is a multiple of 3 and 5' do
    it "returns 'fizzbuzz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
  end

  context 'when given a number that is a multiple of 3' do
    it "returns 'fizz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end
  end

  context 'when given a number that is a multiple of 5' do
    it "returns 'buzz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end
  end

  context 'when given a number that is not a multiple of 3 or 5' do
    it 'returns the number as a string' do
      solver = Solver.new
      expect(solver.fizzbuzz(1)).to eq('1')
      expect(solver.fizzbuzz(2)).to eq('2')
    end
  end
end
