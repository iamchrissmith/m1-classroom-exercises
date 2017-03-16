def length(string)
  string.length
end

puts length("pizza")

def upcase(string)
  string.upcase
end

puts upcase("pizza")

def sub(string,find,replace)
  string.sub(find,replace)
end

puts sub("dog","d","f")
puts sub("dud","d","f")

def gsub(string,find,replace)
  string.gsub(find,replace)
end

puts gsub("dud","d","f")

def split(string)
  string.split(" ")
end

p split("Hello Dear Friends")

def split_with_arg(string,arg=" ")
  string.split(arg)
end

p split_with_arg("one,two,three", ",")

def substring(string, start, sub_end)
  string[start.to_i, sub_end.to_i]
end

puts substring("pizza", 3, 4)

puts substring("pizza", 1,4)
