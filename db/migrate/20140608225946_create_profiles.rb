class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first
      t.string :last
      t.date :birthday
      t.string :gender
      t.string :status
      t.string :city
      t.string :state
      t.string :denomination
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
    add_index :profiles, [:user_id, :group_id, :created_at]
  end
end
