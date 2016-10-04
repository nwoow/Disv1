class DisDatasourcesController < ApplicationController
  before_action :set_dis_datasource, only: [:show, :edit, :update, :destroy]

  # GET /dis_datasources
  # GET /dis_datasources.json
  def index
    respond_to do |format|
       format.html
       format.json { render json:DisDatasourceDatatable.new(view_context) }
     end
  end

  # GET /dis_datasources/1
  # GET /dis_datasources/1.json
  def show
  end

  # GET /dis_datasources/new
  def new
    @dis_datasource = DisDatasource.new
  end

  # GET /dis_datasources/1/edit
  def edit
  end

  # POST /dis_datasources
  # POST /dis_datasources.json
  def create
    @dis_datasource = DisDatasource.new(dis_datasource_params)

    respond_to do |format|
      if @dis_datasource.save
        format.html { redirect_to @dis_datasource, notice: 'Dis datasource was successfully created.' }
        format.json { render :show, status: :created, location: @dis_datasource }
      else
        format.html { render :new }
        format.json { render json: @dis_datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_datasources/1
  # PATCH/PUT /dis_datasources/1.json
  def update
    respond_to do |format|
      if @dis_datasource.update(dis_datasource_params)
        format.html { redirect_to @dis_datasource, notice: 'Dis datasource was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_datasource }
      else
        format.html { render :edit }
        format.json { render json: @dis_datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_datasources/1
  # DELETE /dis_datasources/1.json
  def destroy
    @dis_datasource.destroy
    respond_to do |format|
      format.html { redirect_to dis_datasources_url, notice: 'Dis datasource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_datasource
      @dis_datasource = DisDatasource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_datasource_params
      params.require(:dis_datasource).permit(:name)
    end
end
