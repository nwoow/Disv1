module Api
  module V1
class DisDatasourcesController < ApplicationController
  before_action :set_datasource, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /datasources
  # GET /datasources.json
  def index
  # @cd = DisDatasource.all
    a = DisDatasource.paginate(:page => params[:page], :per_page => 10).order(:id)
    rowcount = a.count
    a = a.as_json
    rows = [{"rows" => rowcount}]
    result = {"raw" => a ,"count" => rows}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /datasources/1
  # GET /datasources/1.json
  def show
     respond_with DisDatasource.find(params[:id])
  end

  # GET /datasources/new
  def new
    @datasource = DisDatasource.new
  end

  # GET /datasources/1/edit
  def edit
  end

  # POST /datasources
  # POST /datasources.json
  def create
    @datasource = DisDatasource.new(datasource_params)


      if @datasource.save
        flash[:notice] = "Task was successfully created."
         respond_with(@datasource)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /datasources/1
  # PATCH/PUT /datasources/1.json
  def update
    respond_to do |format|
      if @datasource.update(datasource_params)
        format.html { redirect_to @datasource, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @datasource }
      else
        format.html { render :edit }
        format.json { render json: @datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasources/1
  # DELETE /datasources/1.json
  def destroy
    @datasource.destroy
    respond_to do |format|
      format.html { redirect_to datasources_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datasource
      @datasource = DisDatasource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datasource_params
      params.require(:datasource).permit(:name)
    end
end
 end
 end
