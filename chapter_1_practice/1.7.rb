require 'matrix.rb'

def set_matrix_row_and_column_to_zero
  matrix = Matrix.build(3, 3) { |row, col| rand(9) }
  row_index, col_index = [], []
  matrix.each_with_index { |i, row, col| row_index << row && col_index << col if i == 0 }

  puts "This is the original matrix: #{matrix}"

  row_index.uniq.each do |row_i|
    matrix.row(row_i).count.times do |j|
      matrix.send(:[]=, row_i, j, 0)
    end
  end

  col_index.uniq.each do |col_i|
    matrix.column(col_i).count.times do |k|
      matrix.send(:[]=, k, col_i, 0)
    end
  end

  puts "This is the -mutated matrix: #{matrix}"
end

set_matrix_row_and_column_to_zero
