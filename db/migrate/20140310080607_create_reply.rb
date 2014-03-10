class CreateReply < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :description
      t.integer :comment_id

      t.timestamps
    end
  end
end
