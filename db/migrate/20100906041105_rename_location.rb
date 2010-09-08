class RenameLocation < ActiveRecord::Migration
  def self.up
    rename_column :locations, :location, :name
  end

  def self.down
    rename_column :locations, :name, :location
  end
end
