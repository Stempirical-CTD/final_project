json.array!(@materials) do |material|
  json.extract! material, :id, :experiment_id, :piece
  json.url material_url(material, format: :json)
end
