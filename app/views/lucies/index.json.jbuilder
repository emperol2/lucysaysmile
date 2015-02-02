json.array!(@lucies) do |lucy|
  json.extract! lucy, :id, :title
  json.url lucy_url(lucy, format: :json)
end
