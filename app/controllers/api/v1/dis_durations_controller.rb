module Api
  module V1
class DisDurationsController < ApplicationController
  before_action :set_duration, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /durations
  # GET /durations.json
  def index
  # @cd = DisDuration.all
    a = DisDuration.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["description"] = m.description
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

  # GET /durations/1
  # GET /durations/1.json
  def show
     respond_with DisDuration.find(params[:id])
  end

  # GET /durations/new
  def new
    @duration = DisDuration.new
  end

  # GET /durations/1/edit
  def edit
  end

  # POST /durations
  # POST /durations.json
  def create
    @duration = DisDuration.new(duration_params)


      if @duration.save
        flash[:notice] = "Task was successfully created."
         respond_with(@duration)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /durations/1
  # PATCH/PUT /durations/1.json
  def update
    respond_to do |format|
      if @duration.update(duration_params)
        format.html { redirect_to @duration, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @duration }
      else
        format.html { render :edit }
        format.json { render json: @duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /durations/1
  # DELETE /durations/1.json
  def destroy
    @duration.destroy
    respond_to do |format|
      format.html { redirect_to durations_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duration
      @duration = DisDuration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duration_params
      params.require(:duration).permit(:description, :status_id)
    end
end
 end
 end
