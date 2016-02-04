json.array!(@users) do |user|
  json.extract! user, :id, :role_id
  json.url user_url(user, format: :json)
end
