class DisDoseperiodsController < ApplicationController
  before_action :set_dis_doseperiod, only: [:show, :edit, :update, :destroy]

  # GET /dis_doseperiods
  # GET /dis_doseperiods.json
  def index
    @dis_doseperiods = DisDoseperiod.all
  end

  # GET /dis_doseperiods/1
  # GET /dis_doseperiods/1.json
  def show
  end

  # GET /dis_doseperiods/new
  def new
    @dis_doseperiod = DisDoseperiod.new
  end

  # GET /dis_doseperiods/1/edit
  def edit
  end

  # POST /dis_doseperiods
  # POST /dis_doseperiods.json
  def create
    @dis_doseperiod = DisDoseperiod.new(dis_doseperiod_params)

    respond_to do |format|
      if @dis_doseperiod.save
        format.html { redirect_to @dis_doseperiod, notice: 'Dis doseperiod was successfully created.' }
        format.json { render :show, status: :created, location: @dis_doseperiod }
      else
        format.html { render :new }
        format.json { render json: @dis_doseperiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_doseperiods/1
  # PATCH/PUT /dis_doseperiods/1.json
  def update
    respond_to do |format|
      if @dis_doseperiod.update(dis_doseperiod_params)
        format.html { redirect_to @dis_doseperiod, notice: 'Dis doseperiod was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseperiod }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseperiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseperiods/1
  # DELETE /dis_doseperiods/1.json
  def destroy
    @dis_doseperiod.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseperiods_url, notice: 'Dis doseperiod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseperiod
      @dis_doseperiod = DisDoseperiod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseperiod_params
      params.require(:dis_doseperiod).permit(:name, :is_common, :abbrev, :status_id, :datasource_id)
    end
end
