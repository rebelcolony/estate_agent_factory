class AddLocationAndTermToHouses < ActiveRecord::Migration
  def self.up
	add_column :houses, :location_id, :integer
	add_column :houses, :term_id, :integer
  end

  def self.down
	drop_column :houses, :location_id
	drop_column :houses, :term_id
  end
end
