json.array!(@events) do |event|
  json.extract! event, :id, :image, :title, :location, :date, :time, :cost, :event_type_id
  json.url event_url(event, format: :json)
end
