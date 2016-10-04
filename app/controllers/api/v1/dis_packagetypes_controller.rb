module Api
  module V1
class DisPackagetypesController < ApplicationController
  before_action :set_packagetype, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /packagetypes
  # GET /packagetypes.json
  def index
  # @cd = DisPackagetype.all
    c = DisPackagetype.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /packagetypes/1
  # GET /packagetypes/1.json
  def show
     respond_with DisPackagetype.find(params[:id])
  end

  # GET /packagetypes/new
  def new
    @packagetype = DisPackagetype.new
  end

  # GET /packagetypes/1/edit
  def edit
  end

  # POST /packagetypes
  # POST /packagetypes.json
  def create
    @packagetype = DisPackagetype.new(packagetype_params)


      if @packagetype.save
        flash[:notice] = "Task was successfully created."
         respond_with(@packagetype)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /packagetypes/1
  # PATCH/PUT /packagetypes/1.json
  def update
    respond_to do |format|
      if @packagetype.update(packagetype_params)
        format.html { redirect_to @packagetype, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @packagetype }
      else
        format.html { render :edit }
        format.json { render json: @packagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packagetypes/1
  # DELETE /packagetypes/1.json
  def destroy
    @packagetype.destroy
    respond_to do |format|
      format.html { redirect_to packagetypes_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packagetype
      @packagetype = DisPackagetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def packagetype_params
      params.require(:packagetype).permit(:name, :status_id)
    end
end
 end
 end
