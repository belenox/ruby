rubens_number = nil
if rubens_number.nil?
  rubens_number = 42
end
rubens_number ||= 42
puts rubens_number
rubens_number = nil
rubens_number = rubens_number || 42
puts rubens_number
scarlets_number = 700
scarlets_number ||= 42
puts scarlets_number
rubens_number = 42 if rubens_number.nil?
if !rubens_number.nil?
  puts 'Not nil!'
end
puts 'Not nil!' unless rubens_number.nil?
puts '42! My favorite number!' if rubens_number == 42
unless rubens_number.nil?
  puts 'Not nil!'
else
  puts 'Totally nil.'
end
if rubens_number.nil?
  puts 'Totally nil.'
else
  puts 'Not nil!'
end
puts 'Not nil!' unless rubens_number.nil?
puts 'Totally nil.' if rubens_number.nil?
puts 1 < 2 ? 'One is less than two!' : 'One is greater than two!'
bill = nil
puts bill.nil? ? "Bill's nil!" : "Bill's not nil at all."
number = 1
case number
when 0
  puts 'Zero!'
when 1
  puts "One is fun!"
when 2
  puts "Two. It's true!"
when 3
  puts "Three for me."
else
  puts "#{number}? I don't know that one."
end

number = 7
case number
when 0
  puts "That's definitely zero."
when 1..10
  puts "It's a number between 1 and 10, all right."
when 42
  puts "Ah yes, 42. My favorite number!"
when String
  puts "What? That's a string!"
else
  puts "A #{number}? What in the world is a #{number}?"
end

def true?(idea_we_have)
  idea_we_have
end
most_true_variable = true
puts true?(most_true_variable)
my_var = true
puts 'Truthy!' if my_var
my_var = false
puts 'Truthy!' if my_var
my_var = nil
puts 'Truthy!' if my_var
my_var = 99
puts 'Truthy!' if my_var
puts nil == false
puts 99 == true
truthy_value = 'A fancy string'
falsey_value = nil
puts truthy_value
puts !truthy_value
puts !!truthy_value
puts falsey_value
puts !falsey_value
puts !!falsey_value
def truthy?(thing)
  !!thing
end
puts truthy?('A fancy string')
puts truthy?(nil)
def is_this_a_truthy_thing_or_not?(thing)
  return !!thing
end
def king?(dude)
  if dude == 'The King'
    puts 'Royal!'
  else
    puts 'Not royal.'
  end
end
def queen?(lady)
  if lady == 'The Queen'
    puts 'Royal!'
  else
    puts 'Not royal.'
  end
end
def royal?(person)
  if person == 'The King' || person == 'The Queen'
    puts 'Royal!'
  else
    puts 'Not royal.'
  end
end
royal?('The King')
royal?('The Queen')
royal?('The jester')

list_of_numbers = [1, 2, 3, 4, 5]
def tally_odds_and_evens(numbers)
  evens = []
  odds = []
  numbers.each do |number|
    if number.even?
      puts 'Even!'
      evens.push(number)
    else
      puts 'Odd!'
      odds.push(number)
    end
  end
  puts "#{evens}"
  puts "#{odds}"
end
tally_odds_and_evens(list_of_numbers)
def alert_odd_or_even(number)
  puts number.even? ? 'Even!' : 'Odd!'
end
def update_tally(number, evens, odds)
  if number.even?
    evens.push(number)
  else
    odds.push(number)
  end
end

def tally_odds_and_evens(numbers)
  evens = []
  odds = []
  numbers.each do |number|
    alert_odd_or_even(number)
    update_tally(number, evens, odds)
  end
  puts "#{evens}"
  puts "#{odds}"
end

tally_odds_and_evens(list_of_numbers)

def all_about_my_number(number)
  if number.nil?
    number = 42
  end
  puts "My number is: #{42}"
  if number > 0 == true
    return 'Positive'
  elsif number < 0 == true
    return 'Negative'
  else
    return 'Zero'
  end
end
def sign(number)
  case
  when number > 0
    'Positive'
  when number < 0
    'Negative'
  else
    'Zero'
  end
end

def describe_number(number)
  number ||=42
  puts "My number is: #{number}"
  sign(number)
end
puts all_about_my_number(5)
puts describe_number(-445)
puts describe_number(0)
