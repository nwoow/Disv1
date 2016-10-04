class DisIngredientsController < ApplicationController
  before_action :set_dis_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /dis_ingredients
  # GET /dis_ingredients.json
  def index
    @dis_ingredients = DisIngredient.all
  end

  # GET /dis_ingredients/1
  # GET /dis_ingredients/1.json
  def show
  end

  # GET /dis_ingredients/new
  def new
    @dis_ingredient = DisIngredient.new
  end

  # GET /dis_ingredients/1/edit
  def edit
  end

  # POST /dis_ingredients
  # POST /dis_ingredients.json
  def create
    @dis_ingredient = DisIngredient.new(dis_ingredient_params)

    respond_to do |format|
      if @dis_ingredient.save
        format.html { redirect_to @dis_ingredient, notice: 'Dis ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @dis_ingredient }
      else
        format.html { render :new }
        format.json { render json: @dis_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_ingredients/1
  # PATCH/PUT /dis_ingredients/1.json
  def update
    respond_to do |format|
      if @dis_ingredient.update(dis_ingredient_params)
        format.html { redirect_to @dis_ingredient, notice: 'Dis ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @dis_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_ingredients/1
  # DELETE /dis_ingredients/1.json
  def destroy
    @dis_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to dis_ingredients_url, notice: 'Dis ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_ingredient
      @dis_ingredient = DisIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_ingredient_params
      params.require(:dis_ingredient).permit(:name, :status_id)
    end
end
