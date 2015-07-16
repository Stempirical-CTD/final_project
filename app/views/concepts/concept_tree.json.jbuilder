json.array!(@concepts) do |concept|
  json.(concept, :name)
  json.array(concept.experiments) do |experiment|
    json.(experiment, :name)
  end
end
