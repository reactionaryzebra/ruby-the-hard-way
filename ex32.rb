numbers = [0, 1, 2, 3, 4, 5]
teams = ["MCFC", "CFC", "LFC", "WOL", "SHU"]
things = [2, "pen", false, "number"]

for number in numbers
  team = teams[number]
  if team
    puts "team #{number} is #{team}"
  else
    puts "Does NOT exist"
  end
end

teams.each do |team|
  puts "A team known as #{team}"
end

things.each {|i| puts "This thing is #{i}"}

elements = []

(0..5).each do |i|
  puts "Adding #{i} to the list"
  elements.push(i)
end

elements.each {|i| puts "Element is #{i}"}
