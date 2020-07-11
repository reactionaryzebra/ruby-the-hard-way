# first, second, third = ARGV
#
# puts "Your first variable is #{first}"
# puts "Your second variable is #{second}"
# puts "Your third variable is #{third}"
#

starting_total, = ARGV

starting_total = starting_total.to_f

print "You have #{starting_total} how much would you like to withdraw? "
withdrawal = $stdin.gets.chomp.to_f

puts "You have #{starting_total - withdrawal} remaining"
