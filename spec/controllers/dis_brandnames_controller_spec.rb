require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DisBrandnamesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DisBrandname. As you add validations to DisBrandname, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DisBrandnamesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all dis_brandnames as @dis_brandnames" do
      dis_brandname = DisBrandname.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dis_brandnames)).to eq([dis_brandname])
    end
  end

  describe "GET #show" do
    it "assigns the requested dis_brandname as @dis_brandname" do
      dis_brandname = DisBrandname.create! valid_attributes
      get :show, {:id => dis_brandname.to_param}, valid_session
      expect(assigns(:dis_brandname)).to eq(dis_brandname)
    end
  end

  describe "GET #new" do
    it "assigns a new dis_brandname as @dis_brandname" do
      get :new, {}, valid_session
      expect(assigns(:dis_brandname)).to be_a_new(DisBrandname)
    end
  end

  describe "GET #edit" do
    it "assigns the requested dis_brandname as @dis_brandname" do
      dis_brandname = DisBrandname.create! valid_attributes
      get :edit, {:id => dis_brandname.to_param}, valid_session
      expect(assigns(:dis_brandname)).to eq(dis_brandname)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DisBrandname" do
        expect {
          post :create, {:dis_brandname => valid_attributes}, valid_session
        }.to change(DisBrandname, :count).by(1)
      end

      it "assigns a newly created dis_brandname as @dis_brandname" do
        post :create, {:dis_brandname => valid_attributes}, valid_session
        expect(assigns(:dis_brandname)).to be_a(DisBrandname)
        expect(assigns(:dis_brandname)).to be_persisted
      end

      it "redirects to the created dis_brandname" do
        post :create, {:dis_brandname => valid_attributes}, valid_session
        expect(response).to redirect_to(DisBrandname.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved dis_brandname as @dis_brandname" do
        post :create, {:dis_brandname => invalid_attributes}, valid_session
        expect(assigns(:dis_brandname)).to be_a_new(DisBrandname)
      end

      it "re-renders the 'new' template" do
        post :create, {:dis_brandname => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested dis_brandname" do
        dis_brandname = DisBrandname.create! valid_attributes
        put :update, {:id => dis_brandname.to_param, :dis_brandname => new_attributes}, valid_session
        dis_brandname.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested dis_brandname as @dis_brandname" do
        dis_brandname = DisBrandname.create! valid_attributes
        put :update, {:id => dis_brandname.to_param, :dis_brandname => valid_attributes}, valid_session
        expect(assigns(:dis_brandname)).to eq(dis_brandname)
      end

      it "redirects to the dis_brandname" do
        dis_brandname = DisBrandname.create! valid_attributes
        put :update, {:id => dis_brandname.to_param, :dis_brandname => valid_attributes}, valid_session
        expect(response).to redirect_to(dis_brandname)
      end
    end

    context "with invalid params" do
      it "assigns the dis_brandname as @dis_brandname" do
        dis_brandname = DisBrandname.create! valid_attributes
        put :update, {:id => dis_brandname.to_param, :dis_brandname => invalid_attributes}, valid_session
        expect(assigns(:dis_brandname)).to eq(dis_brandname)
      end

      it "re-renders the 'edit' template" do
        dis_brandname = DisBrandname.create! valid_attributes
        put :update, {:id => dis_brandname.to_param, :dis_brandname => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested dis_brandname" do
      dis_brandname = DisBrandname.create! valid_attributes
      expect {
        delete :destroy, {:id => dis_brandname.to_param}, valid_session
      }.to change(DisBrandname, :count).by(-1)
    end

    it "redirects to the dis_brandnames list" do
      dis_brandname = DisBrandname.create! valid_attributes
      delete :destroy, {:id => dis_brandname.to_param}, valid_session
      expect(response).to redirect_to(dis_brandnames_url)
    end
  end

end