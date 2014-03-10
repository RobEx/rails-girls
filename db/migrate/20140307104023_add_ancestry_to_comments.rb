class AddAncestryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ancestry, :string
  end
  def self.up
  	add_index :comments, :ancestry
  end

  def self.down
  	remove_index :comments, :ancestry
  end
end
