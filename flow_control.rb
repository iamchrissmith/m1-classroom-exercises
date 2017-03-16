require 'byebug'

# 1. Write a simple Ruby program which prompts the user to enter a message, then prints that message to the terminal.
# print "Enter your message: "
# message = gets.chomp
# puts message

# 2. Extend your previous program so that if the text the user enters has an even number of letters, it prints “EVEN!”, and if it has an odd number of letters, it prints “ODD!”.
# print "Your input: "
# input = gets.chomp.to_s
# if input.length % 2 == 0 # could have also used input.length.even?
#   puts "EVEN!"
# else
#   puts "ODD!"
# end

# 3.
=begin
If the message ends with a consonant, print “CONSONANT!”
If the message ends with a vowel, print “VOWEL!”
If the message ends with a “y”, print “DON’T KNOW!”
=end

# print "Enter a string: "
# text = gets.chomp.to_s
# vowels = %w(a e o i u)
# if text.match(/[aeiou]/,-1)
#   puts "VOWEL!"
# elsif text[-1] == 'y'
#   puts "DON'T KNOW!"
# else
#   puts "CONSONANT!"
# end

# 4. Use a times loop to generate this output:

# 5.times { puts "Line" }

# 5. 5. Looping with a Condition (even/odd times)

# 5.times do |i|
#   print "Line is "
#   if i.even?
#     puts "Even. (#{i})"
#   else
#     puts "Odd. (#{i})"
#   end
# end

# 6. Three Loops (use times, while, until)
# puts ".times:"
# 5.times do |i|
#   puts "This is my output line #{i+1}"
# end
# puts "while:"
# j = 1
# while j <= 5 do
#   puts "This is my output line #{j}"
#   j += 1
# end
# puts "until:"
# k = 1
# until k > 5 do
#   puts "This is my output line #{k}"
#   k += 1
# end

# 7. Rando-Guesser
# Write two implementations, one with while and one with until that output the following:
# secret = rand(10)
# puts "(secret is #{secret})"
# guess = rand(10)
# puts "Guess is #{guess}"
# until secret == guess
#   puts "Guess again!"
#   guess = rand(10)
#   puts "Guess is #{guess}"
# end
# puts "You win!"

secret = rand(10)
puts "(secret is #{secret})"
guess = rand(10)
puts "Guess is #{guess}"
while secret != guess
  puts "Guess again!"
  guess = rand(10)
  puts "Guess is #{guess}"
end
puts "You win!"
