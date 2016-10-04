module Api
  module V1
class DisGenericsController < ApplicationController
  before_action :set_generic, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :json
  # GET /generics
  # GET /generics.json
  def index
  # @cd = DisGeneric.all
  if params[:filter]
    c = DisGeneric.where("name LIKE ? ", "%#{params[:filter]}%").paginate(:page => params[:page], :per_page => 10)
  else
    c = DisGeneric.paginate(:page => params[:page], :per_page => 10)
  end
    e = c.count
    c = c.as_json
    d = [{"Count" => e}]
    m = {"a" => c ,"b" => d}
    # if params[:filter]
    #   m = {"a" => params[:filter] ,"b" => params[:g]}
    #   respond_with m
    # else
    #  n = c.to_a << @m
    respond_with m
  # end

  end

  def search
    m = {"a" => params[:page] ,"b" => params[:g]}
    respond_with m
  end

  # GET /generics/1
  # GET /generics/1.json
  def show
     respond_with DisGeneric.find(params[:id])
  end

  # GET /generics/new
  def new
    @generic = DisGeneric.new
  end

  # GET /generics/1/edit
  def edit
  end

  # POST /generics
  # POST /generics.json
  def create
    @generic = DisGeneric.new(generic_params)


      if @generic.save
        flash[:notice] = "Task was successfully created."
         respond_with(@generic)
       else
         flash[:notice] = "Task was not created."
       end
  end

  # PATCH/PUT /generics/1
  # PATCH/PUT /generics/1.json
  def update
    respond_to do |format|
      if @generic.update(generic_params)
        format.html { redirect_to @generic, notice: 'Combination dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic }
      else
        format.html { render :edit }
        format.json { render json: @generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generics/1
  # DELETE /generics/1.json
  def destroy
    @generic.destroy
    respond_to do |format|
      format.html { redirect_to generics_url, notice: 'Combination dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic
      @generic = DisGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_params
      params.require(:generic).permit(:name, :is_combination, :rxcui, :status_id, :food_id, :hepatic_id, :renal_imp_id, :release_status_id, :is_essential)
    end
end
 end
 end
