json.array!(@collections) do |collection|
  json.extract! collection, :id, :name, :start_date, :end_date, :description
  json.url collection_url(collection, format: :json)
end
