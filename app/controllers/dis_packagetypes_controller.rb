class DisPackagetypesController < ApplicationController
  before_action :set_dis_packagetype, only: [:show, :edit, :update, :destroy]

  # GET /dis_packagetypes
  # GET /dis_packagetypes.json
  def index
    @dis_packagetypes = DisPackagetype.all
  end

  # GET /dis_packagetypes/1
  # GET /dis_packagetypes/1.json
  def show
  end

  # GET /dis_packagetypes/new
  def new
    @dis_packagetype = DisPackagetype.new
  end

  # GET /dis_packagetypes/1/edit
  def edit
  end

  # POST /dis_packagetypes
  # POST /dis_packagetypes.json
  def create
    @dis_packagetype = DisPackagetype.new(dis_packagetype_params)

    respond_to do |format|
      if @dis_packagetype.save
        format.html { redirect_to @dis_packagetype, notice: 'Dis packagetype was successfully created.' }
        format.json { render :show, status: :created, location: @dis_packagetype }
      else
        format.html { render :new }
        format.json { render json: @dis_packagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_packagetypes/1
  # PATCH/PUT /dis_packagetypes/1.json
  def update
    respond_to do |format|
      if @dis_packagetype.update(dis_packagetype_params)
        format.html { redirect_to @dis_packagetype, notice: 'Dis packagetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_packagetype }
      else
        format.html { render :edit }
        format.json { render json: @dis_packagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_packagetypes/1
  # DELETE /dis_packagetypes/1.json
  def destroy
    @dis_packagetype.destroy
    respond_to do |format|
      format.html { redirect_to dis_packagetypes_url, notice: 'Dis packagetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_packagetype
      @dis_packagetype = DisPackagetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_packagetype_params
      params.require(:dis_packagetype).permit(:name, :status_id)
    end
end
