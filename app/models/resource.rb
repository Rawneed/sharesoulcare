class Resource < ActiveRecord::Base
  # validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
 mount_uploader :image, ImageUploader
 has_one :event_type
 default_scope -> { order('created_at DESC') }
 validates :title, presence: true
 acts_as_taggable
 acts_as_taggable_on :tag_list
end
