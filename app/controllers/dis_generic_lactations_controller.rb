class DisGenericLactationsController < ApplicationController
  before_action :set_dis_generic_lactation, only: [:show, :edit, :update, :destroy]

  # GET /dis_generic_lactations
  # GET /dis_generic_lactations.json
  def index
    @dis_generic_lactations = DisGenericLactation.all
  end

  # GET /dis_generic_lactations/1
  # GET /dis_generic_lactations/1.json
  def show
  end

  # GET /dis_generic_lactations/new
  def new
    @dis_generic_lactation = DisGenericLactation.new
  end

  # GET /dis_generic_lactations/1/edit
  def edit
  end

  # POST /dis_generic_lactations
  # POST /dis_generic_lactations.json
  def create
    @dis_generic_lactation = DisGenericLactation.new(dis_generic_lactation_params)

    respond_to do |format|
      if @dis_generic_lactation.save
        format.html { redirect_to @dis_generic_lactation, notice: 'Dis generic lactation was successfully created.' }
        format.json { render :show, status: :created, location: @dis_generic_lactation }
      else
        format.html { render :new }
        format.json { render json: @dis_generic_lactation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_generic_lactations/1
  # PATCH/PUT /dis_generic_lactations/1.json
  def update
    respond_to do |format|
      if @dis_generic_lactation.update(dis_generic_lactation_params)
        format.html { redirect_to @dis_generic_lactation, notice: 'Dis generic lactation was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_generic_lactation }
      else
        format.html { render :edit }
        format.json { render json: @dis_generic_lactation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_generic_lactations/1
  # DELETE /dis_generic_lactations/1.json
  def destroy
    @dis_generic_lactation.destroy
    respond_to do |format|
      format.html { redirect_to dis_generic_lactations_url, notice: 'Dis generic lactation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_generic_lactation
      @dis_generic_lactation = DisGenericLactation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_generic_lactation_params
      params.require(:dis_generic_lactation).permit(:generic_id, :description, :datasource_id, :status_id)
    end
end
