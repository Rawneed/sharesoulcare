class CreateGroupDetails < ActiveRecord::Migration
  def change
    create_table :group_details do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
