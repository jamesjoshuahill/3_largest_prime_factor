require 'Prime'

class LargestPrimeFactor

  def prime_factor(prime, n)
    power = 0
    while (n.to_f % (prime ** (power + 1))) == 0.0
      power += 1
    end
    power
  end

  def list_prime_factors(n)
    prime_factors = Hash.new
    Prime.each do |prime|
      factor = prime_factor(prime, n)
      prime_factors[prime] = factor if factor > 0
      break if product_of_prime_factors(prime_factors) == n
    end
    prime_factors
  end

  def product_of_prime_factors(hash_of_prime_factors)
    total = 1
    hash_of_prime_factors.each do |prime, product|
      total *= (prime ** product)
    end
    total
  end

  def largest_prime_factor(n)
    list_prime_factors(n).keys.max
  end

end

#simple execution test
puts LargestPrimeFactor.new.largest_prime_factor(13195)
puts LargestPrimeFactor.new.largest_prime_factor(600851475143)
