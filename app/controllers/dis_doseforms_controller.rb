class DisDoseformsController < ApplicationController
  before_action :set_dis_doseform, only: [:show, :edit, :update, :destroy]

  # GET /dis_doseforms
  # GET /dis_doseforms.json
  def index
    @dis_doseforms = DisDoseform.all
  end

  # GET /dis_doseforms/1
  # GET /dis_doseforms/1.json
  def show
  end

  # GET /dis_doseforms/new
  def new
    @dis_doseform = DisDoseform.new
  end

  # GET /dis_doseforms/1/edit
  def edit
  end

  # POST /dis_doseforms
  # POST /dis_doseforms.json
  def create
    @dis_doseform = DisDoseform.new(dis_doseform_params)

    respond_to do |format|
      if @dis_doseform.save
        format.html { redirect_to @dis_doseform, notice: 'Dis doseform was successfully created.' }
        format.json { render :show, status: :created, location: @dis_doseform }
      else
        format.html { render :new }
        format.json { render json: @dis_doseform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_doseforms/1
  # PATCH/PUT /dis_doseforms/1.json
  def update
    respond_to do |format|
      if @dis_doseform.update(dis_doseform_params)
        format.html { redirect_to @dis_doseform, notice: 'Dis doseform was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseform }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseforms/1
  # DELETE /dis_doseforms/1.json
  def destroy
    @dis_doseform.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseforms_url, notice: 'Dis doseform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseform
      @dis_doseform = DisDoseform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseform_params
      params.require(:dis_doseform).permit(:name, :abbrev, :status_id)
    end
end
