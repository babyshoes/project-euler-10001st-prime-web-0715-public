# Implement your procedural solution here!
require 'pry'
def prime_number_for(num_of_elements)
  arr = [2, 3]
  shovel_primes(arr, num_of_elements)
  arr[num_of_elements - 1]
end

def shovel_primes(arr, num_of_elements)
  i ||= arr.last + 2
  until arr.length == num_of_elements
    arr << i unless arr.find{ |e| i % e == 0}
    i += 2
  end
end
