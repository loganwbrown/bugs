
puts "Which way do you want to drive?(N, S, E, W)"
@direction = gets.chomp.capitalize

case @direction
when "N"
  puts "You're going to Utah"
when "S"
  puts "You're going to Mexico"
when "E"
  puts "You're going back east"
when "W"
  puts "You're going to Cali"
else
  puts "I don't know where you're going"
end


puts "How fast do you want do drive in mph?(number only)"
@speed = gets.chomp.to_i

case @speed
  when 0..29
    puts "Speed up grandma!"
  when 30..55
    puts "Cruising through town?"
  when 56..75
    puts "Driving down the interstate?"
  when 76..100000
    puts "Slow down Jeff Gordon!"
  else
    puts "I don't know that speed"
  end

puts "Do you want to slow down(y/n)?"
@breaking = gets.chomp

case @breaking
  when "y"
    puts "You're now driving #{(@speed - 10)}"
  when "n"
    puts "You're driving #{@speed}"
  end

