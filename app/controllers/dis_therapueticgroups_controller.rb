class DisTherapueticgroupsController < ApplicationController
  before_action :set_dis_therapueticgroup, only: [:show, :edit, :update, :destroy]

  # GET /dis_therapueticgroups
  # GET /dis_therapueticgroups.json
  def index
    @dis_therapueticgroups = DisTherapueticgroup.all
  end

  # GET /dis_therapueticgroups/1
  # GET /dis_therapueticgroups/1.json
  def show
  end

  # GET /dis_therapueticgroups/new
  def new
    @dis_therapueticgroup = DisTherapueticgroup.new
  end

  # GET /dis_therapueticgroups/1/edit
  def edit
  end

  # POST /dis_therapueticgroups
  # POST /dis_therapueticgroups.json
  def create
    @dis_therapueticgroup = DisTherapueticgroup.new(dis_therapueticgroup_params)

    respond_to do |format|
      if @dis_therapueticgroup.save
        format.html { redirect_to @dis_therapueticgroup, notice: 'Dis therapueticgroup was successfully created.' }
        format.json { render :show, status: :created, location: @dis_therapueticgroup }
      else
        format.html { render :new }
        format.json { render json: @dis_therapueticgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_therapueticgroups/1
  # PATCH/PUT /dis_therapueticgroups/1.json
  def update
    respond_to do |format|
      if @dis_therapueticgroup.update(dis_therapueticgroup_params)
        format.html { redirect_to @dis_therapueticgroup, notice: 'Dis therapueticgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_therapueticgroup }
      else
        format.html { render :edit }
        format.json { render json: @dis_therapueticgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_therapueticgroups/1
  # DELETE /dis_therapueticgroups/1.json
  def destroy
    @dis_therapueticgroup.destroy
    respond_to do |format|
      format.html { redirect_to dis_therapueticgroups_url, notice: 'Dis therapueticgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_therapueticgroup
      @dis_therapueticgroup = DisTherapueticgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_therapueticgroup_params
      params.require(:dis_therapueticgroup).permit(:name, :system_id, :status_id)
    end
end
