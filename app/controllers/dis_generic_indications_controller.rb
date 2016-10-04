class DisGenericIndicationsController < ApplicationController
  before_action :set_dis_generic_indication, only: [:show, :edit, :update, :destroy]

  # GET /dis_generic_indications
  # GET /dis_generic_indications.json
  def index
    @dis_generic_indications = DisGenericIndication.all
  end

  # GET /dis_generic_indications/1
  # GET /dis_generic_indications/1.json
  def show
  end

  # GET /dis_generic_indications/new
  def new
    @dis_generic_indication = DisGenericIndication.new
  end

  # GET /dis_generic_indications/1/edit
  def edit
  end

  # POST /dis_generic_indications
  # POST /dis_generic_indications.json
  def create
    @dis_generic_indication = DisGenericIndication.new(dis_generic_indication_params)

    respond_to do |format|
      if @dis_generic_indication.save
        format.html { redirect_to @dis_generic_indication, notice: 'Dis generic indication was successfully created.' }
        format.json { render :show, status: :created, location: @dis_generic_indication }
      else
        format.html { render :new }
        format.json { render json: @dis_generic_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_generic_indications/1
  # PATCH/PUT /dis_generic_indications/1.json
  def update
    respond_to do |format|
      if @dis_generic_indication.update(dis_generic_indication_params)
        format.html { redirect_to @dis_generic_indication, notice: 'Dis generic indication was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_generic_indication }
      else
        format.html { render :edit }
        format.json { render json: @dis_generic_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_generic_indications/1
  # DELETE /dis_generic_indications/1.json
  def destroy
    @dis_generic_indication.destroy
    respond_to do |format|
      format.html { redirect_to dis_generic_indications_url, notice: 'Dis generic indication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_generic_indication
      @dis_generic_indication = DisGenericIndication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_generic_indication_params
      params.require(:dis_generic_indication).permit(:generic_id, :status_id, :indication_id)
    end
end
