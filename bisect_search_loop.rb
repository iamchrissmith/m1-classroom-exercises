require 'byebug'

to_find = rand(1000) #searching for
values = (1..10000).to_a.sample(1000).sort
# values << to_find
# values = values.sort
not_found = true
search_set = values

while not_found && !search_set.empty?
  m_index = search_set.length/2
  m = search_set[m_index]
  # byebug
  if to_find == m
    not_found = false
  elsif m < to_find
    search_set = search_set[m_index+1..search_set.length]
    # search_set.slice!(m_index..search_set.length)
    # search_set.shift
    # p search_set
  elsif m > to_find
    search_set = search_set[0...m_index]
    # search_set.slice!(0..m_index)
    # search_set.pop
    # p search_set
  end
end

puts not_found ? "Not Found! #{to_find}" : "Found! #{to_find}"
# puts "#{t} in #{values}"
