# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  res=0
  arr.each do |a|
    res+=a
  end
  return res 
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length==0
    return 0
  end
  if arr.length==1
    return arr[0]
  end
  arr_sorted=arr.sort.reverse
  result = arr_sorted[0]+arr_sorted[1]
  return result 
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.sort!
  left = 0
  right = arr.length - 1
  while left < right
    sum = arr[left] + arr[right]
    if sum == number
      return true
    elsif sum < number
      left += 1
    else      
      right -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  final_string="Hello, #{name}"
  return final_string
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  string = string.downcase
  if string.empty? || !string.match(/^[a-z]/)
    return false
  end
  vowels = ['a', 'e', 'i', 'o', 'u']
  return !vowels.include?(string[0])
  #AnotherMethod
  #consonant_pattern = /^[b-df-hj-np-tv-z]/i
  # Use the regular expression to check if the string starts with a consonant
  #return !!(s =~ consonant_pattern)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
   return false if string.empty?

   return false unless string.match?(/\A[01]+\z/)

   decimal_value = 0
   string.each_char do |char|
     decimal_value = decimal_value * 2 + char.to_i
   end
   return decimal_value % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    self.isbn = isbn  
    self.price = price 
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn_new)
    if isbn_new.empty?
      raise ArgumentError, "ISBN must not be empty"
    end  
    @isbn = isbn_new
  end
  def price=(price_new)
    if price_new <= 0
      raise ArgumentError, "Price must be positive"
    end
    @price = price_new
  end
end
