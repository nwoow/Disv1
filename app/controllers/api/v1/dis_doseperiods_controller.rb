module Api
  module V1
class DisDoseperiodsController < ApplicationController
  before_action :set_doseperiod, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /doseperiods
  # GET /doseperiods.json
  def index
  # @cd = DisDoseperiod.all
    a = DisDoseperiod.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["name"] = m.name
    h["abbrev"] = m.abbrev
    h["status_id"] = m.status_id

    if m.status_id
    @DisStatus = DisStatus.where(id:m.status_id).last
    h["status_name"] = @DisStatus.name
    else
    h["status_name"] ="no desc"
    end
      # End - Logic to lookup for datasource
    h["datasource_id"] = m.datasource_id

    if m.datasource_id
    @DisDatasource = DisDatasource.where(id:m.datasource_id).last
    h["datasource_name"] = @DisDatasource.name
    else
    h["datasource_name"] ="no desc"
    end
      # End - Logic to lookup for datasource
    array << h
    end
    rowcount = a.count
    a = a.as_json
    d = [{"Count" => rowcount}]
    result = {"raw" => a ,"count" => d , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /doseperiods/1
  # GET /doseperiods/1.json
  def show
     respond_with DisDoseperiod.find(params[:id])
  end

  # GET /doseperiods/new
  def new
    @doseperiod = DisDoseperiod.new
  end

  # GET /doseperiods/1/edit
  def edit
  end

  # POST /doseperiods
  # POST /doseperiods.json
  def create
    @doseperiod = DisDoseperiod.new(doseperiod_params)


      if @doseperiod.save
        flash[:notice] = "Task was successfully created."
         respond_with(@doseperiod)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /doseperiods/1
  # PATCH/PUT /doseperiods/1.json
  def update
    respond_to do |format|
      if @doseperiod.update(doseperiod_params)
        format.html { redirect_to @doseperiod, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseperiod }
      else
        format.html { render :edit }
        format.json { render json: @doseperiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseperiods/1
  # DELETE /doseperiods/1.json
  def destroy
    @doseperiod.destroy
    respond_to do |format|
      format.html { redirect_to doseperiods_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseperiod
      @doseperiod = DisDoseperiod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseperiod_params
      params.require(:doseperiod).permit(:name, :is_common, :abbrev, :status_id, :datasource_id)
    end
end
 end
 end
