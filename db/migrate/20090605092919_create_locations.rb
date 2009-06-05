class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :location
      t.integer :house_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
