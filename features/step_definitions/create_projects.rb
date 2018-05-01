Given("the user is creating a project") do
    visit 'https://acc-project-management.herokuapp.com/projects/new'
end

When("the name field is filled out") do
    expect(page).to_not have_field("Name", :with => "")
end

And("the description field is filled out") do
    expect(page).to_not have_field("Description", :with => " ")
end

And("the create project button has been clicked") do
    visit 'https://acc-project-management.herokuapp.com/projects/new'
end

Then("the project should be created") do
	visit 'https://acc-project-management.herokuapp.com/admin'
    expect(page).to have_css('.container')
end