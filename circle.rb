class Circle
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * (@radius ** 2)
  end

  def perimeter
    2 * Math::PI * @radius
  end
end

print "What is the radius of your circle? > "
radius = gets.to_i

a_circle = Circle.new(radius)
puts "Your circle has an area of #{a_circle.area}"
puts "Your circle has a perimeter of #{a_circle.perimeter}"
