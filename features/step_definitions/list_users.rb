Given("the user is on the member listing page") do
    visit 'https://acc-project-management.herokuapp.com/:project_id/users'
    page.should have_content("Member Listing")
end

When("a user in the list is not an admin, click button to make them an admin") do
    page.should have_content("Make Admin")
    click_button("Make Admin")
end

Then("a user in list becomes admin") do
    page.current_url == "https://acc-project_management.herokuapp.com/:project_id/users"
    expect(page).to have_content("Revoke Admin Status")
end

When("a user in the list is an admin, click button to make them a non-admin") do 
    page.should have_content("Revoke Admin Status")
    click_button("Make Admin")
end

Then("a user in list becomes a non-admin") do
    page.current_url == "https://acc-project_management.herokuapp.com/:project_id/users"
    expect(page).to have_content("Make Admin")
end