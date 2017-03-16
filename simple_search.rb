runs = []
20.times do # Linear Search
values = (1..1000).to_a.shuffle
x = rand(1000)

# Set a found flag to false
# Set a marker to zero
# Find the value in values at position marker
# See if that value is equal to the one we're searching for
# If it is, set found to true
# If it's not, do nothing
# If marker is at the end of the set, exit the search and say the value was not found
# If the value has not been found, increment the marker and go back to step 2
# If the value has been found, print that message
found = false
marker = 0

# while !found && ( marker < values.last )
#   value = values[marker]
#   found = true if value == x
#   marker += 1
# end

values.each do |value|
  if value == x
    found = true
    break
  end
  marker += 1
end


# if !found
#   puts "Value not found."
# else
#   puts "Value found"
# end

# puts "Ran #{marker} times."
runs << marker
end
sum = 0
runs.each { |a| sum+=a }
puts "Ran #{runs.length} with an average of #{sum/runs.length}"
=begin
How many comparisons would run in the best-case scenario for that algorithm?
We would run the loops a minimum of 1

How many comparisons would run in the worse-case scenario for that algorithm?
Worst case would be 1000 since that will have searched all the numbers

How many comparisons would run in an average case?
500
How would the worst-case scenario grow in proportion to the number of elements in the set?
The worst case would always be the upper limit on the number of elements and the average is always that / 2
=end
