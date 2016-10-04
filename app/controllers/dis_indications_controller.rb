class DisIndicationsController < ApplicationController
  before_action :set_dis_indication, only: [:show, :edit, :update, :destroy]

  # GET /dis_indications
  # GET /dis_indications.json
  def index
    @dis_indications = DisIndication.all
  end

  # GET /dis_indications/1
  # GET /dis_indications/1.json
  def show
  end

  # GET /dis_indications/new
  def new
    @dis_indication = DisIndication.new
  end

  # GET /dis_indications/1/edit
  def edit
  end

  # POST /dis_indications
  # POST /dis_indications.json
  def create
    @dis_indication = DisIndication.new(dis_indication_params)

    respond_to do |format|
      if @dis_indication.save
        format.html { redirect_to @dis_indication, notice: 'Dis indication was successfully created.' }
        format.json { render :show, status: :created, location: @dis_indication }
      else
        format.html { render :new }
        format.json { render json: @dis_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_indications/1
  # PATCH/PUT /dis_indications/1.json
  def update
    respond_to do |format|
      if @dis_indication.update(dis_indication_params)
        format.html { redirect_to @dis_indication, notice: 'Dis indication was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_indication }
      else
        format.html { render :edit }
        format.json { render json: @dis_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_indications/1
  # DELETE /dis_indications/1.json
  def destroy
    @dis_indication.destroy
    respond_to do |format|
      format.html { redirect_to dis_indications_url, notice: 'Dis indication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_indication
      @dis_indication = DisIndication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_indication_params
      params.require(:dis_indication).permit(:description, :status_id)
    end
end
