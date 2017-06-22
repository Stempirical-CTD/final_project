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

  def create
    @experiment = Experiment.new
    @experiment.user_id = current_user.id
    @concept = Concept.new(concept_params)
    @concept.experiment_id = @experiment.id
    respond_to do |format|
      if @concept.save
        format.html do
          redirect_to @concept, notice: 'Concept was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @concept.update(concepet_params)
        format.html do
          redirect_to @concept, notice: 'Concept was successfully updated.'
        end
      else
        format.html { render :edit }
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
