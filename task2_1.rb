# frozen_string_literal: true

# Variant 1

matrix = [
  [11, 12, 13, 14, 15],
  [1, 2, 3, 4, 5],
  [21, 22, 23, 24, 25],
  [16, 17, 18, 19, 20],
  [6, 7, 8, 9, 10]
]

var1 = matrix.dup

for i in 0..var1.length - 1 do
  for j in i..var1.length - 1 do
    var1[i], var1[j] = var1[j], var1[i] if var1[i][i] > var1[j][j]
  end
end

p var1

# Variant 2

var2 = matrix
         .each_with_index
         .sort_by {|row, idx| row[idx]}
         .map { |row| row[0] }

p var2
