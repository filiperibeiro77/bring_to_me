json.array!(@categories) do |category|
  json.extract! category, :id, :name_category
  json.url category_url(category, format: :json)
end
