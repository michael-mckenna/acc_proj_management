Given("the user is on project list page") do
    visit 'https://acc-project-management.herokuapp.com/projects'
    page.should have_content("Available Projects")
end

When("a project is created") do
    page.should have_content("Add New Project")
    click_link("Add New Project")
    page.current_url == 'https://acc-project-management.herokuapp.com/projects/new'
    fill_in('Name', :with => 'Project Test (Cucumber)')
    fill_in('Description', :with => 'Testing...')
    click_button("Create Project")
end

Then("project should show in listed projects") do
    page.current_url == 'https://acc-project-management.herokuapp.com/projects'
    expect(page).to have_selector('.card')
    expect(page).to have_content('Project Test (Cucumber)')
end
