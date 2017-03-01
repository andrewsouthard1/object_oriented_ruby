module Movable
  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  attr_reader :fuel, :make, :model, :speed, :direction
  include Movable

  def initialize(input_options)
    @speed = 0
    @direction = "north"
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  attr_reader :speed, :type, :weight, :direction
  include Movable

  def initialize(input_options)
    @speed = 0
    @direction = "north"
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new(fuel: "Electric", make: "Tesla", model: "Model 3")
# car1.honk_horn
# p car1.model

bike1 = Bike.new(type: "hybrid", weight: 20)
# bike1.ring_bell
p bike1.speed
bike1.accelerate
p bike1.speed

p car1.speed
car1.accelerate
p car1.speed

