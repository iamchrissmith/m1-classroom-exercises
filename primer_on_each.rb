# If you had an array of numbers, [1,2,3,4,5,6], how do you print out the doubles of each number? Triples?
numbers = [1,2,3,4,5,6]
numbers.each { |n| puts n*2 } #doubles
numbers.each { |n| puts n*3 } #triples

# If you had the same array, how would you only print out the even numbers? What about the odd numbers?
numbers.each do |n|
  puts n if n % 2 == 0
end

numbers.each do |n|
  puts n if n % 2 != 0
end
# If you had the same array, how could you create a new array which contains each number multipled by 2?
double_numbers = []
numbers.each { |n| double_numbers << n*2 }

# Given an array of first and last names, e.g. ["Ilana Corson", "Lauren Fazah", "Beth Sebian"], how would you print out only first names?
names = ["Ilana Corson", "Lauren Fazah", "Beth Sebian"]
names.each do |name|
  flname = name.split
  puts flname[0]
end

# How would you print out only last names?
names.each do |name|
  flname = name.split
  puts flname[1]
end

# How could you print out only the initials?
names.each do |name|
  flname = name.split
  puts "#{flname[0][0]} #{flname[1][0]}"
end

# How can you print out the last name and how many characters are in it?
names.each do |name|
  flname = name.split
  puts "#{flname[1]}: #{flname[1].length}"
end

# How can you create an integer which represents the total number of characters in all the names?
total_chars = 0
names.each do |name|
  flname = name.split
  total_chars += flname[0].length + flname[1].length
end
puts total_chars

# Say you had an array of nested arrays: [['Ilana', 'Corson'], ['Lauren', 'Fazah'], ['Beth', 'Sebian']].
# Each nested array has two elements, a first name and a last name.
# How would you print out each nested array’s full name?
nested_names = [['Ilana', 'Corson'], ['Lauren', 'Fazah'], ['Beth', 'Sebian']]
nested_names.each do |names|
  puts "#{names[0]} #{names[1]}"
end
