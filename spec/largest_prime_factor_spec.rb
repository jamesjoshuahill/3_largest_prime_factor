require 'largest_prime_factor'

describe LargestPrimeFactor do

  let(:lpf) { LargestPrimeFactor.new }
  subject { lpf }

  it 'should know the multiplicity of a prime factor of a given number' do
    expect(subject.prime_factor(3, 9)).to eq 2
    expect(subject.prime_factor(5, 20)).to eq 1
  end

  it 'should know if a given prime is NOT a factor of a given number' do
    expect(subject.prime_factor(17, 94)).to eq 0
    expect(subject.prime_factor(19, 99)).to eq 0
  end

  it 'should know the product of given prime factors' do
    expect(subject.product_of_prime_factors({2=>4, 5=>1})).to eq 80
    expect(subject.product_of_prime_factors({3=>1, 13=>1})).to eq 39
  end

  it 'should list the prime factors of a given number' do
    expect(subject.list_prime_factors(80)).to eq ({2=>4, 5=>1})
    expect(subject.list_prime_factors(60)).to eq ({2=>2, 3=>1, 5=>1})
  end

  it 'should know the largest prime factor of a given number' do
    expect(subject.largest_prime_factor(80)).to eq 5
    expect(subject.largest_prime_factor(92)).to eq 23
    expect(subject.largest_prime_factor(13195)).to eq 29
  end

end
