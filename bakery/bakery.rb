require 'pry'
require_relative './dessert'

class Bakery

  @@all = []
  attr_accessor :location
  attr_reader :name

  def initialize(name, location)
    @name = name
    @location = location
    # @desserts = []
    @@all << self
  end

  def make_dessert(dessert_name, price, ingredients)
    dessert = Desserts.new(dessert_name, price, self, ingredients)
    # @desserts.push(dessert)
  end

  def desserts
    Desserts.all.select do |dessert|
      binding.pry
      dessert.bakery == self
    end
  end

  def ingredients
    self.desserts.map do |dessert|
      binding.pry
      dessert.ingredients
    end
  end

  def self.all
    return @@all
  end

  def shopping_list

  end

end

marthas = Bakery.new('Marthas', 'Bayside')
marthas.make_dessert('Chocolate cake', 3, 'chocolate')
puts marthas.desserts
marthas.ingredients
