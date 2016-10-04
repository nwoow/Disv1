class DisNfiSchedulesController < ApplicationController
  before_action :set_dis_nfi_schedule, only: [:show, :edit, :update, :destroy]

  # GET /dis_nfi_schedules
  # GET /dis_nfi_schedules.json
  def index
    @dis_nfi_schedules = DisNfiSchedule.all
  end

  # GET /dis_nfi_schedules/1
  # GET /dis_nfi_schedules/1.json
  def show
  end

  # GET /dis_nfi_schedules/new
  def new
    @dis_nfi_schedule = DisNfiSchedule.new
  end

  # GET /dis_nfi_schedules/1/edit
  def edit
  end

  # POST /dis_nfi_schedules
  # POST /dis_nfi_schedules.json
  def create
    @dis_nfi_schedule = DisNfiSchedule.new(dis_nfi_schedule_params)

    respond_to do |format|
      if @dis_nfi_schedule.save
        format.html { redirect_to @dis_nfi_schedule, notice: 'Dis nfi schedule was successfully created.' }
        format.json { render :show, status: :created, location: @dis_nfi_schedule }
      else
        format.html { render :new }
        format.json { render json: @dis_nfi_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_nfi_schedules/1
  # PATCH/PUT /dis_nfi_schedules/1.json
  def update
    respond_to do |format|
      if @dis_nfi_schedule.update(dis_nfi_schedule_params)
        format.html { redirect_to @dis_nfi_schedule, notice: 'Dis nfi schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_nfi_schedule }
      else
        format.html { render :edit }
        format.json { render json: @dis_nfi_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_nfi_schedules/1
  # DELETE /dis_nfi_schedules/1.json
  def destroy
    @dis_nfi_schedule.destroy
    respond_to do |format|
      format.html { redirect_to dis_nfi_schedules_url, notice: 'Dis nfi schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_nfi_schedule
      @dis_nfi_schedule = DisNfiSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_nfi_schedule_params
      params.require(:dis_nfi_schedule).permit(:name, :description, :datasource_id, :status_id)
    end
end
