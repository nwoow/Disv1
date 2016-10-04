module Api
  module V1
class DisGenericIndicationsController < ApplicationController
  before_action :set_generic_indication, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generic_indications
  # GET /generic_indications.json
  def index
  # @cd = DisGenericIndication.all
    c = DisGenericIndication.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /generic_indications/1
  # GET /generic_indications/1.json
  def show
     respond_with DisGenericIndication.find(params[:id])
  end

  # GET /generic_indications/new
  def new
    @generic_indication = DisGenericIndication.new
  end

  # GET /generic_indications/1/edit
  def edit
  end

  # POST /generic_indications
  # POST /generic_indications.json
  def create
    @generic_indication = DisGenericIndication.new(generic_indication_params)


      if @generic_indication.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic_indication)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generic_indications/1
  # PATCH/PUT /generic_indications/1.json
  def update
    respond_to do |format|
      if @generic_indication.update(generic_indication_params)
        format.html { redirect_to @generic_indication, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_indication }
      else
        format.html { render :edit }
        format.json { render json: @generic_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_indications/1
  # DELETE /generic_indications/1.json
  def destroy
    @generic_indication.destroy
    respond_to do |format|
      format.html { redirect_to generic_indications_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_indication
      @generic_indication = DisGenericIndication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_indication_params
      params.require(:generic_indication).permit(:generic_id, :status_id, :indication_id)
    end
end
 end
 end
