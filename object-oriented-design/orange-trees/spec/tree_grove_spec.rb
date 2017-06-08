require_relative '../tree_grove'
require_relative '../grove_builder'

describe TreeGrove do
  let (:tree_grove) { TreeGrove.new(GroveBuilder.build_grove) }
  let (:num_orange_trees) { 70 }
  let (:num_apple_trees) { 65 }
  let (:num_pear_trees) { 50 }
  let (:num_mature_trees) { 130 }
  let (:num_dead_trees) { 15 }
  let (:trees_that_mature_in_one_year) { 20 }

  describe 'return_all_orange_trees' do
    it 'returns all orange trees in the grove' do
      expect(tree_grove.return_all_orange_trees.length).to eq num_orange_trees
    end
  end

  describe 'return_all_apple_trees' do
    it 'returns all apple trees in the grove' do
      expect(tree_grove.return_all_apple_trees.length).to eq num_apple_trees
    end
  end

  describe 'return_all_pear_trees' do
    it 'returns all pear trees in the grove' do
      expect(tree_grove.return_all_pear_trees.length).to eq num_pear_trees
    end
  end

  describe 'return_all_mature_trees' do
    it 'returns all mature trees in the grove' do
      expect(tree_grove.return_all_mature_trees.length).to eq num_mature_trees
    end
  end

  describe 'return_all_dead_trees' do
    it 'returns all dead trees in the grove' do
      expect(tree_grove.return_all_dead_trees.length).to eq num_dead_trees
    end
  end

  describe 'pass_growing_season' do
    it 'causes all trees in the grove to pass one growing season' do
      tree_grove.pass_growing_season
      expect(tree_grove.return_all_mature_trees.length).to eq num_mature_trees + trees_that_mature_in_one_year
    end
  end
end
