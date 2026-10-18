# frozen_string_literal: true

# Variant 1

arr = [4, 2, 6, 1, 8, 5, 7, 9, 0]

for i in 1..arr.length-1 do
  puts i if arr[i] < arr[i - 1]
end
puts ""

# Variant 2
arr.each_with_index  {|num, ind| puts ind if num < arr[ind - 1] }