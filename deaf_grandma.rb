saying = gets.chomp
bye_count = 0
while bye_count < 2
  if saying == 'BYE'
    bye_count += 1
  elsif saying != saying.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    bye_count = 0
  else
    year = rand(21) + 1930
    puts "NO, NOT SINCE #{year}!"
    bye_count = 0
  end
  saying = gets.chomp
end
