#conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
class Matrix

  def grid
    a = Array.new
    b = Array.new
    b << a

    puts "Sample Matrix:"
    b.each do |r|
    puts r.map {|p| p }.join(" ")
    end
  end


end

a = Matrix.new
a.grid
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) x max(100), based on user input
#     With values only being ' ' and '0'
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply Rules of Conways game of life - Part 1
#     Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#     Create new matrix with rules applied, display it and iterate it for 10 times
#     Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


