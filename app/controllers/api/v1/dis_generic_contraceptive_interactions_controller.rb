module Api
  module V1
class DisGenericContraceptiveInteractionsController < ApplicationController
  before_action :set_generic_contraceptive_interaction, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_contraceptive_interactions
  # GET /generic_contraceptive_interactions.json
  def index
  # @cd = DisGenericContraceptiveInteraction.all
    c = DisGenericContraceptiveInteraction.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_contraceptive_interactions/1
  # GET /generic_contraceptive_interactions/1.json
  def show
     respond_with DisGenericContraceptiveInteraction.find(params[:id])
  end

  # GET /generic_contraceptive_interactions/new
  def new
    @generic_contraceptive_interaction = DisGenericContraceptiveInteraction.new
  end

  # GET /generic_contraceptive_interactions/1/edit
  def edit
  end

  # POST /generic_contraceptive_interactions
  # POST /generic_contraceptive_interactions.json
  def create
    @generic_contraceptive_interaction = DisGenericContraceptiveInteraction.new(generic_contraceptive_interaction_params)


      if @generic_contraceptive_interaction.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_contraceptive_interaction)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_contraceptive_interactions/1
  # PATCH/PUT /generic_contraceptive_interactions/1.json
  def update
    respond_to do |format|
      if @generic_contraceptive_interaction.update(generic_contraceptive_interaction_params)
        format.html { redirect_to @generic_contraceptive_interaction, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_contraceptive_interaction }
      else
        format.html { render :edit }
        format.json { render json: @generic_contraceptive_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_contraceptive_interactions/1
  # DELETE /generic_contraceptive_interactions/1.json
  def destroy
    @generic_contraceptive_interaction.destroy
    respond_to do |format|
      format.html { redirect_to generic_contraceptive_interactions_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_contraceptive_interaction
      @generic_contraceptive_interaction = DisGenericContraceptiveInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_contraceptive_interaction_params
      params.require(:generic_contraceptive_interaction).permit(:generic_id, :description, :datasource_id, :statud_id)
    end
end
 end
 end
