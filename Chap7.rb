def simon_says(phrase)
  return phrase
end
puts simon_says('Prepare for battle!')
def print_sum(a, b)
  puts a + b
end
def return_sum(a, b)
  return a + b
end
sum = print_sum(2, 3)
puts sum
sum = return_sum(2, 3)
puts sum
def add_things(thing_one, thing_two)
  return thing_one + thing_two
end
puts add_things(3, 7)
def plus_one(number)
  return number + 1
end

puts plus_one 2
def declare_name(name='The Off-White Knight!')
  puts name
end
declare_name()
declare_name('Lady Scarlet the Bold!')
declare_name 'Sir Ruben the Fearless'
if nil
  puts "This text won't be printed"
end
if !nil
  puts 'Printed String'
end
unless nil
  puts 'Also Printed String'
end
puts nil == false
puts 'Prepare for nil!'
def declare_knights(*knights)
  puts knights
end
declare_knights('Lady Scarlet', 'Sir Ruben', 'The Off-White Knight')
def add(a, b)
  a + b
end
puts add(1, 3)
def my_block_method
  yield
end
puts my_block_method { 1 + 1 }
my_block_method {puts 'Hello from the block!'}

def all_about_me(name, age=100, *pets)
  puts "My name is #{name}"
  puts "I'm #{age} years old"
  if block_given?
    yield pets
  else puts pets
  end
end
all_about_me('Ruben', 12, 'Smalls', 'Chucky Jim')
all_about_me('Ruben', 12, 'Smalls', 'Chucky Jim') { |pets| puts pets.join(' and ') }
puts [1, 2, 3].join(' plus ')
def block_party(name)
  yield name
end
block_party('Haldo') { |name| puts "This is #{name}'s party!" }
