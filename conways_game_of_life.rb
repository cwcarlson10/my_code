#conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
class Matrix

  VALUES = ['O', ' ']
  def initialize
    @rows = 10
    @columns = 10
    @matrix = []
  end

  def grid
    @matrix = []
    (1..@rows).each do |row_number|
      b = []
      (1..@columns).each do |col_number|
# 02. Insert random elements into the Matrix (any single digit) and display it
#     With values only being ' ' and '0'
        b << VALUES[rand(2)]
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
        @rows = 30
      elsif @rows < 10
        @rows = 10
      end
      puts "Enter Columns"
      @columns = gets.chomp.to_i
      if @columns > 100
        @columns = 100
      elsif @columns < 10
        @columns = 10
      end

      puts "Here's your new Matrix:"
      grid
      display_matrix
    elsif answer == 'n'
      puts "Goodbye!"
    end
  end
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
  def cell_alive(x,y)
    if @matrix[x] && @matrix[x][y]
      @matrix[x][y] == 'O' ? true : false
    else
      false
    end
  end

  def cell_test
    (0..@rows-1).each do |x|
      (0..@columns-1).each do |y|
        print self.cell_alive(x,y) ? 'T' : 'F'
      end
      puts ''
    end
    puts ''
  end

  def count_surrounding_living_cells
    (0..@rows-1).each do |row_number|
      (0..@columns-1).each do |column_number|
        surrounding_living_cells = 0
        for adjecent_position in POSITIONS_TO_TEST
          row_to_test = row_number + adjecent_position.first 0
          column_to_test = column_number + adjecent_position.last 0
          next if self.index_out_of_bounds?(row_to_test, @rows-1)
          next if self.index_out_of_bounds?(column_to_test, @columns-1)
          next if adjecent_position.first == 0 && adjecent_position.last == 0 || row_number == row_to_test && column_number == column_to_test
          if self.is_cell_alive(row_to_test, column_to_test)
            surrounding_living_cells += 1
          end
        end
        print surrounding_living_cells
      end
      puts ''
    end
  end

end

a = Matrix.new
a.grid
a.display_matrix
a.new_display
a.cell_test




# 06. Apply Rules of Conways game of life - Part 1
#     Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#     Create new matrix with rules applied, display it and iterate it for 10 times
#     Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


