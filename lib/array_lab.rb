# frozen_string_literal: true

class ArrayLab
  attr_reader :numbers

  def initialize(numbers)
    raise ArgumentError unless numbers.is_a? Array

    @numbers = numbers
  end

  def find_sum
    @numbers.inject(:+)
  end

  def find_max
    @numbers.max
  end

  def to_s
    @numbers.to_s
  end
end

# numbers = (1..10).to_a.shuffle
numbers = [2, 5, 7, 4, 1, 6, 10, 9, 8, 3]

my_array = ArrayLab.new(numbers)
puts my_array.find_sum
puts my_array.find_max

p my_array.numbers
p my_array.numbers[-1, 1][0]
