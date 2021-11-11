json.extract! controller, :id, :posts, :created_at, :updated_at
json.url controller_url(controller, format: :json)
