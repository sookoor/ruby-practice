def even_fibonacci_sum sum, prev, cur
  if sum < 4000000
    if cur % 2 == 0
      sum += cur
    end
    even_fibonacci_sum sum, cur, prev + cur
  else
    return sum
  end
end

puts even_fibonacci_sum 0, 1, 2
