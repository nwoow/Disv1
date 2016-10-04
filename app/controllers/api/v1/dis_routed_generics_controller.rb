module Api
  module V1
class DisRoutedGenericsController < ApplicationController
  before_action :set_routed_generic, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /routed_generics
  # GET /routed_generics.json
  def index
  # @cd = DisRoutedGeneric.all
    c = DisRoutedGeneric.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /routed_generics/1
  # GET /routed_generics/1.json
  def show
     respond_with DisRoutedGeneric.find(params[:id])
  end

  # GET /routed_generics/new
  def new
    @routed_generic = DisRoutedGeneric.new
  end

  # GET /routed_generics/1/edit
  def edit
  end

  # POST /routed_generics
  # POST /routed_generics.json
  def create
    @routed_generic = DisRoutedGeneric.new(routed_generic_params)


      if @routed_generic.save
        flash[:notice] = "Task was successfully created."
         respond_with(@routed_generic)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /routed_generics/1
  # PATCH/PUT /routed_generics/1.json
  def update
    respond_to do |format|
      if @routed_generic.update(routed_generic_params)
        format.html { redirect_to @routed_generic, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @routed_generic }
      else
        format.html { render :edit }
        format.json { render json: @routed_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routed_generics/1
  # DELETE /routed_generics/1.json
  def destroy
    @routed_generic.destroy
    respond_to do |format|
      format.html { redirect_to routed_generics_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routed_generic
      @routed_generic = DisRoutedGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def routed_generic_params
      params.require(:routed_generic).permit(:name, :generic_id, :route_id, :is_combination, :pregnancy_category_id, :release_status_id, :status_id)
    end
end
 end
 end
