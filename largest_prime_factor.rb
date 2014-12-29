#!/usr/bin/ruby

def findLargestPrimeFactor n
  factor = 1
  (2..3).each do |i|
    while n % i == 0 do
      factor = i
      n /= i
    end
  end

  i = 6
  while n > factor = i - 1 do
    while n % factor == 0 do
      n /= factor
    end

    factor = i + 1
    if n == factor
      break
    end

    while n % factor == 0
      n /= factor
    end
    
    i += 6
  end
  puts factor
end

findLargestPrimeFactor 13195
findLargestPrimeFactor 600851475143
