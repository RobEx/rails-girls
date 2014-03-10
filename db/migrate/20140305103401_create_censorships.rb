class CreateCensorships < ActiveRecord::Migration
  def change
    create_table :censorships do |t|
      t.string :censored_word
      t.string :replace_with

      t.timestamps
    end
  end
end
