class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :long_url
      t.string :short_url
      t.timestamps(null: false)
    end
  end
end
