require_relative './dessert'
require 'pry'

class Bakery

  attr_reader :name
  attr_accessor :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @desserts = []
    @@all << self
  end

  def make_dessert(name, price, ingredients)
    dessert = Dessert.new(name, price, self, ingredients)
    @desserts.push(dessert)
  end

  def bakery
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def desserts
    puts @desserts
  end

  def ingredients
    ingredients = self.bakery.select do |bakery|
      bakery.ingredients
    end
    ingredients
  end

  def average_calories
    self.ingredients.map do |ingredient|
      binding.pry
    end
  end

  def shopping_list
    self.ingredients.map do |ingredient|
      ingredient.name
    end
  end

end

new_bakery = Bakery.new('Marthas', 'Bayside')
new_bakery1 = Bakery.new('Ralphs', 'Whitestone')
new_bakery.make_dessert('Chocolate Cake', 5, ["chocolate", "sugar", 'sprinkles'])
new_bakery1.make_dessert('Chocolate Moose', 5, ["chocolate", "sugar"])
new_bakery1.average_calories
