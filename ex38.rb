ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in this list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding #{next_one}"
  stuff.push(next_one)
  puts "There are now #{stuff.length} items in stuff"
end

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
