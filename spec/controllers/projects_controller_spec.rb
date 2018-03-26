
RSpec.describe ProjectsController do
    describe "GET #index" do
        before(:each) do
            get :index
        end

        it "populates an array of projects" do
            project = FactoryBot.create(:project)
            assigns(:projects).should eq([project])
        end

        it "renders the :index view" do 
            response.should render_template :index
        end
    end
      
    describe "GET #show" do
        it "assigns the requested project to @projects" do 
            project = FactoryBot.create(:project)
            get :show, params: { id: project.id }
            assigns(:project).should eq(project)
        end

        it "renders the :show template" do
            project = FactoryBot.create(:project)
            get :show, params: { id: project.id }
            response.should render_template :show
        end
    end
    
    describe "GET #new" do
        before(:each) do
            get :new
        end

        it "assigns a new Project to @project" do
	    assigns(:project).id.should eq(nil)
            assigns(:project).name.should eq(nil)
            assigns(:project).description.should eq(nil)
        end

        it "renders the :new template" do
            response.should render_template :new
        end
    end
    
    describe "POST #create" do
        context "with valid attributes" do
            it "saves the new project in the database" do
                project = FactoryBot.create(:project)
                expect(project.save).to eq true
            end

            it "redirects to the projects page" do
                get :index
                response.should render_template :index
            end
        end
    
        context "with invalid attributes" do
            it "does not save the new project in the database" do
                project = FactoryBot.build(:project)
                project.name = "a"
		expect(project.save).to eq false
            end

            it "re-renders the :new template" do
                get :new
                response.should render_template :new
            end
        end
    end    
end
