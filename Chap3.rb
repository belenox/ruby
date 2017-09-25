flowmatic_on = false
load 'flow.rb'
flowmatic_on = true
water_avaliable = true
if flowmatic_on && water_avaliable
  flow_rate = 50
end
flowmatic_on = true
water_available = true
if flowmatic_on && water_available
     flow_rate = 50
elsif !flowmatic_on
     puts "Flowmatic is off!"
else
     puts "No water!"
end
if flow_rate > 50
  puts "Warning! flow_rate is above 50!  It is #{flow_rate}."
  flow_rate = 50
  puts "The flow_rate has been reset to #{flow_rate}."
elsif flow_rate < 50
  puts "Warning! flow_rate is below 50! It's #{flow_rate}."
  flow_rate = 50
  puts "The flow_rate's been reset to #{flow_rate}."
else
  puts "The flow_rate is #{flow_rate} (thank goodness)."
end
if flow_rate < 50 || flow_rate > 50
  puts "Warning! flow_rate is not 50! It's #{flow_rate}."
  flow_rate = 50
  puts "The flow_rate's been reset to #{flow_rate}."
else
  puts "The flow_rate is #{flow_rate} (thank goodness)."
end
if flow_rate != 50
  puts "Warning! flow_rate is not 50! It's #{flow_rate}."
  flow_rate = 50
  puts "The flow_rate's been reset to #{flow_rate}."
else
  puts "The flow_rate is #{flow_rate} (thank goodness)."
end
if flow_rate != 50
  puts "Warning! flow_rate is not 50! It's #{flow_rate}."
end
unless flow_rate == 50
  puts "Warning! flow_rate is not 50! It's #{flow_rate}."
end

puts "Holy giraffes! You fell into a maze!"
print "Where to? (N, E, S, W): "
direction = gets.chomp
puts "#{direction}, you say? A fine choice!"
if direction == "N"
  puts "You are in a maze of twisty little passages, all alike."
elsif direction == "E"
  puts "An elf! And his pet ham!"
elsif direction == "S"
  puts "A minotaur! Wait, no, that's just your reflection."
elsif direction == "W"
  puts "You're here, wherever here is."
else
  puts "Wait, is that even a direction?"
end
