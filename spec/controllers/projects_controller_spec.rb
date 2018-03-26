
RSpec.describe ProjectsController do
    describe "GET #index" do
        it "populates an array of projects" do
            project = FactoryBot.create(:project)
            get :index
            assigns(:projects).should eq([project])
        end

        it "renders the :index view" do 
            get :index
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
        it "assigns a new Project to @project"
        it "renders the :new template"
    end
    
    describe "POST #create" do
        context "with valid attributes" do
            it "saves the new projects in the database"
            it "redirects to the projects page"
        end
    
        context "with invalid attributes" do
            it "does not save the new projects in the database"
            it "re-renders the :new template"
        end
    end    
end