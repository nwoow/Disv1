module Api
  module V1
class DisGenericMonographsController < ApplicationController
  before_action :set_generic_monograph, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_monographs
  # GET /generic_monographs.json
  def index
  # @cd = DisGenericMonograph.all
    c = DisGenericMonograph.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_monographs/1
  # GET /generic_monographs/1.json
  def show
     respond_with DisGenericMonograph.find(params[:id])
  end

  # GET /generic_monographs/new
  def new
    @generic_monograph = DisGenericMonograph.new
  end

  # GET /generic_monographs/1/edit
  def edit
  end

  # POST /generic_monographs
  # POST /generic_monographs.json
  def create
    @generic_monograph = DisGenericMonograph.new(generic_monograph_params)


      if @generic_monograph.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_monograph)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_monographs/1
  # PATCH/PUT /generic_monographs/1.json
  def update
    respond_to do |format|
      if @generic_monograph.update(generic_monograph_params)
        format.html { redirect_to @generic_monograph, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_monograph }
      else
        format.html { render :edit }
        format.json { render json: @generic_monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_monographs/1
  # DELETE /generic_monographs/1.json
  def destroy
    @generic_monograph.destroy
    respond_to do |format|
      format.html { redirect_to generic_monographs_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_monograph
      @generic_monograph = DisGenericMonograph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_monograph_params
      params.require(:generic_monograph).permit(:generic_id, :dose, :contraindication, :precaution, :adverse_effect, :storage, :datasource_id, :status_id)
    end
end
 end
 end
