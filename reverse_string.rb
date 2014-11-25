class ReverseString

 def reverse_string
   str = 'apple'
   reverse = []
   stri = str.split("")
   ele1 = stri.pop
   ele2 = stri.pop
   ele3 = stri.pop
   ele4 = stri.pop
   ele5 = stri.pop
   strin = reverse.push(ele1).push(ele2).push(ele3).push(ele4).push(ele5)
   string = strin.join.to_s
   puts "#{string}"
 end
end