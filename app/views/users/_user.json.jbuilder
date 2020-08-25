json.extract! user, :id, :nome, :email, :idade, :created_at, :updated_at
json.url user_url(user, format: :json)
