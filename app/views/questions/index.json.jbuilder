json.array!(@questions) do |question|
  json.extract! question, :id, :english, :japanese, :anime_id, :integer
  json.url question_url(question, format: :json)
end
