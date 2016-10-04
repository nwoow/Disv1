class DisDoseformRouteMapsController < ApplicationController
  before_action :set_dis_doseform_route_map, only: [:show, :edit, :update, :destroy]

  # GET /dis_doseform_route_maps
  # GET /dis_doseform_route_maps.json
  def index
    @dis_doseform_route_maps = DisDoseformRouteMap.all
  end

  # GET /dis_doseform_route_maps/1
  # GET /dis_doseform_route_maps/1.json
  def show
  end

  # GET /dis_doseform_route_maps/new
  def new
    @dis_doseform_route_map = DisDoseformRouteMap.new
  end

  # GET /dis_doseform_route_maps/1/edit
  def edit
  end

  # POST /dis_doseform_route_maps
  # POST /dis_doseform_route_maps.json
  def create
    @dis_doseform_route_map = DisDoseformRouteMap.new(dis_doseform_route_map_params)

    respond_to do |format|
      if @dis_doseform_route_map.save
        format.html { redirect_to @dis_doseform_route_map, notice: 'Dis doseform route map was successfully created.' }
        format.json { render :show, status: :created, location: @dis_doseform_route_map }
      else
        format.html { render :new }
        format.json { render json: @dis_doseform_route_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_doseform_route_maps/1
  # PATCH/PUT /dis_doseform_route_maps/1.json
  def update
    respond_to do |format|
      if @dis_doseform_route_map.update(dis_doseform_route_map_params)
        format.html { redirect_to @dis_doseform_route_map, notice: 'Dis doseform route map was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseform_route_map }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseform_route_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseform_route_maps/1
  # DELETE /dis_doseform_route_maps/1.json
  def destroy
    @dis_doseform_route_map.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseform_route_maps_url, notice: 'Dis doseform route map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseform_route_map
      @dis_doseform_route_map = DisDoseformRouteMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseform_route_map_params
      params.require(:dis_doseform_route_map).permit(:doseform_id, :route_id, :status_id)
    end
end
