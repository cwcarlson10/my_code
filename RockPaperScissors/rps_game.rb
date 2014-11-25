class RPC_game
  player_option = %w[rock paper scissors]
  computer_option = %w[rock paper scissors]
  def instructions
    puts "Chose rock paper or scissors"
  end
  def PlayerChoice
    player_option = gets.chomp
  end

  def ComputerChoice
    option = computer_option.sample
    puts "computer chose #{option}"
  end
end



#while continue == "y"
    #def introduction
      #puts "Do you want to play Rock, Paper Scissors?"
      #puts "To continue press enter"
      #gets.chomp
      #puts "rock, paper , scissors shoot!"
      #player_choice = gets.chomp
      #comp_choice = ["rock","paper","scissors"]
      #answer = comp_choice.sample
          #if answer == "rock" && player_choice == "paper"
            #puts "comp wins!"
          #elsif player_choice == "paper" && answer == "rock"
            #puts "you win!"
          #elsif player_choice == "scissors" && answer == "rock"
            #puts "comp wins!"
          #elsif player_choice == "rock" && answer == "scissors"
            #puts "you win!"
          #elsif player_choice == "paper" && answer == "scissors"
            #puts "comp wins!"
          #elsif player_choice == "scissors" && answer == "paper"
            #puts "you win!"
          #elsif player_choice == answer
            #puts "tie!"
          #end
      #puts "Do you want to play again? (y/n)"
      #continue = gets.chomp.downcase
    #end
   #end
