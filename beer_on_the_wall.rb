load 'englishNumber.rb'

count = 9999

while count > 0
  if count > 1
    puts "#{englishNumber(count).capitalize} bottles of beer on the wall, #{englishNumber(count)} bottles of beer."
    count -= 1
    puts "Take one down and pass it around, #{englishNumber(count)} bottles of beer on the wall."
    puts ""
  else
    puts "#{englishNumber(count).capitalize} bottle of beer on the wall, #{englishNumber(count)} bottle of beer."
    count -= 1
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
  end
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy somem more, 99 bottles of beer on the wall."
