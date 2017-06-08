require_relative 'orange'
require_relative 'orange_tree'
require_relative 'apple'
require_relative 'apple_tree'
require_relative 'pear'
require_relative 'pear_tree'
require_relative 'fruit'
require_relative 'fruit_tree'
require_relative 'tree_grove'
require_relative 'grove_builder'

tree_grove = TreeGrove.new(GroveBuilder.build_grove)

season_counter = 1

until season_counter == 11
  all_orange_trees = tree_grove.return_all_orange_trees.length
  all_apple_trees = tree_grove.return_all_apple_trees.length
  all_pear_trees = tree_grove.return_all_pear_trees.length

  mature_orange_trees = tree_grove.mature_trees_by_type(OrangeTree)
  mature_apple_trees = tree_grove.mature_trees_by_type(AppleTree)
  mature_pear_trees = tree_grove.mature_trees_by_type(PearTree)

  dead_orange_trees = tree_grove.dead_trees_by_type(OrangeTree).length
  dead_apple_trees = tree_grove.dead_trees_by_type(AppleTree).length
  dead_pear_trees = tree_grove.dead_trees_by_type(PearTree).length

  immature_orange_trees = all_orange_trees - mature_orange_trees.length - dead_orange_trees
  immature_apple_trees = all_apple_trees - mature_apple_trees.length - dead_apple_trees
  immature_pear_trees = all_pear_trees - mature_pear_trees.length - dead_pear_trees

  total_oranges = mature_orange_trees.length * rand(mature_orange_trees.sample.annual_yield)
  total_apples = mature_apple_trees.length * rand(mature_apple_trees.sample.annual_yield)
  total_pears = mature_pear_trees.length * rand(mature_pear_trees.sample.annual_yield)

  orange_diameter = [2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2].sample
  apple_diameter = [2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2].sample
  pear_diameter = [2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2].sample

  puts <<-HARVEST_REPORT.gsub(/^ {4}/, '')
    SEASON #{season_counter} REPORT:
    - Orange Trees: #{all_orange_trees} trees (immature: #{immature_orange_trees}, mature: #{mature_orange_trees.length}, dead: #{dead_orange_trees})
      Expected to produce around #{total_oranges} oranges, average diameter of #{orange_diameter}.

    - Apple Trees: #{all_apple_trees} trees (immature: #{immature_apple_trees}, mature: #{mature_apple_trees.length}, dead: #{dead_apple_trees})
      Expected to produce around #{total_apples} apples, average diameter of #{apple_diameter}.

    - Pear Trees: #{all_pear_trees} trees (immature: #{immature_pear_trees}, mature: #{mature_pear_trees.length}, dead: #{dead_pear_trees})
      Expected to produce around #{total_pears} pears, average diameter of #{pear_diameter}.
    ------------------------------------------------------------------------
  HARVEST_REPORT
  season_counter += 1
  tree_grove.pass_growing_season
end

