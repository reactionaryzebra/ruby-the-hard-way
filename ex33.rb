
def make_numbers_list(number_of_numbers)
  i = 0
  numbers = []
  while i < number_of_numbers
    numbers.push(i)
    i+=1
  end
  return numbers
end

numbers = make_numbers_list(6)

puts "The numbers: "

numbers.each {|num| puts num}
numbers.each do |num|
  puts num
end
for num in numbers
  puts num
end
