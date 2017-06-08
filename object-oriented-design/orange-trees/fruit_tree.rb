class FruitTree
  attr_reader :max_height, :growth_rate, :annual_yield, :age_of_maturity, :age_of_death
  attr_accessor :age, :height, :fruit

  class NoFruitError < StandardError
  end

  def initialize(age=0)
    @age = age
    @fruit = []
  end

  def pass_growing_season
    self.fruit.clear
    self.age+=1
    if self.height < self.max_height
      self.height += self.growth_rate
    end
    if self.mature?
      rand(self.annual_yield).times do
        self.fruit << self.fruit_type.new
      end
    end
  end

  def mature?
    self.age >= self.age_of_maturity && !dead?
  end

  def dead?
    self.age >= self.age_of_death
  end

  def has_fruit?
    self.fruit.length > 0
  end

  def pick_a_fruit
    raise NoFruitError, "This tree has no fruit" unless self.has_fruit?

     self.fruit.delete(self.fruit[0])
  end
end
