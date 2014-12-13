class OrangeTree

  def initialize
    @start_fruit = 1
    @lifespan = 2
    @age = 0
    @height = 0
    @oranges = 0
  end

  def height
    @height
  end

  def oneYearPasses
    @age += 1
    @height += 1

    if @age >= @start_fruit
      @oranges = @age
    end

    if @age >= @lifespan
      puts "The tree died"
      exit
    end
    puts "One year passes"
  end

  def countTheOranges
    @oranges
  end

  def pickAnOrange
    if @oranges > 0
      @oranges -= 1
      puts "That was a delicious orange!"
    else
      puts "There are no more oranges to pick this year"
    end
  end

end

tree = OrangeTree.new

puts "Picking an orange"
tree.pickAnOrange

puts "Number of oranges: " + tree.countTheOranges.to_s

tree.oneYearPasses

puts "Number of oranges: " + tree.countTheOranges.to_s

puts "Picking an orange"
tree.pickAnOrange

puts "Tree height: " + tree.height.to_s

tree.oneYearPasses
