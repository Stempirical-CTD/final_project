module ExperimentsHelper

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

  def human_body_experiment(concepts)
    concepts.find_by_name("Human Body").experiments.sample
  end

  def plant_experiment(concepts)
    concepts.find_by_name("Plants").experiments.sample
  end

  def molecular_behavior_experiment(concepts)
    concepts.find_by_name("Molecular Behavior").experiments.sample
  end

end
