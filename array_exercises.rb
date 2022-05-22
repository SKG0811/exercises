# Move all negative elements to end in order with extra space allowed” states that you are given
# an array containing positive and negative numbers both. The problem statement asks to move all
# the negative elements in the last of the array.

arr = [1,2,-3,-5,2,7,-9,-11]


elements = Array.new(arr.length)
j = 1
i = 0
arr.each do |ele|
  if ele.positive?
    elements[i] = ele
    i += 1
  else
    elements[elements.length - j] = ele
    j +=1
  end
end
puts elements
# Optional if you want to sort the array
puts elements.sort

# Time Complexity - O(n) where n is the number of array elements and we are traversing each element of the given 
# array
# Space Complexity - O(n) where n is the numver of array elements, we are creating a new array to hold the elements
# in the desired fashion.

#########################################

#########################################

# Count of Triplets With Sum Less than Given Value

# We have given an array containing N number of elements. 
# In the given array, Count the number of triplets with a sum less than the given value.
# Simplest Way
# sum = 10
arr = [1, 2, 3, 4, 5, 6, 7, 8] # input array
combinations = arr.combination(3).to_a 

triplets = combinations.select{|triplet| triplet.sum < 10 }

puts triplets

# with for loop

