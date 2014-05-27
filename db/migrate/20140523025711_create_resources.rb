class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :image
      t.string :title
      t.string :location
      t.string :citystate
      t.text :description
      t.string :link
      t.integer :resource_type_id

      t.timestamps
    end
    add_index :resources, [:resource_type_id, :created_at]
  end
end
