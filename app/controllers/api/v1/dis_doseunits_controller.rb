module Api
  module V1
class DisDoseunitsController < ApplicationController
  before_action :set_doseunit, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /doseunits
  # GET /doseunits.json
  def index
  # @cd = DisDoseunit.all
    a = DisDoseunit.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["name"] = m.name
    h["abbrev"] = m.abbrev
    h["dosetype_id"] = m.dosetype_id
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

  # GET /doseunits/1
  # GET /doseunits/1.json
  def show
     respond_with DisDoseunit.find(params[:id])
  end

  # GET /doseunits/new
  def new
    @doseunit = DisDoseunit.new
  end

  # GET /doseunits/1/edit
  def edit
  end

  # POST /doseunits
  # POST /doseunits.json
  def create
    @doseunit = DisDoseunit.new(doseunit_params)


      if @doseunit.save
        flash[:notice] = "Task was successfully created."
         respond_with(@doseunit)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /doseunits/1
  # PATCH/PUT /doseunits/1.json
  def update
    respond_to do |format|
      if @doseunit.update(doseunit_params)
        format.html { redirect_to @doseunit, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseunit }
      else
        format.html { render :edit }
        format.json { render json: @doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseunits/1
  # DELETE /doseunits/1.json
  def destroy
    @doseunit.destroy
    respond_to do |format|
      format.html { redirect_to doseunits_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseunit
      @doseunit = DisDoseunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseunit_params
      params.require(:doseunit).permit(:name, :abbrev, :is_common, :dosetype_id, :status_id)
    end
end
 end
 end
