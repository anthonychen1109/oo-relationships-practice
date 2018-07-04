class Ingredient

  attr_reader :name, :calorie, :dessert
  @@all = []

  def initialize(name, dessert, calorie)
    @name = name
    @dessert = dessert
    @calorie = calorie
    @@all << self
  end

  def self.all
    @@all
  end

end
