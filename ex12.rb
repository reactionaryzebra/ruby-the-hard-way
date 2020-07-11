# print "Give me a number: "
# number = gets.chomp.to_i
#
# bigger = number * 100
# puts "A bigger number is #{bigger}"
#
# print "Give me another number: "
# another = gets.chomp
# number = another.to_f
#
# smaller = number / 100
# puts "A smaller number is #{smaller}"

print "Give me some money: "
cash = gets.chomp.to_f

puts "You can have some back.  Here is ten percent - #{cash * 0.1}"
