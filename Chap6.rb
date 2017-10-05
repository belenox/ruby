hashery_menu = {
  eggs: 2,
  hash: 3,
  jam: 1,
  sausage: 2,
  biscuit: (1..3)}
hashery_menu['drinks'] = ['coffee', 'orange juice', 'tea']
puts hashery_menu
string_one = 'The King'
string_two = 'The King'
puts string_one.object_id
puts string_two.object_id
symbol_one = :the_king
symbol_two = :the_king
puts symbol_one.object_id
puts symbol_two.object_id
variable_name = :my_fancy_symbol
fancy_words = {bloviate: 'To talk at length'}
hashery_menu.keys.last.to_sym
hashery_menu.delete('drinks')
hashery_menu[:drinks] = {coffee: 1, orange_juice: 2, tea: 1}
hashery_menu[:chunky_bacon] = 1

my_own_menu = {
  'tater_tots' => 2,
  'fancy_toast' => 3,
  'omelette' => 3,
  'tiny_burger' => 4,
  'chunky_bacon' => 1,
  'root_beer_float' => 2,
  'egg_nog' => 2
}
puts "Object ID before: #{my_own_menu.object_id}"
my_own_menu.keys.each do |key|
  my_own_menu[key.to_sym] = my_own_menu.delete(key)
end
puts "Object ID after: #{my_own_menu.object_id}"

puts my_own_menu
