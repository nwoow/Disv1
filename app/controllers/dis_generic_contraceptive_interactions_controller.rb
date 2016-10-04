class DisGenericContraceptiveInteractionsController < ApplicationController
  before_action :set_dis_generic_contraceptive_interaction, only: [:show, :edit, :update, :destroy]

  # GET /dis_generic_contraceptive_interactions
  # GET /dis_generic_contraceptive_interactions.json
  def index
    @dis_generic_contraceptive_interactions = DisGenericContraceptiveInteraction.all
  end

  # GET /dis_generic_contraceptive_interactions/1
  # GET /dis_generic_contraceptive_interactions/1.json
  def show
  end

  # GET /dis_generic_contraceptive_interactions/new
  def new
    @dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.new
  end

  # GET /dis_generic_contraceptive_interactions/1/edit
  def edit
  end

  # POST /dis_generic_contraceptive_interactions
  # POST /dis_generic_contraceptive_interactions.json
  def create
    @dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.new(dis_generic_contraceptive_interaction_params)

    respond_to do |format|
      if @dis_generic_contraceptive_interaction.save
        format.html { redirect_to @dis_generic_contraceptive_interaction, notice: 'Dis generic contraceptive interaction was successfully created.' }
        format.json { render :show, status: :created, location: @dis_generic_contraceptive_interaction }
      else
        format.html { render :new }
        format.json { render json: @dis_generic_contraceptive_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_generic_contraceptive_interactions/1
  # PATCH/PUT /dis_generic_contraceptive_interactions/1.json
  def update
    respond_to do |format|
      if @dis_generic_contraceptive_interaction.update(dis_generic_contraceptive_interaction_params)
        format.html { redirect_to @dis_generic_contraceptive_interaction, notice: 'Dis generic contraceptive interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_generic_contraceptive_interaction }
      else
        format.html { render :edit }
        format.json { render json: @dis_generic_contraceptive_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_generic_contraceptive_interactions/1
  # DELETE /dis_generic_contraceptive_interactions/1.json
  def destroy
    @dis_generic_contraceptive_interaction.destroy
    respond_to do |format|
      format.html { redirect_to dis_generic_contraceptive_interactions_url, notice: 'Dis generic contraceptive interaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_generic_contraceptive_interaction
      @dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_generic_contraceptive_interaction_params
      params.require(:dis_generic_contraceptive_interaction).permit(:generic_id, :description, :datasource_id, :statud_id)
    end
end
