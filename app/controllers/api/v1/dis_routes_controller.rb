module Api
  module V1
class DisRoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /routes
  # GET /routes.json
  def index
  # @cd = DisRoute.all
    c = DisRoute.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
     respond_with DisRoute.find(params[:id])
  end

  # GET /routes/new
  def new
    @route = DisRoute.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = DisRoute.new(route_params)


      if @route.save
        flash[:notice] = "Task was successfully created."
         respond_with(@route)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = DisRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:name, :abbrev, :adverb, :status_id)
    end
end
 end
 end
