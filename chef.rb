food = []

puts "What do you want on your sandwitch?"
puts "bread\n mayo\n ham\n cheese\n turkey\n"
food = gets.chomp.split(",")
puts "Your sandwich is made of #{food.join}"


