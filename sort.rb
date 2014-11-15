puts "Type in as many words as you want (one per line) and hit Enter on an empty line to end"
word = gets.chomp
words = []
while word != ""
  words.push word
  word = gets.chomp
end

words.sort.each do |word|
  puts word
end
