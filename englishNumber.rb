def englishNumber number
  if number < 0 # No negative number.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  
  numString = '' # This is the string we will return.
  
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  ten_powers = {trillion: 1000000000000, billion: 1000000000, million: 1000000, thousand: 1000, hundred: 100}

  left = number

  ten_powers.each do |word, num|
    # "left" is how much of the number we still have left to write out.
    # "write is the part we are writing out right now.
    # write and left... get it? :)
    write = left/num # How many <num>s left to write out?
    left = left - write * num # Subtract off those <num>s.

    if write > 0
      # Now here's a really sly trick:
      curNum = englishNumber write
      numString = numString + curNum + ' ' + word.to_s
      # That's called "recursion". So what did I just do?  I told this
      # method to call itself, but with "write" instead of
      # "number". Remember that "write" is (at the moment) the number
      # hundreds we have to write out. After we add "hundreds" to
      # "numString", we add the string ' hundred' after it. So, for
      # example, if we originally called englishNumber with 1999 (so
      # "number" = 1999), then at this point "write" would be 19, and
      # "left" would b e99. The laziest thing to do at this point is to
      # have englishNumber write out the 'nineteen' for us, then we
      # write out ' hundred', and then the rest of englishNumber writes
      # out 'ninety-nine'.
      
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' '
      end
    end
  end
    
  write = left/10 # How many tens left to write out?
  left = left - write * 10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left - 1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      
      # Since we took care of the digit in the ones place already, we
      # have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write - 1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  
  if write > 0
    numString = numString + onesPlace[write - 1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(1000)
puts englishNumber(3211)
puts englishNumber(10000)
puts englishNumber(999999)
puts englishNumber(1000000)
puts englishNumber(1000000000)
puts englishNumber(1000000000000)
