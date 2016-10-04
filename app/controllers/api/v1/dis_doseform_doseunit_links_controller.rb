module Api
  module V1
class DisDoseformDoseunitLinksController < ApplicationController
  before_action :set_dis_doseform_doseunit_link, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /dis_doseform_doseunit_links
  # GET /dis_doseform_doseunit_links.json
  def index
  # @cd = DisDoseformDoseunitLink.all
    c = DisDoseformDoseunitLink.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /dis_doseform_doseunit_links/1
  # GET /dis_doseform_doseunit_links/1.json
  def show
     respond_with DisDoseformDoseunitLink.find(params[:id])
  end

  # GET /dis_doseform_doseunit_links/new
  def new
    @dis_doseform_doseunit_link = DisDoseformDoseunitLink.new
  end

  # GET /dis_doseform_doseunit_links/1/edit
  def edit
  end

  # POST /dis_doseform_doseunit_links
  # POST /dis_doseform_doseunit_links.json
  def create
    @dis_doseform_doseunit_link = DisDoseformDoseunitLink.new(dis_doseform_doseunit_link_params)


      if @dis_doseform_doseunit_link.save
        flash[:notice] = "Task was successfully created."
         respond_with(@dis_doseform_doseunit_link)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /dis_doseform_doseunit_links/1
  # PATCH/PUT /dis_doseform_doseunit_links/1.json
  def update
    respond_to do |format|
      if @dis_doseform_doseunit_link.update(dis_doseform_doseunit_link_params)
        format.html { redirect_to @dis_doseform_doseunit_link, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_doseform_doseunit_link }
      else
        format.html { render :edit }
        format.json { render json: @dis_doseform_doseunit_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_doseform_doseunit_links/1
  # DELETE /dis_doseform_doseunit_links/1.json
  def destroy
    @dis_doseform_doseunit_link.destroy
    respond_to do |format|
      format.html { redirect_to dis_doseform_doseunit_links_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_doseform_doseunit_link
      @dis_doseform_doseunit_link = DisDoseformDoseunitLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_doseform_doseunit_link_params
      params.require(:dis_doseform_doseunit_link).permit(:doseform_id, :doseunit_id, :is_default, :status_id, :datasource_id)
    end
end
 end
 end
