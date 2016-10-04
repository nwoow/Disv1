module Api
  module V1
class DisIngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /ingredients
  # GET /ingredients.json
  def index
  # @cd = DisIngredient.all
    c = DisIngredient.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
     respond_with DisIngredient.find(params[:id])
  end

  # GET /ingredients/new
  def new
    @ingredient = DisIngredient.new
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = DisIngredient.new(ingredient_params)


      if @ingredient.save
        flash[:notice] = "Task was successfully created."
         respond_with(@ingredient)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = DisIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :status_id)
    end
end
 end
 end
