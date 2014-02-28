class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :ideas, :idea_id, :user_id
  end
end
