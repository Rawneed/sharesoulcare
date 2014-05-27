class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
