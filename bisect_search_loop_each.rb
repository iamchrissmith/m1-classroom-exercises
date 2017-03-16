require 'byebug'

to_find = rand(10) #searching for
values = (1..100).to_a.sample(10).sort

begin
values.each do |number|
  p values
  m_index = values.length / 2
  m = values[m_index]

  if to_find == m
    puts "Found {#{to_find} in #{values}}"
    break
  elsif to_find > m
    raise "more"
  elsif to_find < m
    raise "less"
  end
end
rescue Exception => e
  values = values[m+1..values.length] if e.message == "more"
  values = values[0...m] if e.message == "less"
  retry
end
