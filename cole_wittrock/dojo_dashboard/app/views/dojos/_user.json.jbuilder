json.extract! user, :id,  :branch, :street, :city, :state, :created_at, :updated_at
json.url user_url(user, format: :json)
