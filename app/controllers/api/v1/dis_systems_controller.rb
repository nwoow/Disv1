module Api
  module V1
class DisSystemsController < ApplicationController
  before_action :set_system, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /systems
  # GET /systems.json
  def index
  # @cd = DisSystem.all
    c = DisSystem.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /systems/1
  # GET /systems/1.json
  def show
     respond_with DisSystem.find(params[:id])
  end

  # GET /systems/new
  def new
    @system = DisSystem.new
  end

  # GET /systems/1/edit
  def edit
  end

  # POST /systems
  # POST /systems.json
  def create
    @system = DisSystem.new(system_params)


      if @system.save
        flash[:notice] = "Task was successfully created."
         respond_with(@system)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /systems/1
  # PATCH/PUT /systems/1.json
  def update
    respond_to do |format|
      if @system.update(system_params)
        format.html { redirect_to @system, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @system }
      else
        format.html { render :edit }
        format.json { render json: @system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /systems/1
  # DELETE /systems/1.json
  def destroy
    @system.destroy
    respond_to do |format|
      format.html { redirect_to systems_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system
      @system = DisSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_params
      params.require(:system).permit(:name, :status_id)
    end
end
 end
 end
