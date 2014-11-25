continue = 'y'

  puts ""
  puts "Welcome to the game \"Rock, Paper, Scissors\"!"
  puts ""
  puts "To play press Enter"
  gets.chomp
while continue == 'y'
  puts "How to play: chose rock, paper, or scissors"
  player_choice = gets.chomp
  comp_choice = ["rock","paper","scissors"]
  answer = comp_choice.sample
  puts ""
  puts "You chose #{player_choice}"
  puts "The computer chose #{answer}"

    if player_choice == "rock" && answer == "paper"
      puts "therefore the computer wins!"
    elsif player_choice == "paper" && answer == "rock"
      puts "therefore you win!"
    elsif player_choice == "scissors" && answer == "rock"
      puts "therefore the computer wins!"
    elsif player_choice == "rock" && answer == "scissors"
      puts "therefore you win!"
    elsif player_choice == "paper" && answer == "scissors"
      puts "therefore the computer wins!"
    elsif player_choice == "scissors" && answer == "paper"
      puts "therefore you win!"
    elsif player_choice == answer
      puts "therefore you tie!"
    end
  puts ""
  puts "Do you want to play again? (y/n)"
  continue = gets.chomp
end







