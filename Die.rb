class Die

  def initialize
    # I'll just roll the die, though we could do something else if we
    # wanted to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def showing
    @numberShowing
  end

  def cheat number
    if number > 0 and number < 7
      @numberShowing = number
    end
  end

end

die = Die.new
puts "Initialized: " + die.showing.to_s
die.cheat(6)
puts "Set to 6: " + die.showing.to_s
die.roll
puts "Rolled: " + die.showing.to_s
die.cheat(3)
puts "Set to 3: " + die.showing.to_s
die.cheat(7)
puts "Set to 7: " + die.showing.to_s
