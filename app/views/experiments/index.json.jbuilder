json.array!(@experiments) do |experiment|
  json.extract!(
    experiment,
    :id,
    :user_id,
    :description,
    :youtube_link,
    :complete_time
  )
  json.url experiment_url(experiment, format: :json)
end
