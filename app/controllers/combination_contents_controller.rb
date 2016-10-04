class CombinationContentsController < ApplicationController
  before_action :set_combination_content, only: [:show, :edit, :update, :destroy]

  # GET /combination_contents
  # GET /combination_contents.json
  def index
     @combination_contents = CombinationContent.all
  end

  # GET /combination_contents/1
  # GET /combination_contents/1.json
  def show
  end

  # GET /combination_contents/new
  def new
    @combination_content = CombinationContent.new
  end

  # GET /combination_contents/1/edit
  def edit
  end

  # POST /combination_contents
  # POST /combination_contents.json
  def create
    @combination_content = CombinationContent.new(combination_content_params)

    respond_to do |format|
      if @combination_content.save
        format.html { redirect_to @combination_content, notice: 'Combination content was successfully created.' }
        format.json { render :show, status: :created, location: @combination_content }
      else
        format.html { render :new }
        format.json { render json: @combination_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combination_contents/1
  # PATCH/PUT /combination_contents/1.json
  def update
    respond_to do |format|
      if @combination_content.update(combination_content_params)
        format.html { redirect_to @combination_content, notice: 'Combination content was successfully updated.' }
        format.json { render :show, status: :ok, location: @combination_content }
      else
        format.html { render :edit }
        format.json { render json: @combination_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combination_contents/1
  # DELETE /combination_contents/1.json
  def destroy
    @combination_content.destroy
    respond_to do |format|
      format.html { redirect_to combination_contents_url, notice: 'Combination content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination_content
      @combination_content = CombinationContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combination_content_params
      params.require(:combination_content).permit(:combination_contents_id, :combination_generic_id, :constituent_generic_id, :constituent_strength, :uom_id, :combination_dose_id, :data_source_id, :status)
    end
end
