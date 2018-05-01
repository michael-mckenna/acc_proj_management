Given("The user is on the profile page") do
    visit 'https://acc-project-management.herokuapp.com/users/1'
    expect(page).to have_content("AgCollab")
    expect(page).to have_css(".row")
end

### Home Tab Selection ###

When("A user clicks the Home tab") do
    expect(page).to have_content("AgCollab")
    expect(page).to have_css("#home")
end

Then("The user should still be on the same page") do
    visit 'https://acc-project-management.herokuapp.com/users/1'
    expect(page).to have_content("AgCollab")
end

### Projects Tab Selection 

When("A user clicks the Projects tab") do
    expect(page).to have_content("AgCollab")
    expect(page).to have_css(".container")
    expect(page).to have_css(".row")
end

Then("A list of available projects should be shown") do
    visit 'https://acc-project-management.herokuapp.com/projects'
end

### Admin Tab Selection ###

When("An admin user clicks the Admin tab") do
    expect(page).to have_css(".container")
    expect(page).to have_css(".row")
    expect(page).to have_content("AgCollab")
end

Then("Statistics page should show") do
    page.current_url == 'https://acc-project-management.herokuapp.com/users/1'
    expect(page).to have_content("AgCollab")
end

### Sign Out Selection ###

When("A user clicks sign out") do
    expect(page).to have_content("AgCollab")
    expect(page).to have_css(".col-lg-12")
end

Then("The user should be returned to the sign in page") do
    visit 'https://acc-project-management.herokuapp.com/users/1'
end




