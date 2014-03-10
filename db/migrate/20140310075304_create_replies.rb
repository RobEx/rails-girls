class CreateReplies < ActiveRecord::Migration

  def down
    create_table :replies do |t|
      t.text :description
      t.integer :comment_id

      t.timestamps
    end
  end
end
