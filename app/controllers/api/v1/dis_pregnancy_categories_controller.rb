module Api
  module V1
class DisPregnancyCategorysController < ApplicationController
  before_action :set_pregnancy_category, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /pregnancy_categorys
  # GET /pregnancy_categorys.json
  def index
  # @cd = DisPregnancyCategory.all
    c = DisPregnancyCategory.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /pregnancy_categorys/1
  # GET /pregnancy_categorys/1.json
  def show
     respond_with DisPregnancyCategory.find(params[:id])
  end

  # GET /pregnancy_categorys/new
  def new
    @pregnancy_category = DisPregnancyCategory.new
  end

  # GET /pregnancy_categorys/1/edit
  def edit
  end

  # POST /pregnancy_categorys
  # POST /pregnancy_categorys.json
  def create
    @pregnancy_category = DisPregnancyCategory.new(pregnancy_category_params)


      if @pregnancy_category.save
        flash[:notice] = "Task was successfully created."
         respond_with(@pregnancy_category)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /pregnancy_categorys/1
  # PATCH/PUT /pregnancy_categorys/1.json
  def update
    respond_to do |format|
      if @pregnancy_category.update(pregnancy_category_params)
        format.html { redirect_to @pregnancy_category, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @pregnancy_category }
      else
        format.html { render :edit }
        format.json { render json: @pregnancy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancy_categorys/1
  # DELETE /pregnancy_categorys/1.json
  def destroy
    @pregnancy_category.destroy
    respond_to do |format|
      format.html { redirect_to pregnancy_categorys_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregnancy_category
      @pregnancy_category = DisPregnancyCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregnancy_category_params
      params.require(:pregnancy_category).permit(:name, :description, :status_id)
    end
end
 end
 end
