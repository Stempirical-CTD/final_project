json.array!(@concepts) do |concept|
  json.call(concept, :name)
  json.array(concept.experiments) do |experiment|
    json.call(experiment, :name)
  end
end
