#calculator3.rb

class CalculatorTwo
  def get_equasion
    puts 'Welcome to Calcultor!'
    puts 'Please enter your equasion?'
    problem = gets.chomp.split(' ')
    @num1 = problem[0]
    @num2 = problem[2]
    @thing = problem[1]
  end

  def calculate
    get_equasion
    if @thing == '+'
      answer = @num1.to_i + @num2.to_i
    elsif @thing == '-'
      answer = @num1.to_i - @num2.to_i
    elsif
      @thing == '*'
      answer = @num1.to_i * @num2.to_i
    elsif
      @thing == '/'
      answer = @num1.to_f / @num2.to_f
    end
    puts "And the answer is: #{answer}!"
    new_equasion
  end

  def new_equasion
    puts "Do you want to calculate again? (y/n)"
    new_answer = gets.chomp.downcase
    if new_answer == "y"
      calculate
    elsif new_answer == "n"
      goodbye
    else
      puts "Please enter 'y' or 'n'"
      new_equasion
    end
  end

  def goodbye
    puts "Thanks for caculating!!"
  end
end

a = CalculatorTwo.new
a.calculate