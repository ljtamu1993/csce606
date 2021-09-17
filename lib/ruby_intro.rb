# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each { |n|  s += n}
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  s = 0
  if arr.empty?
    s = 0
  elsif arr.length() == 1
    s = arr[0]
  else
    arr1 = arr.sort()
    s = arr1[-1] + arr1[-2]
  end
  return s
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr1 = arr.sort()
  s = 0
  e = arr.length() - 1
  while (s < e)
    if (arr1[s] + arr1[e] == n)
      return true
    elsif (arr1[s] + arr1[e] < n)
      s += 1
    else
      e -= 1
    end
    # s += 1
    # e -= 1
  end
  return false
  # arr.each { |n|  s += n}
  # return s
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ "#{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^\w+/ && !(s =~ /^[aeiouAEIOU]/) 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  (s =~ /^[01]+$/ && s =~ /100$/) || (s =~ /^0$/) 
  # s =~ /1000$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if(isbn.empty? || price <= 0.0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    return @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$" + "%.2f" % @price
  end
end
