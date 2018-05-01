Given("the user is on project list page") do
    visit 'https://acc-project-management.herokuapp.com/projects'
end

When("a project is created") do
    visit 'https://acc-project-management.herokuapp.com/projects/new'
    expect(page).to have_content("AgCollab")
end

Then("project should show in listed projects") do
    visit 'https://acc-project-management.herokuapp.com/projects'
    expect(page).to have_css('.container')
end
