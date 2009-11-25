class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.string :title
      t.text :teaser
      t.integer :price
      t.text :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :maidsrooms
      t.integer :floor_area
      t.integer :lot_area
      t.string :payment

      t.timestamps
    end
  end

  def self.down
    drop_table :houses
  end
end
