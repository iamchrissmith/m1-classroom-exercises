def bisect_search(find, values)
  if values.empty?
    return puts "Not found! (Looking for #{find})"
  end

  half_index = values.length / 2 - 1
  m = values[ half_index ]

  if find == m
    puts "Found: #{find}"
  elsif find < m
    bisect_search(find,values[0...half_index])
  elsif find > m
    bisect_search(find,values[half_index+1..values.length])
  end

end
t = rand(1000) #searching for
values = (1..10000).to_a.sample(1000).sort
# values << t
# values = values.sort
# p "Initial values: #{values}"
bisect_search(t, values)
