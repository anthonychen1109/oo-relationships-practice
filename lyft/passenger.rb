require_relative './ride'
require 'pry'

class Passenger

  attr_reader :name
  attr_accessor :age
  @@all = []
  @@premium_members = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    self.rides.each do |ride|
      ride.driver.name
    end
  end

  def total_distance
    total = 0
    self.rides.each do |ride|
      total += ride.ride
    end
  end

end
