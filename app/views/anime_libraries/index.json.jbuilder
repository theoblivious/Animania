json.array!(@anime_libraries) do |anime_library|
  json.extract! anime_library, :id, :user_id, :anime_id
  json.url anime_library_url(anime_library, format: :json)
end
