json.array!(@categories) do |category|
  json.extract! category, :id, :name, :description, :user_id, :comment_id, :is_active
  json.url category_url(category, format: :json)
end
