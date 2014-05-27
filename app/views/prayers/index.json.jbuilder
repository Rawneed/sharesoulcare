json.array!(@prayers) do |prayer|
  json.extract! prayer, :id, :title, :points
  json.url prayer_url(prayer, format: :json)
end
