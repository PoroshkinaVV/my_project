json.array!(@ticketprices) do |ticketprice|
  json.extract! ticketprice, :id, :visitor_type, :price
  json.url ticketprice_url(ticketprice, format: :json)
end
