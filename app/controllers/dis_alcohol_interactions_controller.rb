class DisAlcoholInteractionsController < ApplicationController
  before_action :set_dis_alcohol_interaction, only: [:show, :edit, :update, :destroy]

  # GET /dis_alcohol_interactions
  # GET /dis_alcohol_interactions.json
  def index
    respond_to do |format|
       format.html
       format.json { render json:DisAlcoholInteractionDatatable.new(view_context) }
     end
  end

  # GET /dis_alcohol_interactions/1
  # GET /dis_alcohol_interactions/1.json
  def show
  end

  # GET /dis_alcohol_interactions/new
  def new
    @dis_alcohol_interaction = DisAlcoholInteraction.new
  end

  # GET /dis_alcohol_interactions/1/edit
  def edit
  end

  # POST /dis_alcohol_interactions
  # POST /dis_alcohol_interactions.json
  def create
    @dis_alcohol_interaction = DisAlcoholInteraction.new(dis_alcohol_interaction_params)

    respond_to do |format|
      if @dis_alcohol_interaction.save
        format.html { redirect_to @dis_alcohol_interaction, notice: 'Dis alcohol interaction was successfully created.' }
        format.json { render :show, status: :created, location: @dis_alcohol_interaction }
      else
        format.html { render :new }
        format.json { render json: @dis_alcohol_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_alcohol_interactions/1
  # PATCH/PUT /dis_alcohol_interactions/1.json
  def update
    respond_to do |format|
      if @dis_alcohol_interaction.update(dis_alcohol_interaction_params)
        format.html { redirect_to @dis_alcohol_interaction, notice: 'Dis alcohol interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_alcohol_interaction }
      else
        format.html { render :edit }
        format.json { render json: @dis_alcohol_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_alcohol_interactions/1
  # DELETE /dis_alcohol_interactions/1.json
  def destroy
    @dis_alcohol_interaction.destroy
    respond_to do |format|
      format.html { redirect_to dis_alcohol_interactions_url, notice: 'Dis alcohol interaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_alcohol_interaction
      @dis_alcohol_interaction = DisAlcoholInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_alcohol_interaction_params
      params.require(:dis_alcohol_interaction).permit(:name, :description, :datasource_id)
    end
end
