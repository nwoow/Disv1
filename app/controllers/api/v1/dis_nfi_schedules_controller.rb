module Api
  module V1
class DisNfiSchedulesController < ApplicationController
  before_action :set_nfi_schedule, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /nfi_schedules
  # GET /nfi_schedules.json
  def index
  # @cd = DisNfiSchedule.all
    c = DisNfiSchedule.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /nfi_schedules/1
  # GET /nfi_schedules/1.json
  def show
     respond_with DisNfiSchedule.find(params[:id])
  end

  # GET /nfi_schedules/new
  def new
    @nfi_schedule = DisNfiSchedule.new
  end

  # GET /nfi_schedules/1/edit
  def edit
  end

  # POST /nfi_schedules
  # POST /nfi_schedules.json
  def create
    @nfi_schedule = DisNfiSchedule.new(nfi_schedule_params)


      if @nfi_schedule.save
        flash[:notice] = "Task was successfully created."
         respond_with(@nfi_schedule)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /nfi_schedules/1
  # PATCH/PUT /nfi_schedules/1.json
  def update
    respond_to do |format|
      if @nfi_schedule.update(nfi_schedule_params)
        format.html { redirect_to @nfi_schedule, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_schedule }
      else
        format.html { render :edit }
        format.json { render json: @nfi_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_schedules/1
  # DELETE /nfi_schedules/1.json
  def destroy
    @nfi_schedule.destroy
    respond_to do |format|
      format.html { redirect_to nfi_schedules_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_schedule
      @nfi_schedule = DisNfiSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_schedule_params
      params.require(:nfi_schedule).permit(:name, :description, :datasource_id, :status_id)
    end
end
 end
 end
