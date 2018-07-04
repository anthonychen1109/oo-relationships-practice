class Ingredients

  @@all = []

  attr_accessor :dessert, :calorie
  attr_reader :name

  def initialize(name, dessert, calorie)
    @name = name
    @dessert = dessert
    @calorie = calorie
    @@all << self
  end

  def self.all
    @@all
  end

  def find_all_by_name(name)
    @@all.select do |ingredient|
      ingredient.include?(name)
    end
  end

end
