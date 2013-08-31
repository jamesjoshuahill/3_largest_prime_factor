require 'largest_prime_factor'

describe LargestPrimeFactor do
  
  it 'should know if a number is prime' do
    expect(LargestPrimeFactor.new.prime?(3)).to be_true
    expect(LargestPrimeFactor.new.prime?(79)).to be_true
  end

  it 'should know if a number is NOT prime' do
    expect(LargestPrimeFactor.new.prime?(6)).to be_false
    expect(LargestPrimeFactor.new.prime?(57)).to be_false
  end

  it 'should know the multiplicity of a prime factor of a given number' do
    expect(LargestPrimeFactor.new.prime_factor(3, 9)).to eq 2
    expect(LargestPrimeFactor.new.prime_factor(5, 20)).to eq 1
  end

  it 'should know if a given prime is NOT a factor of a given number' do
    expect(LargestPrimeFactor.new.prime_factor(17, 94)).to eq 0
    expect(LargestPrimeFactor.new.prime_factor(19, 99)).to eq 0
  end

  it 'should know the product of given prime factors' do
    expect(LargestPrimeFactor.new.product_of_prime_factors({2=>4, 5=>1})).to eq 80
    expect(LargestPrimeFactor.new.product_of_prime_factors({3=>1, 13=>1})).to eq 39
  end

  it 'should list the prime factors of a given number' do
    expect(LargestPrimeFactor.new.list_prime_factors(80)).to eq ({2=>4, 5=>1})
    expect(LargestPrimeFactor.new.list_prime_factors(60)).to eq ({2=>2, 3=>1, 5=>1})
  end

  it 'should know the largest prime factor of a given number' do
    expect(LargestPrimeFactor.new.largest_prime_factor(80)).to eq 5
    expect(LargestPrimeFactor.new.largest_prime_factor(92)).to eq 23
    expect(LargestPrimeFactor.new.largest_prime_factor(13195)).to eq 29
  end

end