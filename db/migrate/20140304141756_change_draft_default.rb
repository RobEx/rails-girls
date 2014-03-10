class ChangeDraftDefault < ActiveRecord::Migration
  def change
  	change_column :ideas, :draft, :boolean, :default => false
  end
end
