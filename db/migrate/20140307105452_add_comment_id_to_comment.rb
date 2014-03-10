class AddCommentIdToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :comment_id, :integer
  	remove_column :comments, :ancestry
  end
end
