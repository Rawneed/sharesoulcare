class Inspiration < ActiveRecord::Base
 default_scope -> { order('created_at DESC') }
 validates :link, presence: true
 validates :title, presence: true
end
