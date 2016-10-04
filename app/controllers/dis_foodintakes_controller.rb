class DisFoodintakesController < ApplicationController
  before_action :set_dis_foodintake, only: [:show, :edit, :update, :destroy]

  # GET /dis_foodintakes
  # GET /dis_foodintakes.json
  def index
    @dis_foodintakes = DisFoodintake.all
  end

  # GET /dis_foodintakes/1
  # GET /dis_foodintakes/1.json
  def show
  end

  # GET /dis_foodintakes/new
  def new
    @dis_foodintake = DisFoodintake.new
  end

  # GET /dis_foodintakes/1/edit
  def edit
  end

  # POST /dis_foodintakes
  # POST /dis_foodintakes.json
  def create
    @dis_foodintake = DisFoodintake.new(dis_foodintake_params)

    respond_to do |format|
      if @dis_foodintake.save
        format.html { redirect_to @dis_foodintake, notice: 'Dis foodintake was successfully created.' }
        format.json { render :show, status: :created, location: @dis_foodintake }
      else
        format.html { render :new }
        format.json { render json: @dis_foodintake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_foodintakes/1
  # PATCH/PUT /dis_foodintakes/1.json
  def update
    respond_to do |format|
      if @dis_foodintake.update(dis_foodintake_params)
        format.html { redirect_to @dis_foodintake, notice: 'Dis foodintake was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_foodintake }
      else
        format.html { render :edit }
        format.json { render json: @dis_foodintake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_foodintakes/1
  # DELETE /dis_foodintakes/1.json
  def destroy
    @dis_foodintake.destroy
    respond_to do |format|
      format.html { redirect_to dis_foodintakes_url, notice: 'Dis foodintake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_foodintake
      @dis_foodintake = DisFoodintake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_foodintake_params
      params.require(:dis_foodintake).permit(:description, :status_id)
    end
end
