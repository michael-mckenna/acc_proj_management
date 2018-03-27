Given("the user is on project list page") do
    visit 'https://acc-project-management.herokuapp.com/projects'
    page.should have_content("Available Projects")
end

When("a project is created") do
    find('.add_proj_btn').click
    page.should have_content("Add New Project")
    fill_in('Name', :with => 'Project Test (Cucumber)')
    fill_in('Description', :with => 'Testing...')
    click_button("Create Project")
end

Then("project should show in listed projects") do
    expect(page).to have_selector('.card')
end

When("a project title is clicked on") do
    find('.btn-link').click
end

Then("project description should be toggled") do
    element = page.find('#collapse1')
    element.find('.show')
end