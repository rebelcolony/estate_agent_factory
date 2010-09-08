class RenameTerms < ActiveRecord::Migration
  def self.up
    rename_column :terms, :terms, :name
  end

  def self.down
    rename_column :terms, :name, :terms
  end
end
