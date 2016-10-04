class DisDoseunitsController < ApplicationController
  before_action :set_dis_doseunit, only: [:show, :edit, :update, :destroy]

  # GET /dis_doseunits
  # GET /dis_doseunits.json
  def index
    @dis_doseunits = DisDoseunit.all
  end

  # GET /dis_doseunits/1
  # GET /dis_doseunits/1.json
  def show
  end

  # GET /dis_doseunits/new
  def new
    @dis_doseunit = DisDoseunit.new
  end

  # GET /dis_doseunits/1/edit
  def edit
  end

  # POST /dis_doseunits
  # POST /dis_doseunits.json
  def create
    @dis_doseunit = DisDoseunit.new(dis_doseunit_params)

    respond_to do |format|
      if @dis_doseunit.save
        format.html { redirect_to @dis_doseunit, notice: 'Dis doseunit was successfully created.' }
        format.json { render :show, status: :created, location: @dis_doseunit }
      else
        format.html { render :new }
        format.json { render json: @dis_doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_doseunits/1
  # PATCH/PUT /dis_doseunits/1.json
  def update
    respond_to do |format|
      if @dis_doseunit.update(dis_doseunit_params)
        format.html { redirect_to @dis_doseunit, notice: 'Dis doseunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseunit }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseunits/1
  # DELETE /dis_doseunits/1.json
  def destroy
    @dis_doseunit.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseunits_url, notice: 'Dis doseunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseunit
      @dis_doseunit = DisDoseunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseunit_params
      params.require(:dis_doseunit).permit(:id, :name, :abbrev, :dosetype_id, :status_id)
    end
end
