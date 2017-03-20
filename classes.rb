require 'pry'

class Fridge
  attr_reader  :brand, :color, :plugged_in, :contents
  attr_accessor :temperature

  def initialize(brand, color, temperature, plugged_in, contents)
    @brand       = brand
    @color       = color
    @temperature = temperature
    @plugged_in  = plugged_in
    @contents    = contents
  end

  def temperature_in_celius
    ((temperature - 32.0) * 5 / 9).round(2)
    # Deduct 32, then multiply by 5, then divide by 9
  end

  def cool
    temperature -=5
  end

  def add_item(new_item)
    contents << new_item
  end

end
fridge = Fridge.new(
"Maytag", "Black", 50, true, ["Milk","Eggs","Cheese"]
)
puts fridge.temperature
fridge.cool
puts fridge.temperature

class Person
  attr_reader :age, :first_name, :last_name, :hair_color, :eye_color, :birthday, :gender, :city, :father, :mother
  def initialize(age, first_name, last_name, hair_color, eye_color, birthday, gender, city, father, mother)
    @age        = age
    @first_name = first_name
    @last_name  = last_name
    @hair_color = hair_color
    @eye_color  = eye_color
    @birthday   = birthday
    @gender     = gender
    @city       = city
    @father     = father
    @mother     = mother
  end

end

binding.pry
""
