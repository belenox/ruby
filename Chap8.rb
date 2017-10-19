citizens = {
  :aaron_a_aardvark => 'A van down by the river',
  :alice_b_abracadabra => 'The green house with two chimneys',
  :trady_blix => 'Mal Abochny',
  :wherefore => 'One half mile due east!'
}
puts citizens.size
def find_person(name, people)
  if people[name]
    puts people[name]
  else
    puts 'Not found!'
  end
end
find_person(:wherefore, citizens)
puts 0.object_id
puts true.object_id
puts :baloney.object_id
puts "The Ballad of Wherefore the Wand'ring Minstrel".object_id
puts 7.class
puts 'Odelay!'.class
greeting = 'Hello!'
greeting = String.new('Hello!')
puts greeting
puts greeting.class

class Minstrel
  def initialize(name)
    @name = name
  end

  def introduce
    puts "My name is #{@name}!"
  end

  def sing
    puts 'Tralala!'
  end
end

wherefore = Minstrel.new('Wherefore')
wherefore.introduce
wherefore.sing
regular_old_var = 'Hello!'
puts regular_old_var
def fancy_greeting
  greeting = 'Salutations!'
end
3.times { |number| puts number }

$location = 'The Carmine Pines!'
def where_are_we?
  puts $location
end
where_are_we?
class Weezard
  def initialize(name, power='Flight')
    @name = name
    @power = power
    @spells = 5
  end
  def cast_spell(name)
    if @spells > 0
      @spells -= 1
      puts "Cast #{name}! Spells left: #{@spells}."
    else
      puts 'No more spells!'
    end
  end
end
merlin = Weezard.new('Merlin', 'Sees the future')
fumblesnore = Weezard.new('Fumblesnore', 'Naps')
merlin.cast_spell('Prophecy')
fumblesnore.cast_spell('Nap')

class YeOldClass
  local_var = 'I only exist inside the class'
end
local_var = "I'm the top-level local variable"
def local_in_method
  local_var = "I'm local in this method"
  puts local_var
end
puts local_var
local_in_method
class Monkey
  @@number_of_monkeys = 0
  def initialize
    @@number_of_monkeys += 1
  end
  class << self
    def number_of_monkeys
      @@number_of_monkeys
    end
  end
end
monkey1 = Monkey.new
monkey2 = Monkey.new
monkey3 = Monkey.new
puts Monkey.number_of_monkeys
class Minstrel
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
end
wherefore = Minstrel.new('Wherefore')
puts wherefore.name
wherefore.name = 'Stinky Pete'
puts wherefore.name

class Minstrel
  attr_accessor :name
  attr_reader :ballad
  def initialize(name)
    @name = name
    @ballad = 'The Ballad of Chucky Jim'
  end
end
wherefore = Minstrel.new('Wherefore')
puts wherefore.name
wherefore.name = 'Wherefive'
puts wherefore
puts wherefore.ballad


class Ballad
  attr_accessor :title
  attr_accessor :lyrics

  @@number_of_ballads = 0

  def initialize(title, lyrics='Tralala!')
    @title = title
    @lyrics = lyrics
    @@number_of_ballads += 1
  end

  def self.number_of_ballads
    @@number_of_ballads
  end
end
ballad = Ballad.new('The Ballad of Chucky Jim')

puts "Number of ballads: #{Ballad.number_of_ballads}"
puts "Ballad object ID: #{ballad.object_id}"
puts "Ballad title: #{ballad.title}"
puts "Ballad object ID again!: #{ballad.object_id}"
puts "Ballad lyrics: #{ballad.lyrics}"
