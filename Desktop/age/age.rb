puts "What's your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

case age
when 16..17
  puts "You can Drive"
when 18..20
  puts "You can drive, vote and smoke"
when 21..24
  puts "You can drive, vote, smoke and drink"
when 25..64
  puts "You can drive, vote, smoke, drink and rent a car"
when 65.100
  puts "You can drive, vote smoke, drink, rent a car and retire"
when 6..15
  puts "Stay in school"
when 0..4
  puts "Go watch cartoons"
end