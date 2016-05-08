json.array!(@showroom_collections) do |showroom_collection|
  json.extract! showroom_collection, :id, :showroom_id_id, :collection_id_id
  json.url showroom_collection_url(showroom_collection, format: :json)
end
