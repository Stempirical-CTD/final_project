json.array!(@materials) do |material|
  json.extract! material, :id, :experiment_id, :item
  json.url material_url(material, format: :json)
end
