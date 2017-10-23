flowmatic_on = false
flowmatic_on = true
class Animal
  attr_accessor :name
  def initialize(name, legs=4)
    @name = name
    @legs = legs
  end
end

monkey = Animal.new('George', 2)
monkey.name = 'Kong'
dog = Animal.new('Bigelow')
class Monkey
  attr_accessor :name
  def initialize(name)
    @name = name
    @legs = 2
  end
end
monkey = Monkey.new('George')
puts monkey.name

class Dog
  attr_accessor :name
  def initialize(name)
    @name = name
    @legs = 4
  end
end
dog = Dog.new('Bigelow')
puts dog.name
class Dog2 < Animal
  def bark
    puts 'Arf!'
  end
end
dog = Dog2.new('Bigelow')
puts dog.name
dog.bark
class Monkey2 < Animal
  def make_sounds
    puts 'EEh ooh ooh!'
  end
end
monkey = Monkey2.new('George', 2)
monkey.name = 'Oxnard'
monkey.make_sounds
class MySuperclass
  def say_hello
    puts 'Hello!'
  end
end
class MySubClass < MySuperclass
  def say_goodbye
    puts 'Goodbye!'
  end
end
subby = MySubClass.new
subby.say_hello
subby.say_goodbye

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def speak
    puts 'Hello!'
  end
end

class Pirate < Person
  def speak
    puts 'Arr!'
  end
end
esmeralda = Person.new('Esmeralda')
rubybeard = Pirate.new('RubyBeard')
puts esmeralda.name
puts rubybeard.name
esmeralda.speak
rubybeard.speak

class Dog3 < Animal
  def initialize(name)
    puts 'Just made a new dog!'
    super
  end
  def bark
    puts 'Arf!'
  end
end
dog = Dog3.new('Bigelow')
dog.bark
class GuardDog < Dog3
  attr_accessor :strength
  def initialize(name, strength)
    @strength = strength
    super(name)
  end
  def bark
    puts 'Stop, in the name of the law!'
  end
  def attack
    puts "Did #{rand(strength)} damage!"
  end
end
rex = GuardDog.new('Rex', 7)
puts rex.strength
rex.bark
rex.attack
rex.attack

class Monkey3 < Animal
  attr_reader :name, :arms
  def initialize(name, arms = 2)
    @name = name
    @arms = arms
  end
  def make_sounds
    puts 'Eeh ooh ooh!'
  end
end

class FlyingMonkey < Monkey3
  attr_reader :wings
  def initialize(name, wings, arms = 2)
    @wings = wings
    super(name, arms)
  end
  def throw_coconuts
    coconuts = rand(arms)
    damage = coconuts * wings
    puts "Threw #{coconuts} coconuts! It did #{damage} damage."
  end
end
oswald = FlyingMonkey.new('Oswald', 6, 4)
oswald.make_sounds
oswald.throw_coconuts

class Account
  attr_accessor :username, :password
  def initialize(username, password)
    @username = username
    @password = password
  end
end
class SuperSecretAccount < Account
  def initialize(username, password)
    @reset_attempts = 0
    super(username, password)
  end
  def password=(new_password)
    while @reset_attempts < 3
      print 'Current password?: '
      current_password = gets.chomp
      if @password == current_password
        @password = new_password
        puts "Password changed to #{new_password}"
        break
      else
        @reset_attempts += 1
        puts "That's not the right password."
        puts "Attempt #{@reset_attempts} of 3 used up!"
      end
    end
  end
  def password
    'The password is secret!'
  end
end
regular = Account.new('Your name', 'your password')
super_safe = SuperSecretAccount.new('Your name', 'your password')
puts "Your regular account password is #{regular.password}"
regular.password = 'Something else!'
puts "Your regular account password is now #{regular.password}"
puts "If we try to see the secret account password, we get: #{super_safe.password}"
changed_password = 'Something else!'
puts "Trying to change your secret account password to #{changed_password}"
super_safe.password = changed_password
