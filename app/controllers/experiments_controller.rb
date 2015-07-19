class ExperimentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show, :vote, :landing_page, :order_experiments]
  before_action :set_experiment, only: [:show, :edit, :update, :destroy, :vote]

  # GET /experiments
  # GET /experiments.json
  def landing_page
  end

  def index
    if params[:query]
      @experiments = Experiment.text_search(params[:query]).page(params[:action])
      @paginatable_array = Kaminari.paginate_array(@experiments).page(params[:page]).per(6)
      if @experiments.length == 0
        flash.now[:notice] = "No items found"
      end
    else
      @experiments = Experiment.all.by_votes
      @paginatable_array = Kaminari.paginate_array(@experiments).page(params[:page]).per(6)
    end
  end

  def order_experiments
    @experiments = Experiment.text_search(params[:queryValue])
  end

  # GET /experiments/1
  # GET /experiments/1.json
  def show
    @parents = @experiment.concept_parents
    @children = @experiment.concept_children
    @concept = @experiment.find_concept
    @comment = Comment.new
    if Experiment.by_votes[0] != @experiment
      @top_experiment = Experiment.by_votes[0]
    else
      @top_experiment = Experiment.by_votes[1]
    end
  end

  # GET /experiments/new
  def new
    @experiment = Experiment.new
    @experiment.materials.build
    @experiment.instructions.build
  end

  # GET /experiments/1/edit
  def edit
  end

  # POST /experiments
  # POST /experiments.json
  def create
    @experiment = Experiment.new(experiment_params)
    @experiment.user_id = current_user.id
    if params[:concepts].blank?
      flash.now[:notice] = "You must select a Concept for your Experiment."
      render :new
    elsif @experiment.save
      params[:concepts].each { |c| @experiment.concepts << Concept.find(c) }
      redirect_to @experiment, notice: 'Experiment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /experiments/1
  # PATCH/PUT /experiments/1.json
  def update
    if @experiment.update(experiment_params)
      redirect_to @experiment, notice: 'Experiment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /experiments/1
  # DELETE /experiments/1.json
  def destroy
    @experiment.destroy
    respond_to do |format|
      format.html { redirect_to experiments_url, notice: 'Experiment was successfully destroyed.' }
    end
  end

  def vote
    vote = current_user.experiment_votes.new(value: params[:value], experiment_id: params[:id])
    if vote.save
      redirect_to :back, notice: "Thank you for voting."
    else
      redirect_to :back, alert: "Unable to vote, perhaps you already did."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment
      @experiment = Experiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_params
      params.require(:experiment).permit(:user_id, :name, :description, :youtube_link, :complete_time, :uploaded_file, :age,
          materials_attributes: [:id, :experiment_id, :item, :_destroy],
          instructions_attributes: [:id, :experiment_id, :information, :order_number, :_destroy],
          experiment_votes: [:id, :value, :experiment_id],
          concepts_attributes: [:experiment_id, :name, :description_link, :video_link])
    end
end
