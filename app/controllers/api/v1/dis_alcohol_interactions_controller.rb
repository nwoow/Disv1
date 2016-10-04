module Api
  module V1
class DisAlcoholInteractionsController < ApplicationController
  before_action :set_dis_alcohol_interaction, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_alcohol_interactions
  # GET /dis_alcohol_interactions.json
  def index
  # @cd = DisAlcoholInteraction.all
    a = DisAlcoholInteraction.paginate(:page => params[:page], :per_page => 3).order(:id)
      @m = array = []
      a.each do |m|
      # user = User.where(id: m.user_two).last
      h = {}
      h["id"] = m.id
      h["name"] = m.name
      h["description"] = m.description
      h["datasource_id"] = m.datasource_id

        # Start - Logic to lookup for data source name
        if m.datasource_id
        @DisDatasource = DisDatasource.where(id:m.datasource_id).last
        # Above m.status_id has value 1 and @DisStatus is an object
        h["datasource_name"] = @DisDatasource.name
        else
        h["datasource_name"] ="No Data"
        end
        # End - Logic to lookup for data source name
      array << h
      end
    rowcount = a.count
    a = a.as_json
    rows = [{"rows" => rowcount}]
    result = {"raw" => a ,"count" => rows , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /dis_alcohol_interactions/1
  # GET /dis_alcohol_interactions/1.json
  def show
     respond_with DisAlcoholInteraction.find(params[:id])
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


      if @dis_alcohol_interaction.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_alcohol_interaction)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_alcohol_interactions/1
  # PATCH/PUT /dis_alcohol_interactions/1.json
  def update
    respond_to do |format|
      if @dis_alcohol_interaction.update(dis_alcohol_interaction_params)
        format.html { redirect_to @dis_alcohol_interaction, notice: 'Combination dose was successfully updated.' }
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
      format.html { redirect_to dis_alcohol_interactions_url, notice: 'Combination dose was successfully destroyed.' }
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
 end
 end
