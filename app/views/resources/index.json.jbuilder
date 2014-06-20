on.array!(@resources) do |resource|
  json.extract! resource, :id, :image, :title, :location, :citystate, :description, :link
  json.url inspiration_url(resource, format: :json)
end
