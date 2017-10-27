module Colorize
  def color
    [:red, :blue, :green, :yellow].sample
  end
end
module Bucket
  MAX_BITS_AND_TRINKETS = 100
  def announcing_bits_and_trinkets
    puts 'Step right up! Bits and trinkets available now!'
  end
end
RUBY = 'Wonderful!'
puts RUBY
RUBY = 'Stupendous!'
puts RUBY
class Announcer
  include Bucket
end
loud_lucy = Announcer.new
loud_lucy.announcing_bits_and_trinkets
class Announcer2
  extend Bucket
end
Announcer2.announcing_bits_and_trinkets
module Enchanted
  def speak
    puts 'Hello there!'
  end
end
class Animal
  def initialize(name)
    @name = name
  end
end
class Dog < Animal
  include Enchanted
  def bark
    puts 'Arf!'
  end
end
bigelow = Dog.new('Bigelow')
bigelow.bark
bigelow.speak
module APocketFullofMethods
  NUMBER_OF_METHODS = 42
end

puts APocketFullofMethods::NUMBER_OF_METHODS

module Namespace
  GREETING = 'Hello from INSIDE the module!'
end
GREETING = 'Hello from OUTSIDE the module!'

puts GREETING
puts Namespace::GREETING
module Colorize2
  def color
    :purple
  end
end

class Food
  def serve
    puts 'Food is ready!'
  end
end

class PandaFood < Food
  include Colorize2
  attr_accessor :calories
  CALORIES_PER_SERVING = 1000
  def initialize
    @calories = CALORIES_PER_SERVING
  end
  def serve
    puts 'One piping how serving of panda food, coming up!'
  end
  def analyze
    puts "This food contains #{@calories} calories and it is #{color}"
  end
end
hogarths_food = PandaFood.new
puts hogarths_food.analyze
