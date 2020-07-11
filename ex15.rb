# filename = ARGV.first

puts "What is the filename? "
filename = $stdin.gets.chomp

txt = open(filename)

puts "Here's your file #{filename}: "
print txt.read

txt.close()

# print "Type the filename again: "
# file_again = $stdin.gets.chomp
#
# txt_again = open(file_again)
#
# print txt_again.read
