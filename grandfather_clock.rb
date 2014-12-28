def grandfatherClock &block
  currentHour = Time.now.hour
  hour = twentyfourToTwelve currentHour
  hour.times do
    block.call
  end
end

def twentyfourToTwelve twentyFourHour
  twelveHour = twentyFourHour % 12
  if twelveHour == 0
    return 12
  end
  return twelveHour
end

grandfatherClock do 
  puts 'DONG!'
end
