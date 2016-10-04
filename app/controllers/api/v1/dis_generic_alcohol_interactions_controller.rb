module Api
  module V1
class DisGenericAlcoholInteractionsController < ApplicationController
  before_action :set_generic_alcohol_interaction, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_alcohol_interactions
  # GET /generic_alcohol_interactions.json
  def index
  # @cd = DisGenericAlcoholInteraction.all
    c = DisGenericAlcoholInteraction.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_alcohol_interactions/1
  # GET /generic_alcohol_interactions/1.json
  def show
     respond_with DisGenericAlcoholInteraction.find(params[:id])
  end

  # GET /generic_alcohol_interactions/new
  def new
    @generic_alcohol_interaction = DisGenericAlcoholInteraction.new
  end

  # GET /generic_alcohol_interactions/1/edit
  def edit
  end

  # POST /generic_alcohol_interactions
  # POST /generic_alcohol_interactions.json
  def create
    @generic_alcohol_interaction = DisGenericAlcoholInteraction.new(generic_alcohol_interaction_params)


      if @generic_alcohol_interaction.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_alcohol_interaction)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_alcohol_interactions/1
  # PATCH/PUT /generic_alcohol_interactions/1.json
  def update
    respond_to do |format|
      if @generic_alcohol_interaction.update(generic_alcohol_interaction_params)
        format.html { redirect_to @generic_alcohol_interaction, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_alcohol_interaction }
      else
        format.html { render :edit }
        format.json { render json: @generic_alcohol_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_alcohol_interactions/1
  # DELETE /generic_alcohol_interactions/1.json
  def destroy
    @generic_alcohol_interaction.destroy
    respond_to do |format|
      format.html { redirect_to generic_alcohol_interactions_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_alcohol_interaction
      @generic_alcohol_interaction = DisGenericAlcoholInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_alcohol_interaction_params
      params.require(:generic_alcohol_interaction).permit(:generic_id, :alcohol_interaction_id, :status_id, :datasource_id)
    end
end
 end
 end
