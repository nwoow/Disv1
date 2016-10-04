module Api
  module V1
class DisGenericLactationsController < ApplicationController
  before_action :set_generic_lactation, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_lactations
  # GET /generic_lactations.json
  def index
  # @cd = DisGenericLactation.all
    c = DisGenericLactation.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_lactations/1
  # GET /generic_lactations/1.json
  def show
     respond_with DisGenericLactation.find(params[:id])
  end

  # GET /generic_lactations/new
  def new
    @generic_lactation = DisGenericLactation.new
  end

  # GET /generic_lactations/1/edit
  def edit
  end

  # POST /generic_lactations
  # POST /generic_lactations.json
  def create
    @generic_lactation = DisGenericLactation.new(generic_lactation_params)


      if @generic_lactation.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_lactation)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_lactations/1
  # PATCH/PUT /generic_lactations/1.json
  def update
    respond_to do |format|
      if @generic_lactation.update(generic_lactation_params)
        format.html { redirect_to @generic_lactation, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_lactation }
      else
        format.html { render :edit }
        format.json { render json: @generic_lactation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_lactations/1
  # DELETE /generic_lactations/1.json
  def destroy
    @generic_lactation.destroy
    respond_to do |format|
      format.html { redirect_to generic_lactations_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_lactation
      @generic_lactation = DisGenericLactation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_lactation_params
      params.require(:generic_lactation).permit(:generic_id, :description, :datasource_id, :status_id)
    end
end
 end
 end
