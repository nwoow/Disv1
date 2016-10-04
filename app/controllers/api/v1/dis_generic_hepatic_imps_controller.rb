module Api
  module V1
class DisGenericHepaticImpsController < ApplicationController
  before_action :set_generic_hepatic_imp, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_hepatic_imps
  # GET /generic_hepatic_imps.json
  def index
  # @cd = DisGenericHepaticImp.all
    c = DisGenericHepaticImp.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_hepatic_imps/1
  # GET /generic_hepatic_imps/1.json
  def show
     respond_with DisGenericHepaticImp.find(params[:id])
  end

  # GET /generic_hepatic_imps/new
  def new
    @generic_hepatic_imp = DisGenericHepaticImp.new
  end

  # GET /generic_hepatic_imps/1/edit
  def edit
  end

  # POST /generic_hepatic_imps
  # POST /generic_hepatic_imps.json
  def create
    @generic_hepatic_imp = DisGenericHepaticImp.new(generic_hepatic_imp_params)


      if @generic_hepatic_imp.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_hepatic_imp)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_hepatic_imps/1
  # PATCH/PUT /generic_hepatic_imps/1.json
  def update
    respond_to do |format|
      if @generic_hepatic_imp.update(generic_hepatic_imp_params)
        format.html { redirect_to @generic_hepatic_imp, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_hepatic_imp }
      else
        format.html { render :edit }
        format.json { render json: @generic_hepatic_imp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_hepatic_imps/1
  # DELETE /generic_hepatic_imps/1.json
  def destroy
    @generic_hepatic_imp.destroy
    respond_to do |format|
      format.html { redirect_to generic_hepatic_imps_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_hepatic_imp
      @generic_hepatic_imp = DisGenericHepaticImp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_hepatic_imp_params
      params.require(:generic_hepatic_imp).permit(:generic_id, :warning, :description, :status_id, :datasource_id)
    end
end
 end
 end
