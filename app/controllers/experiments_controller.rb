class ExperimentsController < ApplicationController
  before_filter :authenticate_user!,
                except: %i[index show vote landing_page order_experiments]
  before_action :set_experiment, only: %i[show edit update destroy vote]

  # GET /experiments
  # GET /experiments.json
  def landing_page
    @concepts = Concept.all
  end

  def index
    if params[:query]
      @experiments = Experiment.text_search(params[:query]).all.by_votes
      flash.now[:notice] = 'No items found' if @experiments.empty?
    else
      @experiments = Experiment.all.by_votes
    end
  end

  def order_experiments
    if params[:queryValue] && params[:selectValue] == '1'
      @experiments = sort_experiments(:age)
    elsif params[:queryValue] && params[:selectValue] == '2'
      @experiments = sort_experiments(:complete_time)
    end
  end

  # GET /experiments/1
  # GET /experiments/1.json
  def show
    @parents  = @experiment.concept_parents
    @children = @experiment.concept_children
    @concept  = @experiment.find_concept

    set_concepts_and_experiments

    @comment = Comment.new
    @top_experiment = Experiment.experiment_by_votes(@experiment)
  end

  # GET /experiments/new
  def new
    @experiment = Experiment.new
    @experiment.materials.build
    @experiment.instructions.build
  end

  # GET /experiments/1/edit
  def edit; end

  # POST /experiments
  # POST /experiments.json
  def create
    @experiment = Experiment.new(experiment_params)

    if valid_concepts? && @experiment.save
      @experiment.concepts << Concept.find(params[:concepts])
      flash[:notice] = 'Experiment was successfully created.'
      return redirect_to @experiment
    end

    render :new
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
      format.html do
        flash[:notice] = 'Experiment was successfully destroyed.'
        redirect_to experiments_url
      end
    end
  end

  def vote
    vote = current_user.experiment_votes.new(
      value: params[:value],
      experiment_id: params[:id]
    )
    if vote.save
      redirect_to :back, notice: 'Thank you for voting.'
    else
      redirect_to :back, alert: 'Unable to vote; perhaps you already did.'
    end
  end

  private

  def sort_experiments(attr)
    experiments_from_text_search.sort_by do |e|
      [e.send(attr), -1 * e.experiment_votes.count]
    end
  end

  def experiments_from_text_search
    Experiment.text_search(params[:queryValue]).all
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_experiment
    @experiment = Experiment.find(params[:id])
  end

  def set_concepts_and_experiments
    first_experiment  = Experiment.first_experiment(@concept, @experiment)
    second_experiment = Experiment.second_experiment(@concept)

    @first_concept     = first_experiment[0]
    @first_experiment  = first_experiment[1]
    @second_concept    = second_experiment[0]
    @second_experiment = second_experiment[1]
  end

  def valid_concepts?
    return true if params[:concepts].present?
    flash.now[:notice] = 'You must select a Concept for your Experiment.'
    false
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  # rubocop:disable Metrics/MethodLength
  def experiment_params
    params.require(:experiment).permit(
      :name,
      :description,
      :youtube_link,
      :complete_time,
      :uploaded_file,
      :age,
      materials_attributes: %i[id experiment_id item _destroy],
      instructions_attributes: %i[
        id
        experiment_id
        information
        order_number
        _destroy
      ],
      experiment_votes: %i[id value experiment_id],
      concepts_attributes: %i[experiment_id name description_link video_link]
    ).merge(user_id: current_user.id)
  end
  # rubocop:enable Metrics/MethodLength
end
