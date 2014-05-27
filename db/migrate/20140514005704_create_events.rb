class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :image
      t.string :title
      t.string :location
      t.date :date
      t.time :time
      t.string :cost
      t.integer :event_type_id

      t.timestamps
    end
  end
end
