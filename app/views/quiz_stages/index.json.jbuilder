json.array!(@quiz_stages) do |quiz_stage|
  json.extract! quiz_stage, :id, :quiz_id, :questions_id
  json.url quiz_stage_url(quiz_stage, format: :json)
end
