class DisBrandnamesController < ApplicationController
  before_action :set_dis_brandname, only: [:show, :edit, :update, :destroy]

  # GET /dis_brandnames
  # GET /dis_brandnames.json
  def index
    respond_to do |format|
       format.html
       format.json { render json:DisBrandnameDatatable.new(view_context) }
     end
  end

  # GET /dis_brandnames/1
  # GET /dis_brandnames/1.json
  def show
  end

  # GET /dis_brandnames/new
  def new
    @dis_brandname = DisBrandname.new
  end

  # GET /dis_brandnames/1/edit
  def edit
  end

  # POST /dis_brandnames
  # POST /dis_brandnames.json
  def create
    @dis_brandname = DisBrandname.new(dis_brandname_params)

    respond_to do |format|
      if @dis_brandname.save
        format.html { redirect_to @dis_brandname, notice: 'Dis brandname was successfully created.' }
        format.json { render :show, status: :created, location: @dis_brandname }
      else
        format.html { render :new }
        format.json { render json: @dis_brandname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_brandnames/1
  # PATCH/PUT /dis_brandnames/1.json
  def update
    respond_to do |format|
      if @dis_brandname.update(dis_brandname_params)
        format.html { redirect_to @dis_brandname, notice: 'Dis brandname was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_brandname }
      else
        format.html { render :edit }
        format.json { render json: @dis_brandname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_brandnames/1
  # DELETE /dis_brandnames/1.json
  def destroy
    @dis_brandname.destroy
    respond_to do |format|
      format.html { redirect_to dis_brandnames_url, notice: 'Dis brandname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_brandname
      @dis_brandname = DisBrandname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_brandname_params
      params.require(:dis_brandname).permit(:name, :release_status_id, :status_id)
    end
end
