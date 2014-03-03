class StatusToAdmin < ActiveRecord::Migration
  def change
  	change_column :users, :status,  :boolean
  	rename_column :users, :status, :is_admin?
  end
end
