class InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :edit, :update, :destroy]

  # GET /instructions
  # GET /instructions.json
  def index
    @instructions = Instruction.all
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
  end

  # GET /instructions/new
  def new
    @instruction = Instruction.new
  end

  # GET /instructions/1/edit
  def edit
  end

  # POST /instructions
  # POST /instructions.json
  def create
    @experiment = Experiment.new
    @experiment.user_id = current_user.id
    @instruction = Instruction.new(instruction_params)
    @instruction.experiment_id = @experiment.id

    respond_to do |format|
      if @instruction.save
        format.html { redirect_to @instruction, notice: 'Instruction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /instructions/1
  # PATCH/PUT /instructions/1.json
  def update
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to @instruction, notice: 'Instruction was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /instructions/1
  # DELETE /instructions/1.json
  def destroy
    @instruction.destroy
    respond_to do |format|
      format.html { redirect_to instructions_url, notice: 'Instruction was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instruction_params
      params.require(:instruction).permit(:experiment_id, :information, :order)
    end
end
