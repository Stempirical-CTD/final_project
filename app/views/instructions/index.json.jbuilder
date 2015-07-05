json.array!(@instructions) do |instruction|
  json.extract! instruction, :id, :experiment_id, :information, :order
  json.url instruction_url(instruction, format: :json)
end
