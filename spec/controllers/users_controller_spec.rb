RSpec.describe UsersController do
    describe "GET #index" do
        before(:each) do
            get :index
        end

        it "populates an array of users" do
            user = FactoryBot.create(:user)
            assigns(:users).should eq([user])
        end

        it "renders the :index view" do
            response.should render_template :index
        end
    end

    describe "GET #show" do
        it "assigns the request user to @user" do
            user = FactoryBot.create(:user)
            get :show, params: { id: user.id }
            assigns(:user).should eq(user)
        end

        it "renders the :show template" do
            response.should render_template :show
        end
    end

    describe "GET #edit" do
        it "renders the :edit template" do
            response.should render_teemplate :edit
        end
    end
end