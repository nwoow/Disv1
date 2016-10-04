class DisAdditiveFrequenciesController < ApplicationController
  before_action :set_dis_additive_frequency, only: [:show, :edit, :update, :destroy]

  # GET /dis_additive_frequencies
  # GET /dis_additive_frequencies.json
  def index
    @dis_additive_frequencies = DisAdditiveFrequency.all
    respond_to do |format|
       format.html
       format.json { render json:DisAdditiveFrequencieDatatable.new(view_context) }
     end
  end

  # GET /dis_additive_frequencies/1
  # GET /dis_additive_frequencies/1.json
  def show
  end

  # GET /dis_additive_frequencies/new
  def new
    @dis_additive_frequency = DisAdditiveFrequency.new
  end

  # GET /dis_additive_frequencies/1/edit
  def edit
  end

  # POST /dis_additive_frequencies
  # POST /dis_additive_frequencies.json
  def create
    @dis_additive_frequency = DisAdditiveFrequency.new(dis_additive_frequency_params)

    respond_to do |format|
      if @dis_additive_frequency.save
        format.html { redirect_to @dis_additive_frequency, notice: 'Dis additive frequency was successfully created.' }
        format.json { render :show, status: :created, location: @dis_additive_frequency }
      else
        format.html { render :new }
        format.json { render json: @dis_additive_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_additive_frequencies/1
  # PATCH/PUT /dis_additive_frequencies/1.json
  def update
    respond_to do |format|
      if @dis_additive_frequency.update(dis_additive_frequency_params)
        format.html { redirect_to @dis_additive_frequency, notice: 'Dis additive frequency was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_additive_frequency }
      else
        format.html { render :edit }
        format.json { render json: @dis_additive_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_additive_frequencies/1
  # DELETE /dis_additive_frequencies/1.json
  def destroy
    @dis_additive_frequency.destroy
    respond_to do |format|
      format.html { redirect_to dis_additive_frequencies_url, notice: 'Dis additive frequency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_additive_frequency
      @dis_additive_frequency = DisAdditiveFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_additive_frequency_params
      params.require(:dis_additive_frequency).permit(:name, :frequency_value, :status_id)
    end
end
