require_relative 'fruit_tree'

class OrangeTree < FruitTree
  attr_reader :fruit_type
  def initialize(age=0)
    super
    @max_height = 25
    @growth_rate = 2.5
    @height = [age*@growth_rate, @max_height].min
    @annual_yield = (100..300)
    @age_of_maturity = 6
    @age_of_death = 100
    @fruit_type = Orange.new.class
  end
end
