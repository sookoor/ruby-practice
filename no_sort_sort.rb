# !/usr/bin/env ruby

def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

uts "Type in as many words as you want (one per line) and hit Enter on an empty line to end"
word = gets.chomp
words = []
while word != ""
  words.push word
  word = gets.chomp
end

puts merge_sort(words)
