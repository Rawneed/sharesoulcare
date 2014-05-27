class AddBibleChapterVerseToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :chapter_verse, :string
  end
end
