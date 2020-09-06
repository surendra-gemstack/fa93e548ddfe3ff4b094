json.extract! user, :id, :followed_by, :created_at, :updated_at
json.url user_url(user, format: :json)
