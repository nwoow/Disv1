class DisDurationsController < ApplicationController
  before_action :set_dis_duration, only: [:show, :edit, :update, :destroy]

  # GET /dis_durations
  # GET /dis_durations.json
  def index
    @dis_durations = DisDuration.all
  end

  # GET /dis_durations/1
  # GET /dis_durations/1.json
  def show
  end

  # GET /dis_durations/new
  def new
    @dis_duration = DisDuration.new
  end

  # GET /dis_durations/1/edit
  def edit
  end

  # POST /dis_durations
  # POST /dis_durations.json
  def create
    @dis_duration = DisDuration.new(dis_duration_params)

    respond_to do |format|
      if @dis_duration.save
        format.html { redirect_to @dis_duration, notice: 'Dis duration was successfully created.' }
        format.json { render :show, status: :created, location: @dis_duration }
      else
        format.html { render :new }
        format.json { render json: @dis_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_durations/1
  # PATCH/PUT /dis_durations/1.json
  def update
    respond_to do |format|
      if @dis_duration.update(dis_duration_params)
        format.html { redirect_to @dis_duration, notice: 'Dis duration was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_duration }
      else
        format.html { render :edit }
        format.json { render json: @dis_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_durations/1
  # DELETE /dis_durations/1.json
  def destroy
    @dis_duration.destroy
    respond_to do |format|
      format.html { redirect_to dis_durations_url, notice: 'Dis duration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_duration
      @dis_duration = DisDuration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_duration_params
      params.require(:dis_duration).permit(:description, :status_id)
    end
end
