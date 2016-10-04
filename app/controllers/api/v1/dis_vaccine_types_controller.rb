module Api
  module V1
class DisVaccineTypesController < ApplicationController
  before_action :set_vaccine_type, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /vaccine_types
  # GET /vaccine_types.json
  def index
  # @cd = DisVaccineType.all
    c = DisVaccineType.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /vaccine_types/1
  # GET /vaccine_types/1.json
  def show
     respond_with DisVaccineType.find(params[:id])
  end

  # GET /vaccine_types/new
  def new
    @vaccine_type = DisVaccineType.new
  end

  # GET /vaccine_types/1/edit
  def edit
  end

  # POST /vaccine_types
  # POST /vaccine_types.json
  def create
    @vaccine_type = DisVaccineType.new(vaccine_type_params)


      if @vaccine_type.save
        flash[:notice] = "Task was successfully created."
         respond_with(@vaccine_type)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /vaccine_types/1
  # PATCH/PUT /vaccine_types/1.json
  def update
    respond_to do |format|
      if @vaccine_type.update(vaccine_type_params)
        format.html { redirect_to @vaccine_type, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccine_type }
      else
        format.html { render :edit }
        format.json { render json: @vaccine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccine_types/1
  # DELETE /vaccine_types/1.json
  def destroy
    @vaccine_type.destroy
    respond_to do |format|
      format.html { redirect_to vaccine_types_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine_type
      @vaccine_type = DisVaccineType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaccine_type_params
      params.require(:vaccine_type).permit(:name, :description, :has_packagedrug, :status_id, :datasource_id)
    end
end
 end
 end
