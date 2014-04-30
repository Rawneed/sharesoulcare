class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :image
      t.string :title
      t.date :date
      t.text :bible_passage
      t.text :introduction
      t.text :highlight
      t.text :discussion
      t.text :conclusion
      t.text :action_steps
      t.text :prayer

      t.timestamps
    end
  end
end
