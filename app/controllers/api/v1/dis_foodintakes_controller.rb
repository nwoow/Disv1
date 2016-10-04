module Api
  module V1
class DisFoodintakesController < ApplicationController
  before_action :set_foodintake, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /foodintakes
  # GET /foodintakes.json
  def index
  # @cd = DisFoodintake.all
    a = DisFoodintake.paginate(:page => params[:page], :per_page => 10).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["description"] = m.description
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

  # GET /foodintakes/1
  # GET /foodintakes/1.json
  def show
     respond_with DisFoodintake.find(params[:id])
  end

  # GET /foodintakes/new
  def new
    @foodintake = DisFoodintake.new
  end

  # GET /foodintakes/1/edit
  def edit
  end

  # POST /foodintakes
  # POST /foodintakes.json
  def create
    @foodintake = DisFoodintake.new(foodintake_params)


      if @foodintake.save
        flash[:notice] = "Task was successfully created."
         respond_with(@foodintake)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /foodintakes/1
  # PATCH/PUT /foodintakes/1.json
  def update
    respond_to do |format|
      if @foodintake.update(foodintake_params)
        format.html { redirect_to @foodintake, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodintake }
      else
        format.html { render :edit }
        format.json { render json: @foodintake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodintakes/1
  # DELETE /foodintakes/1.json
  def destroy
    @foodintake.destroy
    respond_to do |format|
      format.html { redirect_to foodintakes_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodintake
      @foodintake = DisFoodintake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodintake_params
      params.require(:foodintake).permit(:description, :status_id)
    end
end
 end
 end
