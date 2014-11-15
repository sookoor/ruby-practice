puts "Enter a starting year:"
starting_year = gets.chomp.to_i
puts "Enter an ending year:"
ending_year = gets.chomp.to_i
puts  ""
cur_year = starting_year
while cur_year <= ending_year
  if ((cur_year % 4 == 0 and cur_year % 100 != 0) or (cur_year % 400 == 0))  
    puts cur_year
    cur_year += 4
  else
    cur_year += 1
  end
end
