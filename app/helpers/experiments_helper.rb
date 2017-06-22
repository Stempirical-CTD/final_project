module ExperimentsHelper
  def embed(youtube_url)
    youtube_id = youtube_url.split('=').last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

  def find_unique_experiment(exp_one, exp_two, exp_three)
    Experiment.where.not(name: [exp_one, exp_two, exp_three]).by_votes.first
  end
end
