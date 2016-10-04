module Api
  module V1
class DisRoutedDoseformGenericsController < ApplicationController
  before_action :set_routed_doseform_generic, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /routed_doseform_generics
  # GET /routed_doseform_generics.json
  def index
  # @cd = DisRoutedDoseformGeneric.all
    c = DisRoutedDoseformGeneric.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /routed_doseform_generics/1
  # GET /routed_doseform_generics/1.json
  def show
     respond_with DisRoutedDoseformGeneric.find(params[:id])
  end

  # GET /routed_doseform_generics/new
  def new
    @routed_doseform_generic = DisRoutedDoseformGeneric.new
  end

  # GET /routed_doseform_generics/1/edit
  def edit
  end

  # POST /routed_doseform_generics
  # POST /routed_doseform_generics.json
  def create
    @routed_doseform_generic = DisRoutedDoseformGeneric.new(routed_doseform_generic_params)


      if @routed_doseform_generic.save
        flash[:notice] = "Task was successfully created."
         respond_with(@routed_doseform_generic)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /routed_doseform_generics/1
  # PATCH/PUT /routed_doseform_generics/1.json
  def update
    respond_to do |format|
      if @routed_doseform_generic.update(routed_doseform_generic_params)
        format.html { redirect_to @routed_doseform_generic, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @routed_doseform_generic }
      else
        format.html { render :edit }
        format.json { render json: @routed_doseform_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routed_doseform_generics/1
  # DELETE /routed_doseform_generics/1.json
  def destroy
    @routed_doseform_generic.destroy
    respond_to do |format|
      format.html { redirect_to routed_doseform_generics_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routed_doseform_generic
      @routed_doseform_generic = DisRoutedDoseformGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def routed_doseform_generic_params
      params.require(:routed_doseform_generic).permit(:generic_id, :rtd_gen_id, :route_id, :doseform_id, :name, :monograph_id, :status_id, :release_status_id, :is_combination)
    end
end
 end
 end
