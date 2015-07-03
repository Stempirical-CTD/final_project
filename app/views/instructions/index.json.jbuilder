json.array!(@instructions) do |instruction|
  json.extract! instruction, :id, :experiment_id, :step, :order
  json.url instruction_url(instruction, format: :json)
end
