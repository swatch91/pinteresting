class AddUserToArchive < ActiveRecord::Migration
  def change
    add_column :archiefs, :user_id, :integer
    add_index :archiefs, :user_id
  end
end
