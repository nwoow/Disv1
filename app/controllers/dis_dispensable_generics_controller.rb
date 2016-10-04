class DisDispensableGenericsController < ApplicationController
  before_action :set_dis_dispensable_generic, only: [:show, :edit, :update, :destroy]

  # GET /dis_dispensable_generics
  # GET /dis_dispensable_generics.json
  def index
    # @dis_dispensable_generics = DisDispensableGeneric.all

       respond_to do |format|
         format.html
         format.json { render json:DisDispensableGenericDatatable.new(view_context) }
        end  end

  # GET /dis_dispensable_generics/1
  # GET /dis_dispensable_generics/1.json
  def show
  end

  # GET /dis_dispensable_generics/new
  def new
    @dis_dispensable_generic = DisDispensableGeneric.new
  end

  # GET /dis_dispensable_generics/1/edit
  def edit
  end

  # POST /dis_dispensable_generics
  # POST /dis_dispensable_generics.json
  def create
    @dis_dispensable_generic = DisDispensableGeneric.new(dis_dispensable_generic_params)

    respond_to do |format|
      if @dis_dispensable_generic.save
        format.html { redirect_to @dis_dispensable_generic, notice: 'Dis dispensable generic was successfully created.' }
        format.json { render :show, status: :created, location: @dis_dispensable_generic }
      else
        format.html { render :new }
        format.json { render json: @dis_dispensable_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_dispensable_generics/1
  # PATCH/PUT /dis_dispensable_generics/1.json
  def update
    respond_to do |format|
      if @dis_dispensable_generic.update(dis_dispensable_generic_params)
        format.html { redirect_to @dis_dispensable_generic, notice: 'Dis dispensable generic was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_dispensable_generic }
      else
        format.html { render :edit }
        format.json { render json: @dis_dispensable_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_dispensable_generics/1
  # DELETE /dis_dispensable_generics/1.json
  def destroy
    @dis_dispensable_generic.destroy
    respond_to do |format|
      format.html { redirect_to dis_dispensable_generics_url, notice: 'Dis dispensable generic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_dispensable_generic
      @dis_dispensable_generic = DisDispensableGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_dispensable_generic_params
      params.require(:dis_dispensable_generic).permit(:routed_doseform_generic_id, :strength, :strength_doseunit_id, :per_strength, :per_doseunit_id, :name, :release_status_id, :status_id, :datasource_id)
    end
end
