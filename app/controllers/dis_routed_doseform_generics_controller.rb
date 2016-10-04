class DisRoutedDoseformGenericsController < ApplicationController
  before_action :set_dis_routed_doseform_generic, only: [:show, :edit, :update, :destroy]

  # GET /dis_routed_doseform_generics
  # GET /dis_routed_doseform_generics.json
  def index
    @dis_routed_doseform_generics = DisRoutedDoseformGeneric.all
  end

  # GET /dis_routed_doseform_generics/1
  # GET /dis_routed_doseform_generics/1.json
  def show
  end

  # GET /dis_routed_doseform_generics/new
  def new
    @dis_routed_doseform_generic = DisRoutedDoseformGeneric.new
  end

  # GET /dis_routed_doseform_generics/1/edit
  def edit
  end

  # POST /dis_routed_doseform_generics
  # POST /dis_routed_doseform_generics.json
  def create
    @dis_routed_doseform_generic = DisRoutedDoseformGeneric.new(dis_routed_doseform_generic_params)

    respond_to do |format|
      if @dis_routed_doseform_generic.save
        format.html { redirect_to @dis_routed_doseform_generic, notice: 'Dis routed doseform generic was successfully created.' }
        format.json { render :show, status: :created, location: @dis_routed_doseform_generic }
      else
        format.html { render :new }
        format.json { render json: @dis_routed_doseform_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_routed_doseform_generics/1
  # PATCH/PUT /dis_routed_doseform_generics/1.json
  def update
    respond_to do |format|
      if @dis_routed_doseform_generic.update(dis_routed_doseform_generic_params)
        format.html { redirect_to @dis_routed_doseform_generic, notice: 'Dis routed doseform generic was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_routed_doseform_generic }
      else
        format.html { render :edit }
        format.json { render json: @dis_routed_doseform_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_routed_doseform_generics/1
  # DELETE /dis_routed_doseform_generics/1.json
  def destroy
    @dis_routed_doseform_generic.destroy
    respond_to do |format|
      format.html { redirect_to dis_routed_doseform_generics_url, notice: 'Dis routed doseform generic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_routed_doseform_generic
      @dis_routed_doseform_generic = DisRoutedDoseformGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_routed_doseform_generic_params
      params.require(:dis_routed_doseform_generic).permit(:generic_id, :rtd_gen_id, :route_id, :doseform_id, :name, :monograph_id, :status_id, :release_status_id, :is_combination)
    end
end
