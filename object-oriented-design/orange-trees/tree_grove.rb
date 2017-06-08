class TreeGrove
  attr_reader :trees
  def initialize(trees)
    @trees = trees
  end

  def return_all_orange_trees
    self.trees.select { |tree| tree.class == OrangeTree }
  end

  def return_all_apple_trees
    self.trees.select { |tree| tree.class == AppleTree }
  end

  def return_all_pear_trees
    self.trees.select { |tree| tree.class == PearTree }
  end

  def return_all_mature_trees
    self.trees.select { |tree| tree.mature? }
  end

  def return_all_dead_trees
    self.trees.select { |tree| tree.dead? }
  end

  def pass_growing_season
    self.trees.each { |tree| tree.pass_growing_season }
  end

  def mature_trees_by_type(type)
    self.trees.select { |tree| tree.mature? && tree.class == type }
  end

  def dead_trees_by_type(type)
    self.trees.select { |tree| tree.dead? && tree.class == type }
  end
end

