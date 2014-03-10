class AddDraftToIdeas < ActiveRecord::Migration
  def change
  	add_column :ideas, :draft, :boolean
  end
end
