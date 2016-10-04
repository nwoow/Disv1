            class DisGenericsController < ApplicationController
              before_action :set_dis_generic, only: [:show, :edit, :update, :destroy]
            skip_before_action :verify_authenticity_token
              # GET /dis_generics
              # GET /dis_generics.json
              def index
                # @dis_generics = DisGeneric.all
               respond_to do |format|
                   format.html
                   format.json { render json: DisGenericDatatable.new(view_context) }
                 end
              end

              # GET /dis_generics/1
              # GET /dis_generics/1.json
              def show
              end

              # GET /dis_generics/new
              def new
                @dis_generic = DisGeneric.new
              end

              # GET /dis_generics/1/edit
              def edit
              end

              # POST /dis_generics
              # POST /dis_generics.json
              def create
                @dis_generic = DisGeneric.new(dis_generic_params)

                respond_to do |format|
                  if @dis_generic.save
                    format.html { redirect_to @dis_generic, notice: 'Dis generic was successfully created.' }
                    format.json { render :show, status: :created, location: @dis_generic }
                  else
                    format.html { render :new }
                    format.json { render json: @dis_generic.errors, status: :unprocessable_entity }
                  end
                end
              end

              # PATCH/PUT /dis_generics/1
              # PATCH/PUT /dis_generics/1.json
              def update
                respond_to do |format|
                  if @dis_generic.update(dis_generic_params)
                    format.html { redirect_to @dis_generic, notice: 'Dis generic was successfully updated.' }
                    format.json { render :show, status: :ok, location: @dis_generic }
                  else
                    format.html { render :edit }
                    format.json { render json: @dis_generic.errors, status: :unprocessable_entity }
                  end
                end
              end

              # DELETE /dis_generics/1
              # DELETE /dis_generics/1.json
              def destroy
                @dis_generic.destroy
                respond_to do |format|
                  format.html { redirect_to dis_generics_url, notice: 'Dis generic was successfully destroyed.' }
                  format.json { head :no_content }
                end
              end

              private
                # Use callbacks to share common setup or constraints between actions.
                def set_dis_generic
                  @dis_generic = DisGeneric.find(params[:id])
                end

                # Never trust parameters from the scary internet, only allow the white list through.
                def dis_generic_params
                  params.require(:dis_generic).permit(:name, :is_combination, :rxcui, :status_id, :food_id, :hepatic_id, :renal_imp_id, :release_status_id, :is_essential)
                end
            end
