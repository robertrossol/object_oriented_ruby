class Vehicle
  attr_accessor
  def initialize()
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
  attr_accessor :fuel, :make, :model
  def initialize(input)
    super()
    @fuel = input[:fuel]
    @make = input[:make]
    @model = input[:model]

  end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :speed, :type, :weight
  def initialize(input)
    super()
    @speed = input[:speed]
    @type = input[:type]
    @weight = input[:weight]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

Schwinn=Bike.new({speed: 40, type: "sport", weight: 30})
Tesla=Car.new({fuel: "unleaded", make: "chevy", model: "cruz" })

puts Schwinn.ring_bell
puts Schwinn.accelerate
puts Schwinn.turn("West")
puts Tesla.honk_horn