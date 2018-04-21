RSpec.describe UsersController do

  before(:each) do 
    user = FactoryBot.create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

    describe "GET #index" do
        it "populates an array of users" do
            user = User.first
            get :index
            expect(assigns(:users)).to eq([user])
        end

        it "renders the index view" do
            get :index
            expect(response).to render_template("index")
        end
    end

    describe "GET #show" do
        it "assigns the request user to @user" do
            user = FactoryBot.create(:user)
            get :show, params: { id: user.id }
            expect(assigns(:user)).to eq(user)
        end

        it "renders the :show template" do
            user = FactoryBot.create(:user)
            get :show, params: { id: user.id }
            expect(response).to render_template("show")
        end
    end

    describe "GET #edit" do
        it "renders the show template" do
            user = FactoryBot.create(:user)
            get :edit, params: { id: user.id }
            expect(response).to render_template("edit")
        end
    end

    describe "PATCH #update" do 
      context "with valid attributes" do
        it "update user in the database" do
          user = FactoryBot.create(:user)
          user_params = FactoryBot.attributes_for(:user)
          user_params[:is_admin] = true
          patch :update, params: { id: user.id, user: user_params }
          user.reload
          expect(user.is_admin).to eq(true)
        end

        it "redirects to the users page" do
          get :index
          expect(response).to render_template("index")
        end
      end
    end

    describe "DELETE #destroy" do
      context "successfully destroy user" do 
        it "delete the user" do 
          user = FactoryBot.create(:user)
          expect {
            delete :destroy, params: { id: user.id }
          }.to change(User, :count).by(-1)
        end
      end
    end

    describe "GET #admin" do 
      it "show not yet accepted project" do
        project = FactoryBot.build(:project)
        project.name = "Test Not Yet Accepted Project"
        project.description = "Description for Not Yet Accepted Project"
        project.is_accepted = false
        project_params = {name: project.name, description: project.description, is_accepted: project.is_accepted}
        Project.create(project_params)
        get :admin
        expect(assigns(:projects).count).to eq([project].count)
      end  	
    end

end