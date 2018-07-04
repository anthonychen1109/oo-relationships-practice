require_relative './ingredients'
require 'pry'

class Desserts

  @@all = []
  attr_accessor :price
  attr_reader :name, :bakery, :ingredients

  def initialize(name, price, bakery, ingredients)
    @name = name
    @price = price
    @bakery = bakery
    @@all << self
  end

  def ingredients
    Ingredients.all.map do |ingredient|
      binding.pry
      ingredient.dessert == self
    end
  end

  # def bakery
  #   self.bakery
  # end

  def self.all
    @@all
  end

end

my_dessert = Desserts.new('Cake', 5, 'Marthas', 'sugar')
puts my_dessert.ingredients
