class Event < ActiveRecord::Base
 #  validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
 mount_uploader :image, ImageUploader
 default_scope -> { order('created_at DESC') }
 acts_as_taggable
 acts_as_taggable_on :tag_list

 def feed
  Event.where("event_type_id = ?", event_type_id)
 end
end

# WillPaginate.per_page = 10
