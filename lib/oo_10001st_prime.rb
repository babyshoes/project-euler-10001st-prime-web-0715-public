# Implement your object-oriented solution here!
class Prime
  attr_reader :num_of_elements, :arr_of_primes

  def initialize(num_of_elements)
    @num_of_elements = num_of_elements
    @arr_of_primes = [2, 3]
  end

  def number
    set_arr_of_primes
    @arr_of_primes[num_of_elements - 1]
  end

  def set_arr_of_primes
    i = @arr_of_primes.last + 2
    until @arr_of_primes.length == num_of_elements
      @arr_of_primes << i unless @arr_of_primes.find{ |e| i % e == 0}
      i += 2
    end
  end

end
