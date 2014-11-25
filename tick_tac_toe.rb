

line_one   = []
line_two   = []
line_three = []

upper_left    = line_one[0]
middle_left   = line_two[0]
bottom_left   = line_three[0]
upper_center  = line_one[1]
middle_center = line_two[1]
lower_center  = line_three[1]
upper_right   = line_one[2]
middle_right  = line_two[2]
lower_right   = line_three[2]


  puts "Welcome to Tic Tac Toe"


  puts "Please place your first X by selecting 1, 2, or 3 then 4, 5, or 6"

  puts "1 = top row"
  puts "2 = middle row"
  puts "3 = bottom row"
  puts ""
  puts "4 = left"
  puts "5 = center"
  puts "6 = right"

  player_selection = gets.chomp.split(",")

  if player_selection == ('1 4')
    puts "X to top left"
  end








