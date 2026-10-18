# frozen_string_literal: true

# Variant 1

include Math

arr = [0, 2, 4, 5, 1, 0, 2, 0]
min = Float::INFINITY

for num in arr do
  min = num if num < min
end

count = 0

for num in arr do
  count += 1 if num == min
end

puts "Min count = #{count}"

# Variant 2

puts "Min count = #{ arr.count { |val| val == arr.min } }"


