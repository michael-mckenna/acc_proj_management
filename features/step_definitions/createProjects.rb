Given("the user is creating a project") do
    visit 'https://acc-project-management.herokuapp.com/projects/new'
    page.should have_content("Add New Project")
end

When("the name field is filled out") do
    page.should_not have_field("Name", :with => "")
end

And("the description field is filled out") do
    page.should_not have_field("Description", :with => " ")
end

And("the create project button has been clicked") do
    click_button("Create Project")
end

Then("the project should be created") do
	visit 'https://acc-project-management.herokuapp.com/projects'
    page.should have_content("Available Projects")
    expect(page).to have_css('div#accordion')
end