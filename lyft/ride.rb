class Ride

  attr_accessor :ride, :passenger, :driver
  @@all = []

  def initialize(ride, passenger, driver)
    @ride = ride
    @passenger = passenger
    @driver = driver
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def passenger
    @passenger
  end

  def driver
    @driver
  end

end
