module Api
  module V1
class DisManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /manufacturers
  # GET /manufacturers.json
  def index
  # @cd = DisManufacturer.all
    c = DisManufacturer.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /manufacturers/1
  # GET /manufacturers/1.json
  def show
     respond_with DisManufacturer.find(params[:id])
  end

  # GET /manufacturers/new
  def new
    @manufacturer = DisManufacturer.new
  end

  # GET /manufacturers/1/edit
  def edit
  end

  # POST /manufacturers
  # POST /manufacturers.json
  def create
    @manufacturer = DisManufacturer.new(manufacturer_params)


      if @manufacturer.save
        flash[:notice] = "Task was successfully created."
         respond_with(@manufacturer)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /manufacturers/1
  # PATCH/PUT /manufacturers/1.json
  def update
    respond_to do |format|
      if @manufacturer.update(manufacturer_params)
        format.html { redirect_to @manufacturer, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @manufacturer }
      else
        format.html { render :edit }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturers/1
  # DELETE /manufacturers/1.json
  def destroy
    @manufacturer.destroy
    respond_to do |format|
      format.html { redirect_to manufacturers_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturer
      @manufacturer = DisManufacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manufacturer_params
      params.require(:manufacturer).permit(:name, :address1, :address2, :city, :state_id, :pin, :phone, :fax, :email, :website, :mobilephoe, :abbrev, :phone2, :release_status_id, :status_id)
    end
end
 end
 end
