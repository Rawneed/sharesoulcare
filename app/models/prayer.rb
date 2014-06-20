class Prayer < ActiveRecord::Base
 default_scope -> { order('created_at DESC') } 
# attr_accessible :title, :points, :tag_list
 validates :title, presence: true
 acts_as_taggable
 acts_as_taggable_on :tag_list
end
