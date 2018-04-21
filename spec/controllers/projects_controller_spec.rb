require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  before(:each) do 
    user = FactoryBot.create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  describe "GET #index" do
    before(:each) do
      get :index
    end

    it "populates an array of projects" do
      project = FactoryBot.create(:project)
      expect(assigns(:projects)).to eq([project])
    end
    
    it "renders the index template" do
      expect(response).to render_template("index")
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "assigns a new Project to @project" do
      expect(assigns(:project).id).to eq(nil)
      expect(assigns(:project).name).to eq(nil)
      expect(assigns(:project).description).to eq(nil)
    end

    it "renders the new template" do
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new project in the database" do
        project_params = FactoryBot.attributes_for(:project)
        expect { post :create, params: {project: project_params} }.to change(Project, :count).by(1)
      end

      it "redirects to the projects page" do
        get :index
        expect(response).to render_template("index")
      end
    end

    context "with invalid attributes" do
      it "does not save the new project in the database" do
        project = FactoryBot.build(:project)
        project.name = "a"
        project.description = "this project should not be saved"
        project.is_accepted = false
        project_params = {name: project.name, description: project.description, is_accepted: project.is_accepted}
        expect { post :create, params: {project: project_params} }.to change(Project, :count).by(0)
      end

      it "re-renders the new template" do
        get :new
        expect(response).to render_template("new")
      end
    end
  end

  describe "GET #edit" do 
    it "renders the edit template" do
      project = FactoryBot.create(:project)
      get :edit, params: { id: project.id }
      expect(response).to render_template("edit")
    end
  end

  describe "PATCH #update" do 
    context "with valid attributes" do
      it "update project in the database" do
        project = FactoryBot.create(:project)
        project_params = FactoryBot.attributes_for(:project)
        project_params[:name] = "Android App"
        patch :update, params: { id: project.id, project: project_params }
        project.reload
        expect(project.name).to eq("Android App")
        expect(project.description).to eq("Test description")
        expect(project.is_accepted).to eq(true)
      end

      it "redirects to the projects page" do
        get :index
        expect(response).to render_template("index")
      end
    end

    context "with invalid attributes" do
      it "do not update project in the database and redirect to edit template" do
        project = FactoryBot.create(:project)
        project_params = FactoryBot.attributes_for(:project)
        project_params[:name] = "a"
        patch :update, params: { id: project.id, project: project_params }
        project.reload
        expect(project.name).to eq("iOS App")
        expect(response).to render_template("edit")
      end
    end

  end

  describe "GET #show" do
    it "assigns the requested project to @projects" do 
      project = FactoryBot.create(:project)
      get :show, params: { id: project.id }
      expect(assigns(:project)).to eq(project)
    end

    it "renders the show template" do
      project = FactoryBot.create(:project)
      get :show, params: { id: project.id }
      expect(response).to render_template("show")
    end
  end

  describe "DELETE #destroy" do
    context "successfully destroy" do 
      it "delete the project" do 
        project = FactoryBot.create(:project)
        expect {
          delete :destroy, params: { id: project.id }
        }.to change(Project, :count).by(-1)
      end
    end
  end

  describe "PATCH #join" do
    context "successfully allow user to join project" do 
      it "add user to project and redirect to user profile page" do 
        project = FactoryBot.create(:project)
        project_params = FactoryBot.attributes_for(:project)
        patch :join, params: { id: project.id, project: project_params }
        expect(project.users.count).to eq(1)
      end
    end 
  end

  describe "PATH #leave" do 
    context "successfully remove project from user profile" do 
      it "remove project from user profile" do 
        project = FactoryBot.create(:project)
        project_params = FactoryBot.attributes_for(:project)
        patch :join, params: { id: project.id, project: project_params }
        patch :leave, params: { id: project.id, project: project_params }
        expect(project.users.count).to eq(0)
      end
    end
  end

end