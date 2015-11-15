class Squares

  VERSION = 1
  
  def initialize(upper_bound)
    @upper_bound = upper_bound
  end

  def square_of_sums
    sums_array = [1]
    (2..@upper_bound).each { |n| sums_array.push(n) }
    sums_array_sum = sums_array.inject(:+)
    return sums_array_sum ** 2
  end

  def sum_of_squares 
    squares_array = [1]
    (2..@upper_bound).each do |n|
      squares_array.push(n ** 2)
    end
    return squares_array.inject(:+)
  end

  def difference
    return (self.sum_of_squares - self.square_of_sums).abs
  end

end
