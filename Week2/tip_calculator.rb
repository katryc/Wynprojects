
#calculator
puts "____________________________________________"
puts "How much is the bill?\n"
puts "                                            "
bill = gets.to_f
puts "The bill is $#{'%.2f' %bill}\n"
puts "____________________________________________"
puts "How much would you like to tip?\n"

user_tip = gets.to_f
tip = bill * user_tip/100
total = tip + bill
puts "____________________________________________"

puts "How many ppl at your table?\n"
the_number_of_ppl = gets.to_f
# puts "How many ppl at your table"
share = total / the_number_of_ppl
puts "_________________"
puts "                                            "

#The number of ppl at your table
puts "Your share is : $#{'%.2f' % share}\n "
puts "                                            "
puts "____________________________________________"
