json.array!(@ticketprice_collections) do |ticketprice_collection|
  json.extract! ticketprice_collection, :id, :ticketprice_id_id, :collection_id_id
  json.url ticketprice_collection_url(ticketprice_collection, format: :json)
end
