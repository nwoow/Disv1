class DisIndiastatesController < ApplicationController
  before_action :set_dis_indiastate, only: [:show, :edit, :update, :destroy]

  # GET /dis_indiastates
  # GET /dis_indiastates.json
  def index
    @dis_indiastates = DisIndiastate.all
  end

  # GET /dis_indiastates/1
  # GET /dis_indiastates/1.json
  def show
  end

  # GET /dis_indiastates/new
  def new
    @dis_indiastate = DisIndiastate.new
  end

  # GET /dis_indiastates/1/edit
  def edit
  end

  # POST /dis_indiastates
  # POST /dis_indiastates.json
  def create
    @dis_indiastate = DisIndiastate.new(dis_indiastate_params)

    respond_to do |format|
      if @dis_indiastate.save
        format.html { redirect_to @dis_indiastate, notice: 'Dis indiastate was successfully created.' }
        format.json { render :show, status: :created, location: @dis_indiastate }
      else
        format.html { render :new }
        format.json { render json: @dis_indiastate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_indiastates/1
  # PATCH/PUT /dis_indiastates/1.json
  def update
    respond_to do |format|
      if @dis_indiastate.update(dis_indiastate_params)
        format.html { redirect_to @dis_indiastate, notice: 'Dis indiastate was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_indiastate }
      else
        format.html { render :edit }
        format.json { render json: @dis_indiastate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_indiastates/1
  # DELETE /dis_indiastates/1.json
  def destroy
    @dis_indiastate.destroy
    respond_to do |format|
      format.html { redirect_to dis_indiastates_url, notice: 'Dis indiastate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_indiastate
      @dis_indiastate = DisIndiastate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_indiastate_params
      params.require(:dis_indiastate).permit(:name, :abbrev)
    end
end
