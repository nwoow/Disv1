class DisSystemsController < ApplicationController
  before_action :set_dis_system, only: [:show, :edit, :update, :destroy]

  # GET /dis_systems
  # GET /dis_systems.json
  def index
    @dis_systems = DisSystem.all
  end

  # GET /dis_systems/1
  # GET /dis_systems/1.json
  def show
  end

  # GET /dis_systems/new
  def new
    @dis_system = DisSystem.new
  end

  # GET /dis_systems/1/edit
  def edit
  end

  # POST /dis_systems
  # POST /dis_systems.json
  def create
    @dis_system = DisSystem.new(dis_system_params)

    respond_to do |format|
      if @dis_system.save
        format.html { redirect_to @dis_system, notice: 'Dis system was successfully created.' }
        format.json { render :show, status: :created, location: @dis_system }
      else
        format.html { render :new }
        format.json { render json: @dis_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_systems/1
  # PATCH/PUT /dis_systems/1.json
  def update
    respond_to do |format|
      if @dis_system.update(dis_system_params)
        format.html { redirect_to @dis_system, notice: 'Dis system was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_system }
      else
        format.html { render :edit }
        format.json { render json: @dis_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_systems/1
  # DELETE /dis_systems/1.json
  def destroy
    @dis_system.destroy
    respond_to do |format|
      format.html { redirect_to dis_systems_url, notice: 'Dis system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_system
      @dis_system = DisSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_system_params
      params.require(:dis_system).permit(:name, :status_id)
    end
end
