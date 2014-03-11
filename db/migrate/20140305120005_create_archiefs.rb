class CreateArchiefs < ActiveRecord::Migration
  def change
    create_table :archiefs do |t|

      t.timestamps
    end
    add_attachment :archiefs, :avatar
  end
end
