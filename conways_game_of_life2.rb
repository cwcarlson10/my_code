 puts "Welcome to Conways game of life"







  puts ''

  matrix[3][9] = 1
  matrix[9][3] = 1

  matrix.each do |r|
    puts r.map {|p| p }.join(" ")
  end

  puts "Would you like a new random matrix? (y/n)"
  puts ''
  answer = gets.chomp.downcase

  if answer == "y"
    puts "insert width 10 to 30"
    width = gets.chomp.to_i
    puts "insert hight 10 to 100"
    hight = gets.chomp.to_i
    b = Array.new(width)
    new_matrix = b.collect! { Array.new(hight) {rand > 0.5 ? " " : "O"}}
    puts "New Matrix:"
    new_matrix.each do |r|
      puts r.map {|p| p }.join(' ')
    end
  else answer == "n"
    puts "Thanks for playing"
  ends

new_matrix.each_with_index do |row, row_index|
    row.each_with_index do |value, col_index|
      puts "The value #{value} is in row #{row_index}, column #{col_index}"
    end
  end

D = 'dead'
A = 'alive'

def life_eval (new_matrix, x, y)
  if new_matrix[x][y] != 'dead'
    return 0
  end

  life = 1
  new_matrix[x][y] = "counted tile"

  life = life + life_eval(new_matrix, x-1, y-1)
  life = life + life_eval(new_matrix, x  , y-1)
  life = life + life_eval(new_matrix, x+1, y-1)
  life = life + life_eval(new_matrix, x+1, y  )
  life = life + life_eval(new_matrix, x-1, y  )
  life = life + life_eval(new_matrix, x-1, y+1)
  life = life + life_eval(new_matrix, x  , y+1)
  life = life + life_eval(new_matrix, x+1, y+1)
  life

  puts ''

  puts life_eval(new_matrix, 1, 1)
end


end
