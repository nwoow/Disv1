module Api
  module V1
class DisAdditiveFrequenciesController < ApplicationController
  before_action :set_dis_additive_frequency, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_additive_frequencys
  # GET /dis_additive_frequencys.json
  def index
 c = DisAdditiveFrequency.paginate(:page => params[:page], :per_page => 20)
      v =  DisAdditiveFrequency.query(c)
      respond_with v
  end

  # GET /dis_additive_frequencys/1
  # GET /dis_additive_frequencys/1.json
  def show
     respond_with DisAdditiveFrequency.find(params[:id])
  end

  # GET /dis_additive_frequencys/new
  def new
    @dis_additive_frequency = DisAdditiveFrequency.new
  end

  # GET /dis_additive_frequencys/1/edit
  def edit
  end

  # POST /dis_additive_frequencys
  # POST /dis_additive_frequencys.json
  def create
    @dis_additive_frequency = DisAdditiveFrequency.new(dis_additive_frequency_params)


      if @dis_additive_frequency.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_additive_frequency)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_additive_frequencys/1
  # PATCH/PUT /dis_additive_frequencys/1.json
  def update
    respond_to do |format|
      if @dis_additive_frequency.update(dis_additive_frequency_params)
        format.html { redirect_to @dis_additive_frequency, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_additive_frequency }
      else
        format.html { render :edit }
        format.json { render json: @dis_additive_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_additive_frequencys/1
  # DELETE /dis_additive_frequencys/1.json
  def destroy
    @dis_additive_frequency.destroy
    respond_to do |format|
      format.html { redirect_to dis_additive_frequencys_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_additive_frequency
      @dis_additive_frequency = DisAdditiveFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_additive_frequency_params
      params.require(:dis_additive_frequency).permit(:name, :frequency_value, :status_id)
    end
end
 end
 end
