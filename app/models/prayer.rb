class Prayer < ActiveRecord::Base
 # attr_accessible :title, :points, :tag_list
 acts_as_taggable
 acts_as_taggable_on :tag_list

end
