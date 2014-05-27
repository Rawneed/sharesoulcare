class Topic < ActiveRecord::Base
  mount_uploader :image, ImageUploader
#  default_scope -> { order('created_at DESC') }
  acts_as_taggable
  acts_as_taggable_on :tag_list
end
