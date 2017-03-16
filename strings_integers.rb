f = "First"
l = "Last"

fl = f + l
lf = l + f
f_l = f + " " + l
f_l = l + " " + f + " " + l + " " + f
fl2 = "#{f}#{l}"
lf2 = "#{l}#{f}"
f_l2 = "#{f} #{l}"
l_f_l_f2 = "#{l} #{f} #{l} #{f}"

name_1 = "Megan Smith"
name_2 = "Todd Park"

fname = name_1.split(' ')
fname = fname[0]
fname2 = name_1[0..4]

# 2. would either method work for name_2?
# the first one would, but we would need a different count for the second method [0..3]

initials = name_2.split(' ')
initials.each { |name| puts name[0]}

a = 12
b = 65
c = 31
d = 98

average = ( a.to_f + b + c + d ) / 4

puts a + b * c / d
puts (a + b) * c / d
puts a + b * (c / d)

a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

puts a.length
puts b.length
puts c.length
puts d.length
average_length = ( a.length + b.length + c.length + d.length ) /4
puts average_length

def sing(age)
  song = "Happy"
  age -= 1
  age.times { song += " happy"}
  song += " birthday!"
end

age = 4
puts sing(age)
