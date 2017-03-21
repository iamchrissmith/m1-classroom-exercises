require 'pry'
#reverse string

class Reverse
  def bwds(text)
    length = text.length
    last_index = length - 1
    new_text = ''
    length.times do |i|
      # binding.pry
      new_text += text[last_index-i]
    end
    new_text
  end
end

reverse = Reverse.new

puts reverse.bwds("cow")
puts reverse.bwds("racecar")
puts reverse.bwds("hello world")
