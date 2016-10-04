class DisPregnancyCategoriesController < ApplicationController
  before_action :set_dis_pregnancy_category, only: [:show, :edit, :update, :destroy]

  # GET /dis_pregnancy_categories
  # GET /dis_pregnancy_categories.json
  def index
    @dis_pregnancy_categories = DisPregnancyCategory.all
  end

  # GET /dis_pregnancy_categories/1
  # GET /dis_pregnancy_categories/1.json
  def show
  end

  # GET /dis_pregnancy_categories/new
  def new
    @dis_pregnancy_category = DisPregnancyCategory.new
  end

  # GET /dis_pregnancy_categories/1/edit
  def edit
  end

  # POST /dis_pregnancy_categories
  # POST /dis_pregnancy_categories.json
  def create
    @dis_pregnancy_category = DisPregnancyCategory.new(dis_pregnancy_category_params)

    respond_to do |format|
      if @dis_pregnancy_category.save
        format.html { redirect_to @dis_pregnancy_category, notice: 'Dis pregnancy category was successfully created.' }
        format.json { render :show, status: :created, location: @dis_pregnancy_category }
      else
        format.html { render :new }
        format.json { render json: @dis_pregnancy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_pregnancy_categories/1
  # PATCH/PUT /dis_pregnancy_categories/1.json
  def update
    respond_to do |format|
      if @dis_pregnancy_category.update(dis_pregnancy_category_params)
        format.html { redirect_to @dis_pregnancy_category, notice: 'Dis pregnancy category was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_pregnancy_category }
      else
        format.html { render :edit }
        format.json { render json: @dis_pregnancy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_pregnancy_categories/1
  # DELETE /dis_pregnancy_categories/1.json
  def destroy
    @dis_pregnancy_category.destroy
    respond_to do |format|
      format.html { redirect_to dis_pregnancy_categories_url, notice: 'Dis pregnancy category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_pregnancy_category
      @dis_pregnancy_category = DisPregnancyCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_pregnancy_category_params
      params.require(:dis_pregnancy_category).permit(:name, :description, :status_id)
    end
end
