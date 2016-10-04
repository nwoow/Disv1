class DisRoutesController < ApplicationController
  before_action :set_dis_route, only: [:show, :edit, :update, :destroy]

  # GET /dis_routes
  # GET /dis_routes.json
  def index
    @dis_routes = DisRoute.all
  end

  # GET /dis_routes/1
  # GET /dis_routes/1.json
  def show
  end

  # GET /dis_routes/new
  def new
    @dis_route = DisRoute.new
  end

  # GET /dis_routes/1/edit
  def edit
  end

  # POST /dis_routes
  # POST /dis_routes.json
  def create
    @dis_route = DisRoute.new(dis_route_params)

    respond_to do |format|
      if @dis_route.save
        format.html { redirect_to @dis_route, notice: 'Dis route was successfully created.' }
        format.json { render :show, status: :created, location: @dis_route }
      else
        format.html { render :new }
        format.json { render json: @dis_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_routes/1
  # PATCH/PUT /dis_routes/1.json
  def update
    respond_to do |format|
      if @dis_route.update(dis_route_params)
        format.html { redirect_to @dis_route, notice: 'Dis route was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_route }
      else
        format.html { render :edit }
        format.json { render json: @dis_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_routes/1
  # DELETE /dis_routes/1.json
  def destroy
    @dis_route.destroy
    respond_to do |format|
      format.html { redirect_to dis_routes_url, notice: 'Dis route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_route
      @dis_route = DisRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_route_params
      params.require(:dis_route).permit(:name, :abbrev, :adverb, :status_id)
    end
end
