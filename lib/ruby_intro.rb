# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #0 is the initial value
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  #Sorts the array and takes the sum of top 2 elements
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #If array is not empty and n is not zero, take permutation of numbers in array to check if they add up to n
  return false if arr.empty?
 (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2
def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #Using regex and i for ignore case
  if(s=~ /\A(?=[^aeiou])(?=[a-z])/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end

# Part 3
class BookInStock
# YOUR CODE HERE
#Throw error if isbn is empty or price is less than zero
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
