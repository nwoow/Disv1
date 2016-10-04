module Api
  module V1
class DisDoseformRouteMapsController < ApplicationController
  before_action :set_dis_doseform_route_map, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_doseform_route_maps
  # GET /dis_doseform_route_maps.json
  def index
  # @cd = DisDoseformRouteMap.all
    a = DisDoseformRouteMap.paginate(:page => params[:page], :per_page => 5).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["doseform_id"] = m.doseform_id
    # Start - Logic to lookup for doseform
    if m.doseform_id
    @DisDoseform = DisDoseform.where(id:m.doseform_id).last
    h["doseform_name"] = @DisDoseform.name
    else
    h["doseform_name"] ="no desc"
    end
      # End - Logic to lookup for doseform
    h["route_id"] = m.route_id
    # Start - Logic to lookup for route
    if m.route_id
    @DisRoute = DisRoute.where(id:m.route_id).last
    h["route_name"] = @DisRoute.name
    else
    h["route_name"] ="no desc"
    end
      # End - Logic to lookup for status
    h["status_id"] = m.status_id
    # Start - Logic to lookup for status
    if m.status_id
    @DisStatus = DisStatus.where(id:m.status_id).last
    h["status_name"] = @DisStatus.name
    else
    h["status_name"] ="no desc"
    end
      # End - Logic to lookup for status
    array << h
    end
    rowcount = a.count
    a = a.as_json
    d = [{"Count" => rowcount}]
    result = {"raw" => a ,"count" => d , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /dis_doseform_route_maps/1
  # GET /dis_doseform_route_maps/1.json
  def show
     respond_with DisDoseformRouteMap.find(params[:id])
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


      if @dis_doseform_route_map.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_doseform_route_map)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_doseform_route_maps/1
  # PATCH/PUT /dis_doseform_route_maps/1.json
  def update
    respond_to do |format|
      if @dis_doseform_route_map.update(dis_doseform_route_map_params)
        format.html { redirect_to @dis_doseform_route_map, notice: 'Combination dose was successfully updated.' }
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
      format.html { redirect_to dis_doseform_route_maps_url, notice: 'Combination dose was successfully destroyed.' }
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
 end
 end
