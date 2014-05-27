json.array!(@inspirations) do |inspiration|
  json.extract! inspiration, :id, :link, :title
  json.url inspiration_url(inspiration, format: :json)
end
