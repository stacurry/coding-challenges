require_relative 'fruit_tree'

class PearTree < FruitTree
  attr_reader :fruit_type
  def initialize(age=0)
    super
    @max_height = 20
    @growth_rate = 2.5
    @height = [age*@growth_rate, @max_height].min
    @annual_yield = (175..225)
    @age_of_maturity = 5
    @age_of_death = 40
    @fruit_type = Pear.new.class
  end
end
