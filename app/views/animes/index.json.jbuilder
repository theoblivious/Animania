json.array!(@animes) do |anime|
  json.extract! anime, :id
  json.url anime_url(anime, format: :json)
end
