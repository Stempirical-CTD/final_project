class Experiments::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Experiment.find(params[:experiment_id])
  end
end
