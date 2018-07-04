require 'pry'
require_relative './ingredients'

class Dessert

  attr_reader :name, :bakery
  attr_accessor :price, :ingredients
  @@all = []

  def initialize(name, price, bakery, ingredients)
    @name = name
    @ingredients = ingredients.map do |item|
      Ingredient.new(item, self, 5)
    end
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
      binding.pry
    end
  end

end
