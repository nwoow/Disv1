module Api
  module V1
class CombinationDosesController < ApplicationController
  before_action :set_combination_dose, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /combination_doses
  # GET /combination_doses.json
  def index
    c = CombinationDose.paginate(:page => params[:page], :per_page => 3)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /combination_doses/1
  # GET /combination_doses/1.json
  def show
     respond_with CombinationDose.find(params[:id])
  end

  # GET /combination_doses/new
  def new
    @combination_dose = CombinationDose.new
  end

  # GET /combination_doses/1/edit
  def edit
  end

  # POST /combination_doses
  # POST /combination_doses.json
  def create
    @combination_dose = CombinationDose.new(combination_dose_params)


      if @combination_dose.save
        flash[:notice] = "Task was successfully created."
         respond_with(@combination_dose)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /combination_doses/1
  # PATCH/PUT /combination_doses/1.json
  def update
    respond_to do |format|
      if @combination_dose.update(combination_dose_params)
        format.html { redirect_to @combination_dose, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @combination_dose }
      else
        format.html { render :edit }
        format.json { render json: @combination_dose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combination_doses/1
  # DELETE /combination_doses/1.json
  def destroy
    @combination_dose.destroy
    respond_to do |format|
      format.html { redirect_to combination_doses_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination_dose
      @combination_dose = CombinationDose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combination_dose_params
      params.require(:combination_dose).permit(:combination_doses_id, :combination_dose_id, :combination_dose_name, :status)
    end
end
 end
 end
