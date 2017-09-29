order_one = ['sunny_side_up_egg', 'sunny_side_up_egg', 'sunny_side_up_egg']
order_two = Array.new(3, 'sunny_side_up_egg')
random_array = [1, 'two', 'sunny_side_up_egg', true]
order_three = ['hash']
order_four = ['egg', 'hash']
todays_orders = [order_one, order_two, order_three, order_four]
puts todays_orders.first
puts todays_orders.last
puts todays_orders.empty?
puts todays_orders.length
puts todays_orders
current_order = todays_orders.shift
puts todays_orders
breakfast_items = ['egg', 'hash', 'gravy', 'buscuit', 'sausage', 'sausage', 'jam']
current_food = breakfast_items.shift
puts breakfast_items
current_food = breakfast_items.pop
puts breakfast_items
breakfast_items.push('egg')
breakfast_items.unshift('jam')
breakfast_items.insert(2, 'tea')
puts breakfast_items
puts breakfast_items[2]
todays_orders.each { |order| puts "#{order}"}

our_heroes = {
  the_king: 'the ruler of the kingdom'
  ruben: 'a ruby wizard in training'
  scarlet: 'a ruby wizard in training'
  big_hank: 'the owner of the hashery'
  squeaky_jim: 'a fry cook at the hashery'

}
puts our_heroes[:the_king]
hashery_menu = Hash.new
puts our_heroes.keys
puts our_heroes.values
puts our_heroes.empty?
empty_hash = {}
puts empty_hash.empty?
puts our_heroes.length
puts our_heroes.has_key?(:ruben)
puts our_heroes.has_key?(:trady_blix)
puts our_heroes.has_value('a fry cook at the hashery')

our_heroes.each { |hero, role| puts "#{hero} is #{role}."}

puts ('a'..'f').to_a
puts (1...9).to_a
puts (1..9).first
puts (1..9).last
current_temperature = (300..400).first
puts current_temperature
