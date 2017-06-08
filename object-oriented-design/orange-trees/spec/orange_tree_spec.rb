require_relative "../orange"
require_relative "../orange_tree"

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe "age" do
    it "has an age" do
      expect(tree.age).to eq 0
    end
  end

  describe "height" do
    it "has a height" do
      expect(tree.height).to eq 0
    end
  end

  describe "pass_growing_season" do
    it "should increase the age by 1" do
      tree.pass_growing_season
      expect(tree.age).to eq 1
    end

    it "should make the tree grow by 2.5 feet each year" do
      tree.pass_growing_season
      expect(tree.height).to eq 2.5
    end

    it "should have a maximum height of 25 feet" do
      25.times do
        tree.pass_growing_season
      end
      expect(tree.height).to eq 25
    end

    context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce fruit" do
        8.times do
        tree.pass_growing_season
        end
        expect(tree.fruit.length).to be <= 300
        expect(tree.fruit.length).to be >= 100
      end
    end
  end

  describe "mature?" do
    it "returns true if tree is old enough to bear fruit" do
      6.times do
        tree.pass_growing_season
      end
      expect(tree.mature?).to eq true
    end

    it "returns false if tree is not old enough to bear fruit" do
      tree.pass_growing_season
      expect(tree.mature?).to eq false
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
      expect(tree.dead?).to eq false
    end

    it "should return true for a dead tree" do
      100.times do
        tree.pass_growing_season
      end
      expect(tree.dead?).to eq true
    end
  end

  describe '#has_fruit?' do
    it 'should return true if fruit are on the tree' do
      6.times do
        tree.pass_growing_season
      end
      expect(tree.has_fruit?).to eq true
    end

    it "should return false if the tree has no fruit" do
      expect(tree.has_fruit?).to eq false
    end
  end

  describe "#pick_a_fruit" do
    it "should return an fruit from the tree" do
      6.times do
        tree.pass_growing_season
      end
      first_fruit = tree.fruit[0]
      expect(tree.pick_a_fruit).to eq first_fruit
    end

    it "the returned fruit should no longer be on the tree" do
      6.times do
        tree.pass_growing_season
      end
      first_fruit = tree.fruit[0]
      original_length = tree.fruit.length
      tree.pick_a_fruit
      expect(tree.fruit.index(first_fruit)).to eq nil
      expect(tree.fruit.length).to eq original_length - 1
    end

    it "should raise an error if the tree has no fruit" do
      expect { tree.pick_a_fruit }.to raise_error(FruitTree::NoFruitError)
    end
  end
end
