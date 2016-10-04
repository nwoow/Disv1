class DisDoseunitConvertionsController < ApplicationController
  before_action :set_dis_doseunit_convertion, only: [:show, :edit, :update, :destroy]

  # GET /dis_doseunit_convertions
  # GET /dis_doseunit_convertions.json
  def index
    @dis_doseunit_convertions = DisDoseunitConvertion.all
  end

  # GET /dis_doseunit_convertions/1
  # GET /dis_doseunit_convertions/1.json
  def show
  end

  # GET /dis_doseunit_convertions/new
  def new
    @dis_doseunit_convertion = DisDoseunitConvertion.new
  end

  # GET /dis_doseunit_convertions/1/edit
  def edit
  end

  # POST /dis_doseunit_convertions
  # POST /dis_doseunit_convertions.json
  def create
    @dis_doseunit_convertion = DisDoseunitConvertion.new(dis_doseunit_convertion_params)

    respond_to do |format|
      if @dis_doseunit_convertion.save
        format.html { redirect_to @dis_doseunit_convertion, notice: 'Dis doseunit convertion was successfully created.' }
        format.json { render :show, status: :created, location: @dis_doseunit_convertion }
      else
        format.html { render :new }
        format.json { render json: @dis_doseunit_convertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_doseunit_convertions/1
  # PATCH/PUT /dis_doseunit_convertions/1.json
  def update
    respond_to do |format|
      if @dis_doseunit_convertion.update(dis_doseunit_convertion_params)
        format.html { redirect_to @dis_doseunit_convertion, notice: 'Dis doseunit convertion was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseunit_convertion }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseunit_convertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseunit_convertions/1
  # DELETE /dis_doseunit_convertions/1.json
  def destroy
    @dis_doseunit_convertion.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseunit_convertions_url, notice: 'Dis doseunit convertion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseunit_convertion
      @dis_doseunit_convertion = DisDoseunitConvertion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseunit_convertion_params
      params.require(:dis_doseunit_convertion).permit(:id, :from_doseunit_id, :to_doseunit_id, :conv_factor, :status_id)
    end
end
