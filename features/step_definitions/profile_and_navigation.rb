Given("The user is on the profile page") do
    visit 'https://acc-project-management.herokuapp.com/profile'

    # Profile
    page.should have_content("Profile")
    page.should have_content("Name")
    page.should have_content("Admin Status")
    page.should have_content("Projects")
end

### Home Tab Selection ###

When("A user clicks the Home tab") do
    page.should have_link("Home")
    click_link("Home")
end

Then("The user should still be on the same page") do
    page.current_url == 'https://acc-project-management.herokuapp.com/profile'
    expect(page).to have_content("Profile")
    expect(page).to have_content("Name")
    expect(page).to have_content("Admin Status")
    expect(page).to have_content("Projects")
end

### Projects Tab Selection 

When("A user clicks the Projects tab") do
    page.should have_link("Projects")
    click_link("Projects")
end

Then("A list of available projects should be shown") do
    page.current_url == 'https://acc-project-management.herokuapp.com/profile'
end

### Admin Tab Selection ###

When("An admin user clicks the Admin tab") do
    page.should have_link("Admin")
    click_link("Admin")
end

Then("Statistics page should show") do
    page.current_url == 'https://acc-project-management.herokuapp.com/profile'
    expect(page).to have_content("Statistics")
    expect(page).to have_content("Members")
    expect(page).to have_content("Admin")
    expect(page).to have_content("Projects")
    expect(page).to have_content("Notifications")
end

### Sign Out Selection ###

When("A user clicks sign out") do
    page.should have_link("Sign Out")
    click_link("Sign Out")
end

Then("The user should be returned to the sign in page") do
    page.current_url == 'https://acc-project-management.herokuapp.com/profile'
end




