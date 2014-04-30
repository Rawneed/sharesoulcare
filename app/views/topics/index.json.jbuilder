json.array!(@topics) do |topic|
  json.extract! topic, :id, :image, :title, :date, :bible_passage, :introduction, :highlight, :discussion, :conclusion, :action_steps, :prayer
  json.url topic_url(topic, format: :json)
end
