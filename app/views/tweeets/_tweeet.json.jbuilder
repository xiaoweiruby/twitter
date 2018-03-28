json.extract! tweeet, :id, :tweeet：text, :created_at, :updated_at
json.url tweeet_url(tweeet, format: :json)
