x = (1..100)
x.each do |f|
  if f % 3 ==  and f % 5 == 0
    puts 'FizzBuzz'
  elsif f % 3 == 0
    puts 'Fizz'
  elsif f % 5 == 0
    puts 'Buzz'
  else
    puts f
  end
end