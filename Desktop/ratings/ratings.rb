movies = {"Life_of_Pi" => 4, "Lion_King" => 5, "Gladiator" => 5, "Nebraska" => 2}

puts "Type 'roll tide' to see our collection of movies and their ratings."
choice = gets.chomp.downcase

case choice
when 'roll tide'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
else
  puts "Sorry, I didn't understand you."
end