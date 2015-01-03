require 'pry'

class TicTacToe
#set up game board
  def initialize
    @board = []
    line_one =   [1, 2, 3]
    line_two =   [4, 5, 6]
    line_three = [7, 8, 9]
    @board << line_one
    @board << line_two
    @board << line_three
  end
#display game board
  def display
    binding.pry
    @board.each do |d|
      puts d.collect {|p| p }.join(' ')
    end
    rules
  end
#set and explain the rules of the game and get first player selection
  def new_game
    binding.pry
    puts 'Do you want to play again? (y/n)'
    play_again = gets.chomp.downcase
    if play_again == 'y'
      a = TicTacToe.new
      a.display
    else play_again == 'n'
      binding.pry
      goodbye
    end
  end
      
  def goodbye
    binding.pry
    puts 'Thanks for playing!'
  end
  
  def rules
    @score = true
    while @score == true
      puts "get 3 x's in a row to win"
      puts "Player 1: to place an x select the number of the box you want and press enter"
      answer = gets.chomp.to_i
      case answer
      when 1
        @board[0][0] = 'x'
      when 2
        @board[0][1] = 'x'
      when 3
        @board[0][2] = 'x'
      when 4
        @board[1][0] = 'x'
      when 5
        @board[1][1] = 'x'
      when 6
        @board[1][2] = 'x'
      when 7
        @board[2][0] = 'x'
      when 8
        @board[2][1] = 'x'
      when 9
        @board[2][2] = 'x'
      end
      puts "Player 2 : to place and o select the number box you want and press enter"
      player2_answer = gets.chomp.to_i
      case player2_answer
      when 1
        @board[0][0] = 'o'
      when 2
        @board[0][1] = 'o'
      when 3
        @board[0][2] = 'o'
      when 4
        @board[1][0] = 'o'
      when 5
        @board[1][1] = 'o'
      when 6
        @board[1][2] = 'o'
      when 7
        @board[2][0] = 'o'
      when 8
        @board[2][1] = 'o'
      when 9
        @board[2][2] = 'o'
      end


      if @board[0][0] == 'x' && @board[0][1] == 'x' && @board[0][2] == 'x'
        puts 'x wins!'
        @score = false
        if @score == false 
          return false
        end
      binding.pry
      elsif @board[1][0] == 'x' && @board[1][1] == 'x' && @board[1][2] == 'x'
        puts 'x wins!'
      elsif @board[2][0] == 'x' && @board[2][1] == 'x' && @board[2][2] == 'x'
        puts 'x wins!'
      elsif @board[0][0] == 'x' && @board[1][0] == 'x' && @board[2][0] == 'x'
        puts 'x wins!'
      elsif @board[0][1] == 'x' && @board[1][1] == 'x' && @board[2][1] == 'x'
        puts 'x wins!'
      elsif @board[0][2] == 'x' && @board[1][2] == 'x' && @board[2][2] == 'x'
        puts 'x wins!'
      elsif @board[0][0] == 'x' && @board[1][1] == 'x' && @board[2][2] == 'x'
        puts 'x wins!'
      elsif @board[0][2] == 'x' && @board[1][1] == 'x' && @board[2][0] == 'x'
        puts 'x wins!'
      elsif @board[0][0] == 'o' && @board[0][1] == 'o' && @board[0][2] == 'o'
        puts 'o wins!'
      elsif @board[1][0] == 'o' && @board[1][1] == 'o' && @board[1][2] == 'o'
        puts 'o wins!'
      elsif @board[2][0] == 'o' && @board[2][1] == 'o' && @board[2][2] == 'o'
        puts 'o wins!'
      elsif @board[0][0] == 'o' && @board[1][0] == 'o' && @board[2][0] == 'o'
        puts 'o wins!'
      elsif @board[0][1] == 'o' && @board[1][1] == 'o' && @board[2][1] == 'o'
        puts 'o wins!'
      elsif @board[0][2] == 'o' && @board[1][2] == 'o' && @board[2][2] == 'o'
        puts 'o wins!'
      elsif @board[0][0] == 'o' && @board[1][1] == 'o' && @board[2][2] == 'o'
        puts 'o wins!'
      elsif @board[0][2] == 'o' && @board[1][1] == 'o' && @board[2][0] == 'o'
        puts 'o wins!'
      end
      puts ''

      display
      puts ''
    end
    new_game
    binding.pry
   end  
#get random choice from computer
#ask if player wants to play again
end
a = TicTacToe.new
a.display










