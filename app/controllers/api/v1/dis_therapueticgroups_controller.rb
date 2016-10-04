module Api
  module V1
class DisTherapueticgroupsController < ApplicationController
  before_action :set_therapueticgroup, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /therapueticgroups
  # GET /therapueticgroups.json
  def index
  # @cd = DisTherapueticgroup.all
    c = DisTherapueticgroup.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /therapueticgroups/1
  # GET /therapueticgroups/1.json
  def show
     respond_with DisTherapueticgroup.find(params[:id])
  end

  # GET /therapueticgroups/new
  def new
    @therapueticgroup = DisTherapueticgroup.new
  end

  # GET /therapueticgroups/1/edit
  def edit
  end

  # POST /therapueticgroups
  # POST /therapueticgroups.json
  def create
    @therapueticgroup = DisTherapueticgroup.new(therapueticgroup_params)


      if @therapueticgroup.save
        flash[:notice] = "Task was successfully created."
         respond_with(@therapueticgroup)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /therapueticgroups/1
  # PATCH/PUT /therapueticgroups/1.json
  def update
    respond_to do |format|
      if @therapueticgroup.update(therapueticgroup_params)
        format.html { redirect_to @therapueticgroup, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapueticgroup }
      else
        format.html { render :edit }
        format.json { render json: @therapueticgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapueticgroups/1
  # DELETE /therapueticgroups/1.json
  def destroy
    @therapueticgroup.destroy
    respond_to do |format|
      format.html { redirect_to therapueticgroups_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapueticgroup
      @therapueticgroup = DisTherapueticgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapueticgroup_params
      params.require(:therapueticgroup).permit(:name, :system_id, :status_id)
    end
end
 end
 end
