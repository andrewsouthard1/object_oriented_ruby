class Vehicle
  attr_reader :direction, :brake

  def initialize(input_options = {})
    @speed = 0
    @direction = "north"
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :speed, :type, :weight

  def initialize(input_options)
    super
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new(fuel: "Electric", make: "Tesla", model: "Model 3")
car1.honk_horn
p car1.model

bike1 = Bike.new(speed: "fixed", type: "hybrid", weight: 20)
bike1.ring_bell
p bike1.speed

