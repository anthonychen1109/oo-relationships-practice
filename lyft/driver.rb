require_relative './ride'
require_relative './passenger'
require 'pry'

class Driver

  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    self.rides.each do |ride|
      ride.passenger.name
    end
  end

  def self.average_distance
    self.rides.each do |ride|
      binding.pry
    end
  end

end

new_driver = Driver.new('Driver1', 50)
new_passenger = Passenger.new('Steve', 30)
new_ride = Ride.new(15.0, new_passenger, new_driver)
puts new_ride.passenger
