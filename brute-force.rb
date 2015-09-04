class PrimeSum

  def initialize(limit)
    @limit = limit
  end

  def sum_of_primes
    (0..@limit).select {|n| is_prime?(n)}.inject(:+)
  end

  def is_prime? (n)
    return false if n < 2
    (2..(Math.sqrt(n).floor)).each do |x|
      return false if n % x == 0
    end
    true
  end
end

puts "limit:"
limit = gets.strip.to_i
puts "answer is: #{PrimeSum.new(limit).sum_of_primes}"

# 142913828922