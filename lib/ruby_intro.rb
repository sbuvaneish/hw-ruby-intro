# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each { |num| total += num }
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!.reverse!
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.sort!
  i = 0
  j = arr.length - 1
  while i < j do
    if arr[i] + arr[j] < n
      i += 1
    elsif arr[i] + arr[j] > n
      j -= 1
    else
      return true
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  (s =~ /\A(?=[^aeiou])(?=[a-z])/i) == 0 ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  (s =~ /^[01]*00$/) == 0 ? true : false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError.new(
      "isbn is empty"
    ) if isbn.length == 0
    
    raise ArgumentError.new(
      "price is not positive"  
    ) if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    converted_price = '%.2f' % price
    "$#{converted_price}"
  end
  
end
