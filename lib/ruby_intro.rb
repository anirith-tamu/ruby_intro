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
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
