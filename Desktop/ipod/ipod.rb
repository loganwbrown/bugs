@minutes_on_my_ipod = 23210954
@minutes_in_an_hour = 60
@hours_in_a_day = 24
@days_in_a_month = 30
@months_in_a_year = 12

@hours = @minutes_on_my_ipod/@minutes_in_an_hour
@days = @hours/@hours_in_a_day
@months = @days/@days_in_a_month
@years = @months/@months_in_a_year

puts "You have #{@years} years of music on this ipod"
puts "You have #{@months} months of music on this ipod"
puts "You have #{@days} days of music on this ipod"
puts "You have #{@hours} hours of music on this ipod"