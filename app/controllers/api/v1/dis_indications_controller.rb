module Api
  module V1
class DisIndicationsController < ApplicationController
  before_action :set_indication, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /indications
  # GET /indications.json
  def index
  # @cd = DisIndication.all
    c = DisIndication.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /indications/1
  # GET /indications/1.json
  def show
     respond_with DisIndication.find(params[:id])
  end

  # GET /indications/new
  def new
    @indication = DisIndication.new
  end

  # GET /indications/1/edit
  def edit
  end

  # POST /indications
  # POST /indications.json
  def create
    @indication = DisIndication.new(indication_params)


      if @indication.save
        flash[:notice] = "Task was successfully created."
         respond_with(@indication)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /indications/1
  # PATCH/PUT /indications/1.json
  def update
    respond_to do |format|
      if @indication.update(indication_params)
        format.html { redirect_to @indication, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @indication }
      else
        format.html { render :edit }
        format.json { render json: @indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indications/1
  # DELETE /indications/1.json
  def destroy
    @indication.destroy
    respond_to do |format|
      format.html { redirect_to indications_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indication
      @indication = DisIndication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indication_params
      params.require(:indication).permit(:description, :status_id)
    end
end
 end
 end
