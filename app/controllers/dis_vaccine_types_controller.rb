class DisVaccineTypesController < ApplicationController
  before_action :set_dis_vaccine_type, only: [:show, :edit, :update, :destroy]

  # GET /dis_vaccine_types
  # GET /dis_vaccine_types.json
  def index
    @dis_vaccine_types = DisVaccineType.all
  end

  # GET /dis_vaccine_types/1
  # GET /dis_vaccine_types/1.json
  def show
  end

  # GET /dis_vaccine_types/new
  def new
    @dis_vaccine_type = DisVaccineType.new
  end

  # GET /dis_vaccine_types/1/edit
  def edit
  end

  # POST /dis_vaccine_types
  # POST /dis_vaccine_types.json
  def create
    @dis_vaccine_type = DisVaccineType.new(dis_vaccine_type_params)

    respond_to do |format|
      if @dis_vaccine_type.save
        format.html { redirect_to @dis_vaccine_type, notice: 'Dis vaccine type was successfully created.' }
        format.json { render :show, status: :created, location: @dis_vaccine_type }
      else
        format.html { render :new }
        format.json { render json: @dis_vaccine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_vaccine_types/1
  # PATCH/PUT /dis_vaccine_types/1.json
  def update
    respond_to do |format|
      if @dis_vaccine_type.update(dis_vaccine_type_params)
        format.html { redirect_to @dis_vaccine_type, notice: 'Dis vaccine type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_vaccine_type }
      else
        format.html { render :edit }
        format.json { render json: @dis_vaccine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_vaccine_types/1
  # DELETE /dis_vaccine_types/1.json
  def destroy
    @dis_vaccine_type.destroy
    respond_to do |format|
      format.html { redirect_to dis_vaccine_types_url, notice: 'Dis vaccine type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_vaccine_type
      @dis_vaccine_type = DisVaccineType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_vaccine_type_params
      params.require(:dis_vaccine_type).permit(:name, :description, :has_packagedrug, :status_id, :datasource_id)
    end
end
