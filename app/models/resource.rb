class Resource < ActiveRecord::Base
 mount_uploader :image, ImageUploader
 has_one :event_type
 default_scope -> { order('created_at DESC') }
 validates :title, presence: true
 acts_as_taggable
 acts_as_taggable_on :tag_list
end
