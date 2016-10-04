module Api
  module V1
class DisStatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /statuss
  # GET /statuss.json
  def index
  # @cd = DisStatus.all
    c = DisStatus.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m

    respond_with m
  end

  # GET /statuss/1
  # GET /statuss/1.json
  def show
     respond_with DisStatus.find(params[:id])
  end

  # GET /statuss/new
  def new
    @status = DisStatus.new
  end

  # GET /statuss/1/edit
  def edit
  end

  # POST /statuss
  # POST /statuss.json
  def create
    @status = DisStatus.new(status_params)


      if @status.save
        flash[:notice] = "Task was successfully created."
         respond_with(@status)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /statuss/1
  # PATCH/PUT /statuss/1.json
  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuss/1
  # DELETE /statuss/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to statuss_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = DisStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:name)
    end
end
 end
 end
