class Inspiration < ActiveRecord::Base
 default_scope -> { order('created_at DESC') }
 validates :link, presence: true
 validates :title, presence: true
 acts_as_taggable
 acts_as_taggable_on :tag_list
end
