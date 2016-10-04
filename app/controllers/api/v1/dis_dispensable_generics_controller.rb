module Api
  module V1
class DisDispensableGenericsController < ApplicationController
  before_action :set_dis_dispensable_generic, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_dispensable_generics
  # GET /dis_dispensable_generics.json
  def index
  # @cd = DisDispensableGeneric.all
    a = DisDispensableGeneric.paginate(:page => params[:page], :per_page => 3).order(:id)
    @m = array = []
    a.each do |m|
    # user = User.where(id: m.user_two).last
    h = {}
    h["id"] = m.id
    h["routed_doseform_generic"] = m.routed_doseform_generic_id
    # Start - Logic to lookup for routed doseform generic
    if m.routed_doseform_generic_id
    @DisRoutedDoseformGeneric = DisRoutedDoseformGeneric.where(id:m.routed_doseform_generic_id).last
    h["routed_doseform_generic_name"] = @DisRoutedDoseformGeneric.name
    else
    h["routed_doseform_generic_name"] ="no desc"
    end
    # End - Logic to lookup for routed doseform generic
    h["strength"] = m.strength
    h["strength_doseunit_id"] = m.strength_doseunit_id
    # Start - Logic to lookup for doseunit
    if m.strength_doseunit_id 
    @DisDoseunit = DisDoseunit.where(id:m.strength_doseunit_id).last
    h["strength_doseunit_name"] = @DisDoseunit.name
    else
    h["strength_doseunit_name"] ="no desc"
    end
    # End - Logic to lookup for doseunit
    h["per_strength"] = m.per_strength
    h["per_doseunit_id"] = m.per_doseunit_id
    # Start - Logic to lookup for per doseunit
    if m.per_doseunit_id
    @DisDoseunit = DisDoseunit.where(id:m.per_doseunit_id).last
    h["per_doseunit_name"] = @DisDoseunit.name
    else
    h["per_doseunit_name"] ="no desc"
    end
    # End - Logic to lookup for per doseunit
    h["name"] = m.name
    h["status_id"] = m.status_id
    # Start - Logic to lookup for status inside statuses table
    if m.status_id
    @DisStatus = DisStatus.where(id:m.status_id).last
    h["status_name"] = @DisStatus.name
    else
    h["status_name"] ="no desc"
    end
      # End - Logic to lookup for status inside statuses table
    h["datasource_id"] = m.datasource_id
    # Start - Logic to lookup for datasource_id
    if m.datasource_id
    @DisDatasource = DisDatasource.where(id:m.datasource_id).last
    h["datasource_name"] = @DisDatasource.name
    else
    h["datasource_name"] ="no desc"
    end
    # End - Logic to lookup for datasource_id
    array << h
    end
    rowcount = a.count
    a = a.as_json
    d = [{"Count" => rowcount}]
    result = {"raw" => a ,"count" => d , "final" => @m}
    #  n = c.to_a << @m
    respond_with result
  end

  # GET /dis_dispensable_generics/1
  # GET /dis_dispensable_generics/1.json
  def show
     respond_with DisDispensableGeneric.find(params[:id])
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


      if @dis_dispensable_generic.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_dispensable_generic)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_dispensable_generics/1
  # PATCH/PUT /dis_dispensable_generics/1.json
  def update
    respond_to do |format|
      if @dis_dispensable_generic.update(dis_dispensable_generic_params)
        format.html { redirect_to @dis_dispensable_generic, notice: 'Combination dose was successfully updated.' }
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
      format.html { redirect_to dis_dispensable_generics_url, notice: 'Combination dose was successfully destroyed.' }
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
 end
 end
