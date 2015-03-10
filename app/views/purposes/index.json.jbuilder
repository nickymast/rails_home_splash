json.array!(@purposes) do |purpose|
  json.extract! purpose, :id, :user_id, :goal
  json.url purpose_url(purpose, format: :json)
end
