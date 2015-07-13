class ExperimentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show, :vote, :mess_ratings, :complete_time_rating]
  before_action :set_experiment, only: [:show, :edit, :update, :destroy, :vote]

  # GET /experiments
  # GET /experiments.json
  def index
    # @experiments = Experiment.all
    if params[:query]
      @experiments = Experiment.text_search(params[:query])
      if @experiments.length == 0
        flash.now[:notice] = "No items found"
        
      end
    else
      @experiments = Experiment.by_votes
    end
    # if params[:query]
    #   @experiments = Experiment.find(:all, :conditions => ['name LIKE ?', "%#{params[:query]}%"])
    #   @concept_choices = Concept.all.map(&:name)
    #   if @experiments.size.zero?
    #     flash[:notice] = "No items found"
    #     @experiments = Experiment.by_votes
    #   end
    # else
    # # @experiments = Experiment.text_search(params[:query])#.page(params[:page]).per_page(3)
    #   @experiments = Experiment.by_votes
    # end
  end

  def ages
    @experiments = Experiment.order(:age)
  end

  def mess_ratings
    # @experiments = Experiment.order_by_mess
    @experiments = Experiment.order_by_mess_complete_time
    # @experiments = Experiment.where(complete_time: 1).order_by_mess
  end

  def complete_time_rating
    # @experiments = Experiment.order(complete_time: :asc, user_id: :asc)
    @experiments = Experiment.time
  end

  # GET /experiments/1
  # GET /experiments/1.json
  def show
    @parents = @experiment.concept_parents
    @children = @experiment.concept_children
  end

  # GET /experiments/new
  def new
    @experiment = Experiment.new
    @experiment.materials.build
    @experiment.instructions.build
    @experiment.concepts.build
  end

  # GET /experiments/1/edit
  def edit
  end

  # POST /experiments
  # POST /experiments.json
  def create
    @experiment = Experiment.new(experiment_params)
    @experiment.user_id = current_user.id
    # params[:concepts].each do |concept_id|
    #   @experiment.concepts_experiment.new(concept_id: concept_id)
    # end
    respond_to do |format|
      if @experiment.save
        params[:concepts].each { |c| @experiment.concepts << Concept.find(c) }
        format.html { redirect_to @experiment, notice: 'Experiment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /experiments/1
  # PATCH/PUT /experiments/1.json
  def update
    respond_to do |format|
      if @experiment.update(experiment_params)
        format.html { redirect_to @experiment, notice: 'Experiment was successfully updated.' }
      else
        format.html { render :edit }
      end
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
          materials_attributes: [:id, :experiment_id, :item],
          instructions_attributes: [:id, :experiment_id, :information, :order_number],
          experiment_votes: [:id, :value, :experiment_id],
          concepts_attributes: [:experiment_id, :name, :description_link, :video_link])
    end
end
