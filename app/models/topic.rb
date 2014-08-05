class Topic < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_taggable
  acts_as_taggable_on :tag_list
end
