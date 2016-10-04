class DisGenericHepaticImpsController < ApplicationController
  before_action :set_dis_generic_hepatic_imp, only: [:show, :edit, :update, :destroy]

  # GET /dis_generic_hepatic_imps
  # GET /dis_generic_hepatic_imps.json
  def index
    @dis_generic_hepatic_imps = DisGenericHepaticImp.all
  end

  # GET /dis_generic_hepatic_imps/1
  # GET /dis_generic_hepatic_imps/1.json
  def show
  end

  # GET /dis_generic_hepatic_imps/new
  def new
    @dis_generic_hepatic_imp = DisGenericHepaticImp.new
  end

  # GET /dis_generic_hepatic_imps/1/edit
  def edit
  end

  # POST /dis_generic_hepatic_imps
  # POST /dis_generic_hepatic_imps.json
  def create
    @dis_generic_hepatic_imp = DisGenericHepaticImp.new(dis_generic_hepatic_imp_params)

    respond_to do |format|
      if @dis_generic_hepatic_imp.save
        format.html { redirect_to @dis_generic_hepatic_imp, notice: 'Dis generic hepatic imp was successfully created.' }
        format.json { render :show, status: :created, location: @dis_generic_hepatic_imp }
      else
        format.html { render :new }
        format.json { render json: @dis_generic_hepatic_imp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_generic_hepatic_imps/1
  # PATCH/PUT /dis_generic_hepatic_imps/1.json
  def update
    respond_to do |format|
      if @dis_generic_hepatic_imp.update(dis_generic_hepatic_imp_params)
        format.html { redirect_to @dis_generic_hepatic_imp, notice: 'Dis generic hepatic imp was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_generic_hepatic_imp }
      else
        format.html { render :edit }
        format.json { render json: @dis_generic_hepatic_imp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_generic_hepatic_imps/1
  # DELETE /dis_generic_hepatic_imps/1.json
  def destroy
    @dis_generic_hepatic_imp.destroy
    respond_to do |format|
      format.html { redirect_to dis_generic_hepatic_imps_url, notice: 'Dis generic hepatic imp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_generic_hepatic_imp
      @dis_generic_hepatic_imp = DisGenericHepaticImp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_generic_hepatic_imp_params
      params.require(:dis_generic_hepatic_imp).permit(:generic_id, :warning, :description, :status_id, :datasource_id)
    end
end
