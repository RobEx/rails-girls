class AddUserToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :idea_id, :integer
  end
end
