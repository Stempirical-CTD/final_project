class MaterialsController < ApplicationController
  before_action :set_material, only: %i[show edit update destroy]

  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show; end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit; end

  # POST /materials
  # POST /materials.json
  def create
    @experiment = Experiment.new
    @experiment.user_id = current_user.id
    @material = Material.new(material_params)
    @material.experiment_id = @experiment.id
    respond_to do |format|
      if @material.save
        format.html do
          redirect_to @material, notice: 'Material was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html do
          redirect_to @material, notice: 'Material was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = 'Material was successfully destroyed'
        redirect_to materials_url
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_material
    @material = Material.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def material_params
    params.require(:material).permit(:experiment_id, :item)
  end
end
