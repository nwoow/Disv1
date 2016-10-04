module Api
  module V1
class DisIndiastatesController < ApplicationController
  before_action :set_indiastate, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /indiastates
  # GET /indiastates.json
  def index
  # @cd = DisIndiastate.all
    c = DisIndiastate.paginate(:page => params[:page], :per_page => 10)
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    #  n = c.to_a << @m
    respond_with m
  end

  # GET /indiastates/1
  # GET /indiastates/1.json
  def show
     respond_with DisIndiastate.find(params[:id])
  end

  # GET /indiastates/new
  def new
    @indiastate = DisIndiastate.new
  end

  # GET /indiastates/1/edit
  def edit
  end

  # POST /indiastates
  # POST /indiastates.json
  def create
    @indiastate = DisIndiastate.new(indiastate_params)


      if @indiastate.save
        flash[:notice] = "Task was successfully created."
         respond_with(@indiastate)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /indiastates/1
  # PATCH/PUT /indiastates/1.json
  def update
    respond_to do |format|
      if @indiastate.update(indiastate_params)
        format.html { redirect_to @indiastate, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @indiastate }
      else
        format.html { render :edit }
        format.json { render json: @indiastate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indiastates/1
  # DELETE /indiastates/1.json
  def destroy
    @indiastate.destroy
    respond_to do |format|
      format.html { redirect_to indiastates_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indiastate
      @indiastate = DisIndiastate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indiastate_params
      params.require(:indiastate).permit(:name, :abbrev)
    end
end
 end
 end
