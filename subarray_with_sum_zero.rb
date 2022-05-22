# Find if there is a subarray with 0 sum” states that you are given an integer array containing negative integers as well. 
# The problem statement asks to determine if any sub-array of size at-least 1 has a sum equal to 0.


# Example lets take an array given has elements [2,1,-3,4,5]
# Here if we consider the subarray 2, 1, -3, there sum will be equal to 0.
# The code logic determines if such subarrays can be determined or not

sum = 0
arr.each do |ele|
  puts "Element being considered is #{ele}"
  sum += ele
  puts "After adding the element the sum is #{sum}"
  break if sum == 0
end

if sum > 0
  puts "There are no subarrays in the given array whose sum is equal to 0"
else
  puts "There is atleast one subarray whose some is equal to 0"
end
##############################

##############################
arr = [2,1, 4,5, -8]
sum = 0
subarray = []
arr.each do |ele|
  puts "Element considered is: #{ele}"
  sum += ele
  puts sum
  negative_sum = sum * -1
  subarray << ele 
  subarray << negative_sum if arr.include?(negative_sum)
  break if arr.include?(negative_sum) and negative_sum + sum == 0 
end

if subarray.empty? 
  puts "The array doesnt have an subarray whose sum is 0"
else
  puts "The array contains atleast one subarray whose sum is zero."
  puts subarray
end
##############################

##############################

# You are given an array of size n, initially all the values in the array will be 0, and the queries. 
# Each query contains the four values, type of the query T, left point of the range, 
# the right point of a range and a number k, you have to perform the following operations.

def execute_query(arr:, type: 0, left:, right:, const:)
  # since it is mentioned that the array contains all O
  
  for i in left..right do
    # Because we know that the type can hold only two values 0 or 1
    # If Type is 0, we have to add the constant
    # If Type is 1, we have to substract the constant
    type == 0 ? arr[i] += const : arr[i] -= const
  end
  
end
arr = Array.new(5, 0) # arr = [0,0,0,0,0]
# calling the method execute_query
execute_query(arr: arr, type: 1, left: 0, right: 3, const: 3)
execute_query(arr:arr, type: 0, left:2, right: 4, const:2)

# to Print the final array
puts arr
##############################

##############################

