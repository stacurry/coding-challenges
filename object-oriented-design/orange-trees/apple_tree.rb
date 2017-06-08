require_relative 'fruit_tree'

class AppleTree < FruitTree
  attr_reader :fruit_type
  
  def initialize(age=0)
    super
    @max_height = 26
    @growth_rate = 2
    @height = [age*@growth_rate, @max_height].min
    @annual_yield = (400..600)
    @age_of_maturity = 5
    @age_of_death = 45
    @fruit_type = Apple.new.class
  end
end
