class AddClickCountToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :click_count, :integer, default: 0
  end
end
