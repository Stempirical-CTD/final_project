class ConceptsController < ApplicationController
  before_action :set_concept, only: %i[show edit update destroy]

  def index
    @concepts = Concept.all
  end

  def show; end

  def concept_tree
    @concepts = Concept.all
  end

  def new
    @concept = Concept.new
  end

  def edit; end

  # rubocop:disable Metrics/MethodLength
  def create
    @experiment = Experiment.new(user_id: current_user.id)
    @concept = Concept.new(concept_params.merge(experiment_id: @experiment.id))

    respond_to do |format|
      format.html do
        if @concept.save
          redirect_to @concept, notice: 'Concept was successfully created.'
        else
          render :new
        end
      end
    end
  end
  # rubocop:enable Metrics/MethodLength

  def update
    respond_to do |format|
      format.html do
        if @concept.update(concepet_params)
          redirect_to @concept, notice: 'Concept was successfully updated.'
        else
          render :edit
        end
      end
    end
  end

  def destroy
    @concept.destroy
    respond_to do |format|
      format.html do
        redirect_to concepts_url, notice: 'Concept was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_concept
    @concept = Concept.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def concept_params
    params.require(:concept).permit(
      :experiment_id,
      :name,
      :description_link,
      :video_link
    )
  end
end
