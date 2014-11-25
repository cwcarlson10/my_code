

# greeting
puts ""
puts "Welcome to Calculator!"

puts ""
# calculation
while true
  puts ""
  puts "what is the first number?"
  puts ""
  number1 = gets.chomp.to_i
  puts ""
  puts "what is the second number?"
  puts ""
  number2 = gets.chomp.to_i

  puts "How do you want to calculate?"
  puts "1.  Add"
  puts "2.  Subtract"
  puts "3.  Multiply"
  puts "4.  Divide"
  puts "5.  No more calculating please"
  puts ""
  choice = gets.chomp.to_i - 1
  break if choice == 4


  if choice == 0
    answer = number1 + number2
    puts ""
    puts "your answer is #{answer}"
  elsif choice == 1
    answer = number1 - number2
    puts ""
    puts "your answer is #{answer}"
  elsif choice == 2
    answer = number1 * number2
    puts ""
    puts "your answer is #{answer}"
   elsif choice == 3
    answer = number1.to_f / number2.to_f
    puts ""
    puts "your answer is #{answer}"
  else
    puts "Please enter 1, 2, 3, 4, or 5"
    redo
  end
  puts ""
  puts "Let's calculate some more!"
  puts ""
  puts "----------------------------------------"
  puts ""
end
puts "Thanks for Calculating!"
