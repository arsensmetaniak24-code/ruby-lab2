# frozen_string_literal: true

matrix = [
  [14, 12, 13, 14, 15],
  [1, 2, 3, 4, 5],
  [21, 22, 27, 24, 25],
  [1, 17, 18, 19, 20],
  [6, 7, 8, 9, 10]
]


# Variant 1

for i in 0...matrix.length do
  sorted = true

  for j in 1...matrix[i].length do

    if matrix[i][j] <= matrix[i][j - 1] then
      sorted = false
      break
    end

  end

  puts i if sorted

end


# Variant 2

puts matrix
       .each_with_index
       .select { | row, index | row
                                  .each_cons(2)
                                  .all? {|val1, val2| val1 < val2}}
       .map { |d| d[1] }