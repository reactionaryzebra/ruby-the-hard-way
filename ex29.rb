people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many catss! The world is saved!"
end

if people < dogs
  puts "Too many doggies!"
end

if people > dogs
  puts "Not enough dogs to go around"
end

dogs += 5

if people >= dogs
  puts "There are at least as many people as dogs"
end

if people <= dogs
  puts "There are at least as many dogs as people"
end

if people == dogs
  puts "people are dogs"
end
