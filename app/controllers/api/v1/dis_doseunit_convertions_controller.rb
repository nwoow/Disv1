module Api
  module V1
class DisDoseunitConvertionsController < ApplicationController
  before_action :set_doseunit_convertion, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /doseunit_convertions
  # GET /doseunit_convertions.json
  def index
  # @cd = DisDoseunitconvertion.all
    a = DisDoseunitConvertion.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["from_doseunit_id"] = m.from_doseunit_id
    # Start - Logic to lookup for from_doseunit
    if m.from_doseunit_id
    @DisDoseunit = DisDoseunit.where(id:m.from_doseunit_id).last
    h["from_doseunit_name"] = @DisDoseunit.name
    else
    h["from_doseunit_name"] ="no desc"
    end
      # End - Logic to lookup for from_doseunit
    h["to_doseunit_id"] = m.to_doseunit_id
    # Start - Logic to lookup for to_doseunit
    if m.to_doseunit_id
    @DisDoseunit = DisDoseunit.where(id:m.to_doseunit_id).last
    h["to_doseunit_name"] = @DisDoseunit.name
    else
    h["to_doseunit_name"] ="no desc"
    end
      # End - Logic to lookup for to_doseunit
    h["conv_factor"] = m.conv_factor
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

  # GET /doseunit_convertions/1
  # GET /doseunit_convertions/1.json
  def show
     respond_with DisDoseunitConvertion.find(params[:id])
  end

  # GET /doseunit_convertions/new
  def new
    @doseunit_convertion = DisDoseunitConvertion.new
  end

  # GET /doseunit_convertions/1/edit
  def edit
  end

  # POST /doseunit_convertions
  # POST /doseunit_convertions.json
  def create
    @doseunit_convertion = DisDoseunitConvertion.new(doseunit_convertion_params)


      if @doseunit_convertion.save
        flash[:notice] = "Task was successfully created."
         respond_with(@doseunit_convertion)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /doseunit_convertions/1
  # PATCH/PUT /doseunit_convertions/1.json
  def update
    respond_to do |format|
      if @doseunit_convertion.update(doseunit_convertion_params)
        format.html { redirect_to @doseunit_convertion, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseunit_convertion }
      else
        format.html { render :edit }
        format.json { render json: @doseunit_convertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseunit_convertions/1
  # DELETE /doseunit_convertions/1.json
  def destroy
    @doseunit_convertion.destroy
    respond_to do |format|
      format.html { redirect_to doseunit_convertions_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseunit_convertion
      @doseunit_convertion = DisDoseunitConversion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseunit_convertion_params
      params.require(:doseunit_convertion).permit(:from_doseunit_id, :to_doseunit_id, :conv_factor, :status_id, :datasource_id)
    end
end
 end
 end
