json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :user_id, :comment_id, :is_active
  json.url product_url(product, format: :json)
end
