json.array!(@showpieces) do |showpiece|
  json.extract! showpiece, :id, :name, :creation_century, :description, :insurance, :height, :width, :length, :temperature_control, :wet_control, :people_protection, :collection_id_id
  json.url showpiece_url(showpiece, format: :json)
end
