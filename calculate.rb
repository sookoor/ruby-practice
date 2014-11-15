numbers = []
user_input = nil
while true
  puts "What number do you want to include?"
  user_input = gets.chomp
  if user_input == "DONE"
    break
  else
    numbers << user_input.to_i
  end
end

puts "Would you like to add (1), subtract (2), multiply (3), or divide (4) these numbers?"
choice = gets.to_i

if choice == 1 
  puts "The sum is #{numbers.inject(:+)}"
elsif choice == 2
  puts "The result is #{numbers.inject(:-)}"
elsif choice == 3
  puts "The product is #{numbers.inject(:*)}"
elsif choice == 4
  puts "The result is #{numbers.inject(:/)}"
end
