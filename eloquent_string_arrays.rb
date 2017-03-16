# Part 1

def first_last(*args)
  p args.first
  p args.last
end

first_last("first", "second", "third")
first_last("first", "second", "third","first", "second", "second-third")

animals = %w(dog cat goat capybara)
animals_proper = animals.map { |animal| animal.capitalize }
animals_proper_string = animal_proper.join(", ")

# Part 2
my_specs = "Chris\n5'10\""
my_specs_array = my_specs.split("\n")

# Part 3
my_name = "Chris"
my_name_bytes = []
my_name.each_byte { |b| my_name_bytes << b }
