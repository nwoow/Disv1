module Api
  module V1
class DisDoseformsController < ApplicationController
  before_action :set_doseform, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /doseforms
  # GET /doseforms.json
  def index
  # @cd = DisDoseform.all
    a = DisDoseform.paginate(:page => params[:page], :per_page => 10).order(:id)
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
      # End - Logic to lookup for status inside statuses table
    array << h
    end
    rowcount = a.count
    a = a.as_json
    d = [{"Count" => rowcount}]
    result = {"raw" => a ,"count" => d , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /doseforms/1
  # GET /doseforms/1.json
  def show
     respond_with DisDoseform.find(params[:id])
  end

  # GET /doseforms/new
  def new
    @doseform = DisDoseform.new
  end

  # GET /doseforms/1/edit
  def edit
  end

  # POST /doseforms
  # POST /doseforms.json
  def create
    @doseform = DisDoseform.new(doseform_params)


      if @doseform.save
        flash[:notice] = "Task was successfully created."
         respond_with(@doseform)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /doseforms/1
  # PATCH/PUT /doseforms/1.json
  def update
    respond_to do |format|
      if @doseform.update(doseform_params)
        format.html { redirect_to @doseform, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseform }
      else
        format.html { render :edit }
        format.json { render json: @doseform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseforms/1
  # DELETE /doseforms/1.json
  def destroy
    @doseform.destroy
    respond_to do |format|
      format.html { redirect_to doseforms_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseform
      @doseform = DisDoseform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseform_params
      params.require(:doseform).permit(:name, :abbrev, :status_id)
    end
end
 end
 end
