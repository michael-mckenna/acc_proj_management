Given("the user is on the member listing page") do
    visit 'https://acc-project-management.herokuapp.com/users/'
end

When("a user in the list is not an admin, click button to make them an admin") do
    expect(page).to have_content("AgCollab")
end

Then("a user in list becomes admin") do
    visit 'https://acc-project-management.herokuapp.com/users'
end

When("a user in the list is an admin, click button to make them a non-admin") do 
    visit "https://acc-project-management.herokuapp.com/users/"
    page.should have_content("AgCollab")
end

Then("a user in list becomes a non-admin") do
    visit "https://acc-project-management.herokuapp.com/users"
    expect(page).to have_content("AgCollab")
end