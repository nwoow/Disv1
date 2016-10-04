class DisDuplicateTherapiesController < ApplicationController
  before_action :set_dis_duplicate_therapy, only: [:show, :edit, :update, :destroy]

  # GET /dis_duplicate_therapies
  # GET /dis_duplicate_therapies.json
  def index
    @dis_duplicate_therapies = DisDuplicateTherapy.all
  end

  # GET /dis_duplicate_therapies/1
  # GET /dis_duplicate_therapies/1.json
  def show
  end

  # GET /dis_duplicate_therapies/new
  def new
    @dis_duplicate_therapy = DisDuplicateTherapy.new
  end

  # GET /dis_duplicate_therapies/1/edit
  def edit
  end

  # POST /dis_duplicate_therapies
  # POST /dis_duplicate_therapies.json
  def create
    @dis_duplicate_therapy = DisDuplicateTherapy.new(dis_duplicate_therapy_params)

    respond_to do |format|
      if @dis_duplicate_therapy.save
        format.html { redirect_to @dis_duplicate_therapy, notice: 'Dis duplicate therapy was successfully created.' }
        format.json { render :show, status: :created, location: @dis_duplicate_therapy }
      else
        format.html { render :new }
        format.json { render json: @dis_duplicate_therapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_duplicate_therapies/1
  # PATCH/PUT /dis_duplicate_therapies/1.json
  def update
    respond_to do |format|
      if @dis_duplicate_therapy.update(dis_duplicate_therapy_params)
        format.html { redirect_to @dis_duplicate_therapy, notice: 'Dis duplicate therapy was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_duplicate_therapy }
      else
        format.html { render :edit }
        format.json { render json: @dis_duplicate_therapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_duplicate_therapies/1
  # DELETE /dis_duplicate_therapies/1.json
  def destroy
    @dis_duplicate_therapy.destroy
    respond_to do |format|
      format.html { redirect_to dis_duplicate_therapies_url, notice: 'Dis duplicate therapy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_duplicate_therapy
      @dis_duplicate_therapy = DisDuplicateTherapy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_duplicate_therapy_params
      params.require(:dis_duplicate_therapy).permit(:generic_id1, :generic_id2, :status_id, :datasource_id)
    end
end
