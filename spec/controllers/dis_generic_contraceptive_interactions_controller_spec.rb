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

RSpec.describe DisGenericContraceptiveInteractionsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DisGenericContraceptiveInteraction. As you add validations to DisGenericContraceptiveInteraction, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DisGenericContraceptiveInteractionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all dis_generic_contraceptive_interactions as @dis_generic_contraceptive_interactions" do
      dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dis_generic_contraceptive_interactions)).to eq([dis_generic_contraceptive_interaction])
    end
  end

  describe "GET #show" do
    it "assigns the requested dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
      dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
      get :show, {:id => dis_generic_contraceptive_interaction.to_param}, valid_session
      expect(assigns(:dis_generic_contraceptive_interaction)).to eq(dis_generic_contraceptive_interaction)
    end
  end

  describe "GET #new" do
    it "assigns a new dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
      get :new, {}, valid_session
      expect(assigns(:dis_generic_contraceptive_interaction)).to be_a_new(DisGenericContraceptiveInteraction)
    end
  end

  describe "GET #edit" do
    it "assigns the requested dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
      dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
      get :edit, {:id => dis_generic_contraceptive_interaction.to_param}, valid_session
      expect(assigns(:dis_generic_contraceptive_interaction)).to eq(dis_generic_contraceptive_interaction)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DisGenericContraceptiveInteraction" do
        expect {
          post :create, {:dis_generic_contraceptive_interaction => valid_attributes}, valid_session
        }.to change(DisGenericContraceptiveInteraction, :count).by(1)
      end

      it "assigns a newly created dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
        post :create, {:dis_generic_contraceptive_interaction => valid_attributes}, valid_session
        expect(assigns(:dis_generic_contraceptive_interaction)).to be_a(DisGenericContraceptiveInteraction)
        expect(assigns(:dis_generic_contraceptive_interaction)).to be_persisted
      end

      it "redirects to the created dis_generic_contraceptive_interaction" do
        post :create, {:dis_generic_contraceptive_interaction => valid_attributes}, valid_session
        expect(response).to redirect_to(DisGenericContraceptiveInteraction.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
        post :create, {:dis_generic_contraceptive_interaction => invalid_attributes}, valid_session
        expect(assigns(:dis_generic_contraceptive_interaction)).to be_a_new(DisGenericContraceptiveInteraction)
      end

      it "re-renders the 'new' template" do
        post :create, {:dis_generic_contraceptive_interaction => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested dis_generic_contraceptive_interaction" do
        dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
        put :update, {:id => dis_generic_contraceptive_interaction.to_param, :dis_generic_contraceptive_interaction => new_attributes}, valid_session
        dis_generic_contraceptive_interaction.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
        dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
        put :update, {:id => dis_generic_contraceptive_interaction.to_param, :dis_generic_contraceptive_interaction => valid_attributes}, valid_session
        expect(assigns(:dis_generic_contraceptive_interaction)).to eq(dis_generic_contraceptive_interaction)
      end

      it "redirects to the dis_generic_contraceptive_interaction" do
        dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
        put :update, {:id => dis_generic_contraceptive_interaction.to_param, :dis_generic_contraceptive_interaction => valid_attributes}, valid_session
        expect(response).to redirect_to(dis_generic_contraceptive_interaction)
      end
    end

    context "with invalid params" do
      it "assigns the dis_generic_contraceptive_interaction as @dis_generic_contraceptive_interaction" do
        dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
        put :update, {:id => dis_generic_contraceptive_interaction.to_param, :dis_generic_contraceptive_interaction => invalid_attributes}, valid_session
        expect(assigns(:dis_generic_contraceptive_interaction)).to eq(dis_generic_contraceptive_interaction)
      end

      it "re-renders the 'edit' template" do
        dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
        put :update, {:id => dis_generic_contraceptive_interaction.to_param, :dis_generic_contraceptive_interaction => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested dis_generic_contraceptive_interaction" do
      dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
      expect {
        delete :destroy, {:id => dis_generic_contraceptive_interaction.to_param}, valid_session
      }.to change(DisGenericContraceptiveInteraction, :count).by(-1)
    end

    it "redirects to the dis_generic_contraceptive_interactions list" do
      dis_generic_contraceptive_interaction = DisGenericContraceptiveInteraction.create! valid_attributes
      delete :destroy, {:id => dis_generic_contraceptive_interaction.to_param}, valid_session
      expect(response).to redirect_to(dis_generic_contraceptive_interactions_url)
    end
  end

end
