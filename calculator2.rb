
class Calculator

  
    def get_input
      puts "Welcome to Calculator!"

      puts "To begin calcuation enter '1'. To quit enter '0'"
      option = gets.chomp.to_i - 1

        if option == 0
          puts "here we go!"
        else
          puts "Thanks for calculating!"
        end

      puts "What is your first number?"

      @num1 = gets.chomp.to_i
      puts "Do you want to: 1- Add, 2- Subtract, 3- Multiply, or 4- Divide #{@num1}"
      choice = gets.chomp.to_i - 1
        if choice > 3
          puts "please enter 1, 2, 3, 4"
        end
      puts "what is your second number?"
      @num2 = gets.chomp.to_i
        if choice == 0
          answer = add
          puts " Your answer is :#{answer}"
        elsif choice == 1
          answer = subtract
          puts " Your answer is :#{answer}"
        elsif choice == 2
          answer = multiply
          puts " Your answer is :#{answer}"
        elsif choice == 3
          answer = divide
          puts " Your answer is :#{answer}"
        end
    end

    def add
      @num1 + @num2
    end
   
    def subtract
      @num1 - @num2
    end

    def multiply
      @num1 * @num2
    end

    def divide
      new_answer = @num1.to_f
      new_answer2 = @num2.to_f
      new_answer / new_answer2
    end
  

# add
# subtract
# multiply
# divide
end

a = Calculator.new
a.get_input






