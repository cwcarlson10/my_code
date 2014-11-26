#conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
class Matrix



  def grid
    @rows = 10
    @columns = 10
    @matrix = Array.new
    (1..@rows).each do |row_number|
      b = Array.new
      (1..@columns).each do |col_number|
# 02. Insert random elements into the Matrix (any single digit) and display it
        b << rand(9)
      end
      @matrix << b
    end
  end

  def display_matrix

    @matrix.each do |r|
      puts r.map {|p| p }.join(" ")
    end
  end
# 03. Ask if user wants a new random matrix and display if user said yes
  def new_display
    puts "Do you want a new matrix (y/n)?"
    answer = gets.chomp.downcase
    if answer == "y"
      puts "Enter Rows"
# 04. Generate a Matrix of max(30) x max(100), based on user input
      @rows = gets.chomp.to_i
      if @rows > 30
        return 30
      elsif @rows < 10
        return 10
      end
      puts "Enter Columns"
      @columns = gets.chomp.to_i
      if @columns > 100
        return 100
      elsif @columns < 10
        return 10
      end

      puts "Here's your new Matrix:"
      grid
    elsif answer == 'n'
      puts "Goodbye!"
    end
  end

end

a = Matrix.new
a.display_matrix



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


