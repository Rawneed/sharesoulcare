class Event < ActiveRecord::Base
 mount_uploader :image, ImageUploader
 default_scope -> { order('created_at DESC') }
 acts_as_taggable
 acts_as_taggable_on :tag_list

 def feed
  Event.where("event_type_id = ?", event_type_id)
 end
end
