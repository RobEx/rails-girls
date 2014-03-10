class AddIdeaToReply < ActiveRecord::Migration
  def change
  	add_column :replies, :idea_id, :integer
  end
end
