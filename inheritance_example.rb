class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car <Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

Schwinn=Bike.new
Tesla=Car.new

puts Schwinn.ring_bell
puts Schwinn.accelerate
puts Schwinn.turn("West")
puts Tesla.honk_horn