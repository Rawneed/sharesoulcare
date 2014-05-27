class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :title
      t.text :points

      t.timestamps
    end
  end
end
