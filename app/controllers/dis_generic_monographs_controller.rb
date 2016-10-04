class DisGenericMonographsController < ApplicationController
  before_action :set_dis_generic_monograph, only: [:show, :edit, :update, :destroy]

  # GET /dis_generic_monographs
  # GET /dis_generic_monographs.json
  def index
    @dis_generic_monographs = DisGenericMonograph.all
  end

  # GET /dis_generic_monographs/1
  # GET /dis_generic_monographs/1.json
  def show
  end

  # GET /dis_generic_monographs/new
  def new
    @dis_generic_monograph = DisGenericMonograph.new
  end

  # GET /dis_generic_monographs/1/edit
  def edit
  end

  # POST /dis_generic_monographs
  # POST /dis_generic_monographs.json
  def create
    @dis_generic_monograph = DisGenericMonograph.new(dis_generic_monograph_params)

    respond_to do |format|
      if @dis_generic_monograph.save
        format.html { redirect_to @dis_generic_monograph, notice: 'Dis generic monograph was successfully created.' }
        format.json { render :show, status: :created, location: @dis_generic_monograph }
      else
        format.html { render :new }
        format.json { render json: @dis_generic_monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_generic_monographs/1
  # PATCH/PUT /dis_generic_monographs/1.json
  def update
    respond_to do |format|
      if @dis_generic_monograph.update(dis_generic_monograph_params)
        format.html { redirect_to @dis_generic_monograph, notice: 'Dis generic monograph was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_generic_monograph }
      else
        format.html { render :edit }
        format.json { render json: @dis_generic_monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_generic_monographs/1
  # DELETE /dis_generic_monographs/1.json
  def destroy
    @dis_generic_monograph.destroy
    respond_to do |format|
      format.html { redirect_to dis_generic_monographs_url, notice: 'Dis generic monograph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_generic_monograph
      @dis_generic_monograph = DisGenericMonograph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_generic_monograph_params
      params.require(:dis_generic_monograph).permit(:generic_id, :dose, :contraindication, :precaution, :adverse_effect, :storage, :datasource_id, :status_id)
    end
end
