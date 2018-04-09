Given("The user is on the profile page") do
    visit 'https://acc-project-management.herokuapp.com/profile#'

    # Profile
    page.should have_content("Profile")
    page.should have_content("Name")
    page.should have_content("Admin Status")
    page.should have_content("Projects")

    # Navigation bar
    page.should have_link("Home")
    page.should have_link("Projects")
    page.should have_link("Admin")
    page.should have_link("Sign Out")
end

### Home Tab Selection ###

When("A user clicks the Home tab") do
    
end

Then("")

### Projects Tab Selection 

When("A user clicks the Projects tab") do

end

Then("A list of available projects should be shown") do

end

### Admin Tab Selection ###

When("An admin user clicks the Admin tab") do
    
end

Then("A list of project proposal should be shown") do
    
end

### Sign Out Selection ###

When("A user clicks sign out") do

end

Then("The user should be returned to the sign in page") do

end




