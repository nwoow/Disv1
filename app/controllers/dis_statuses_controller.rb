class DisStatusesController < ApplicationController
  before_action :set_dis_status, only: [:show, :edit, :update, :destroy]

  # GET /dis_statuses
  # GET /dis_statuses.json
  def index
    @dis_statuses = DisStatus.all
  end

  # GET /dis_statuses/1
  # GET /dis_statuses/1.json
  def show
  end

  # GET /dis_statuses/new
  def new
    @dis_status = DisStatus.new
  end

  # GET /dis_statuses/1/edit
  def edit
  end

  # POST /dis_statuses
  # POST /dis_statuses.json
  def create
    @dis_status = DisStatus.new(dis_status_params)

    respond_to do |format|
      if @dis_status.save
        format.html { redirect_to @dis_status, notice: 'Dis status was successfully created.' }
        format.json { render :show, status: :created, location: @dis_status }
      else
        format.html { render :new }
        format.json { render json: @dis_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_statuses/1
  # PATCH/PUT /dis_statuses/1.json
  def update
    respond_to do |format|
      if @dis_status.update(dis_status_params)
        format.html { redirect_to @dis_status, notice: 'Dis status was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_status }
      else
        format.html { render :edit }
        format.json { render json: @dis_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_statuses/1
  # DELETE /dis_statuses/1.json
  def destroy
    @dis_status.destroy
    respond_to do |format|
      format.html { redirect_to dis_statuses_url, notice: 'Dis status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_status
      @dis_status = DisStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_status_params
      params.require(:dis_status).permit(:name)
    end
end
