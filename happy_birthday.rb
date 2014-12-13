puts "In what year were you born?"
birthyear = gets.chomp.to_i
puts "In what month were you born?"
birthmonth = gets.chomp.to_i
puts "On what day were you born?"
birthday = gets.chomp.to_i

now = Time.new

years = now.year - birthyear

if now.month < birthmonth or (now.month == birthmonth and now.day < birthday)
  years -= 1
end

years.times do
  puts "SPANK!"
end
