class DisManufacturersController < ApplicationController
  before_action :set_dis_manufacturer, only: [:show, :edit, :update, :destroy]

  # GET /dis_manufacturers
  # GET /dis_manufacturers.json
  def index
    @dis_manufacturers = DisManufacturer.all
  end

  # GET /dis_manufacturers/1
  # GET /dis_manufacturers/1.json
  def show
  end

  # GET /dis_manufacturers/new
  def new
    @dis_manufacturer = DisManufacturer.new
  end

  # GET /dis_manufacturers/1/edit
  def edit
  end

  # POST /dis_manufacturers
  # POST /dis_manufacturers.json
  def create
    @dis_manufacturer = DisManufacturer.new(dis_manufacturer_params)

    respond_to do |format|
      if @dis_manufacturer.save
        format.html { redirect_to @dis_manufacturer, notice: 'Dis manufacturer was successfully created.' }
        format.json { render :show, status: :created, location: @dis_manufacturer }
      else
        format.html { render :new }
        format.json { render json: @dis_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_manufacturers/1
  # PATCH/PUT /dis_manufacturers/1.json
  def update
    respond_to do |format|
      if @dis_manufacturer.update(dis_manufacturer_params)
        format.html { redirect_to @dis_manufacturer, notice: 'Dis manufacturer was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_manufacturer }
      else
        format.html { render :edit }
        format.json { render json: @dis_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_manufacturers/1
  # DELETE /dis_manufacturers/1.json
  def destroy
    @dis_manufacturer.destroy
    respond_to do |format|
      format.html { redirect_to dis_manufacturers_url, notice: 'Dis manufacturer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_manufacturer
      @dis_manufacturer = DisManufacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_manufacturer_params
      params.require(:dis_manufacturer).permit(:name, :address1, :address2, :city, :state_id, :pin, :phone, :fax, :email, :website, :mobilephoe, :abbrev, :phone2, :release_status_id, :status_id)
    end
end
