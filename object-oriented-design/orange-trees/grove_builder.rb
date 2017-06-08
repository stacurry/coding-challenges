module GroveBuilder
  def self.add_orange_trees
    orange_trees = []
    20.times { orange_trees << OrangeTree.new(5) }
    20.times { orange_trees << OrangeTree.new(20) }
    10.times { orange_trees << OrangeTree.new(37) }
    20.times { orange_trees << OrangeTree.new(50) }
    orange_trees
  end

  def self.add_apple_trees
    apple_trees = []
    10.times { apple_trees << AppleTree.new }
    10.times { apple_trees << AppleTree.new(5) }
    20.times { apple_trees << AppleTree.new(20) }
    20.times { apple_trees << AppleTree.new(37) }
    5.times { apple_trees << AppleTree.new(50) }
    apple_trees
  end

  def self.add_pear_trees
    pear_trees = []
    10.times { pear_trees << PearTree.new }
    10.times { pear_trees << PearTree.new(20) }
    20.times { pear_trees << PearTree.new(37) }
    10.times { pear_trees << PearTree.new(50) }
    pear_trees
  end

  def self.build_grove
    trees = []
    trees += self.add_orange_trees
    trees += self.add_apple_trees
    trees += self.add_pear_trees
    trees
  end
end

