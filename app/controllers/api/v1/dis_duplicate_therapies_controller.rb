module Api
  module V1
class DisDuplicateTherapiesController < ApplicationController
  before_action :set_duplicate_therapy, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /duplicate_therapys
  # GET /duplicate_therapys.json
  def index
  # @cd = DisDuplicateTherapy.all
    a = DisDuplicateTherapy.paginate(:page => params[:page], :per_page => 10).order(:id)
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

  # GET /duplicate_therapys/1
  # GET /duplicate_therapys/1.json
  def show
     respond_with DisDuplicateTherapy.find(params[:id])
  end

  # GET /duplicate_therapys/new
  def new
    @duplicate_therapy = DisDuplicateTherapy.new
  end

  # GET /duplicate_therapys/1/edit
  def edit
  end

  # POST /duplicate_therapys
  # POST /duplicate_therapys.json
  def create
    @duplicate_therapy = DisDuplicateTherapy.new(duplicate_therapy_params)


      if @duplicate_therapy.save
        flash[:notice] = "Task was successfully created."
         respond_with(@duplicate_therapy)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /duplicate_therapys/1
  # PATCH/PUT /duplicate_therapys/1.json
  def update
    respond_to do |format|
      if @duplicate_therapy.update(duplicate_therapy_params)
        format.html { redirect_to @duplicate_therapy, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @duplicate_therapy }
      else
        format.html { render :edit }
        format.json { render json: @duplicate_therapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duplicate_therapys/1
  # DELETE /duplicate_therapys/1.json
  def destroy
    @duplicate_therapy.destroy
    respond_to do |format|
      format.html { redirect_to duplicate_therapys_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duplicate_therapy
      @duplicate_therapy = DisDuplicateTherapy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duplicate_therapy_params
      params.require(:duplicate_therapy).permit(:generic_id1, :generic_id2, :status_id, :datasource_id)
    end
end
 end
 end
