module Api
  module V1
class DisBrandnamesController < ApplicationController
  before_action :set_brandname, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /brandnames
  # GET /brandnames.json
  def index
  # @cd = DisBrandname.all
    a = DisBrandname.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["name"] = m.name
    h["release_status_id"] = m.release_status_id
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

  # GET /brandnames/1
  # GET /brandnames/1.json
  def show
     respond_with DisBrandname.find(params[:id])
  end

  # GET /brandnames/new
  def new
    @brandname = DisBrandname.new
  end

  # GET /brandnames/1/edit
  def edit
  end

  # POST /brandnames
  # POST /brandnames.json
  def create
    @brandname = DisBrandname.new(brandname_params)


      if @brandname.save
        flash[:notice] = "Task was successfully created."
         respond_with(@brandname)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /brandnames/1
  # PATCH/PUT /brandnames/1.json
  def update
    respond_to do |format|
      if @brandname.update(brandname_params)
        format.html { redirect_to @brandname, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @brandname }
      else
        format.html { render :edit }
        format.json { render json: @brandname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brandnames/1
  # DELETE /brandnames/1.json
  def destroy
    @brandname.destroy
    respond_to do |format|
      format.html { redirect_to brandnames_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brandname
      @brandname = DisBrandname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brandname_params
      params.require(:brandname).permit(:name, :release_status_id, :status_id)
    end
end
 end
 end
