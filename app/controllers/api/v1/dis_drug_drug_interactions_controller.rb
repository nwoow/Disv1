module Api
  module V1
class DisDrugDrugInteractionsController < ApplicationController
  before_action :set_dis_drug_drug_interaction, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_drug_drug_interactions
  # GET /dis_drug_drug_interactions.json
  def index
  # @cd = DisDrugDrugInteraction.all
    a = DisDrugDrugInteraction.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["generic_id1"] = m.generic_id1
    # Start - Logic to lookup for first generic
    if m.generic_id1
    @DisGeneric = DisGeneric.where(id:m.generic_id1).last
    h["generic_id1"] = @DisGeneric.name
    else
    h["generic_name1"] ="no desc"
    end
      # End - Logic to lookup for status
    h["generic_name1"] = m.generic_id2
    # Start - Logic to lookup for status
    if m.generic_id2
    @DisGeneric = DisGeneric.where(id:m.generic_id2).last
    h["generic_name2"] = @DisGeneric.name
    else
    h["generic_name2"] ="no desc"
    end
      # End - Logic to lookup for status
    h["description"] = m.description
    h["severity"] = m.severity
    h["datasource_id"] = m.datasource_id
    # Start - Logic to lookup for status
    if m.datasource_id
    @DisDatasource = DisDatasource.where(id:m.datasource_id).last
    h["data_source_name"] = @DisDatasource.name
    else
    h["data_source_name"] ="no desc"
    end
      # End - Logic to lookup for status
    h["status_id"] = m.status_id
    # Start - Logic to lookup for status
    if m.status_id
    @DisStatus = DisStatus.where(id:m.status_id).last
    h["status_name"] = @DisStatus.name
    else
    h["status_name"] ="no desc"
    end
      # End - Logic to lookup for status
    array << h
    end
    rowcount = a.count
    a = a.as_json
    d = [{"Count" => rowcount}]
    result = {"raw" => a ,"count" => d , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /dis_drug_drug_interactions/1
  # GET /dis_drug_drug_interactions/1.json
  def show
     respond_with DisDrugDrugInteraction.find(params[:id])
  end

  # GET /dis_drug_drug_interactions/new
  def new
    @dis_drug_drug_interaction = DisDrugDrugInteraction.new
  end

  # GET /dis_drug_drug_interactions/1/edit
  def edit
  end

  # POST /dis_drug_drug_interactions
  # POST /dis_drug_drug_interactions.json
  def create
    @dis_drug_drug_interaction = DisDrugDrugInteraction.new(dis_drug_drug_interaction_params)


      if @dis_drug_drug_interaction.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_drug_drug_interaction)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_drug_drug_interactions/1
  # PATCH/PUT /dis_drug_drug_interactions/1.json
  def update
    respond_to do |format|
      if @dis_drug_drug_interaction.update(dis_drug_drug_interaction_params)
        format.html { redirect_to @dis_drug_drug_interaction, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_drug_drug_interaction }
      else
        format.html { render :edit }
        format.json { render json: @dis_drug_drug_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_drug_drug_interactions/1
  # DELETE /dis_drug_drug_interactions/1.json
  def destroy
    @dis_drug_drug_interaction.destroy
    respond_to do |format|
      format.html { redirect_to dis_drug_drug_interactions_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_drug_drug_interaction
      @dis_drug_drug_interaction = DisDrugDrugInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_drug_drug_interaction_params
      params.require(:dis_drug_drug_interaction).permit(:generic_id1, :generic_id2, :description, :severity, :status_id, :datasource_id)
    end
end
 end
 end
