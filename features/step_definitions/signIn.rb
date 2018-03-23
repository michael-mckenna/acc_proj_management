Given("the user is on the sign in page") do
    visit 'https://acc-project-management.herokuapp.com/'
    page.current_url == 'https://acc-project-management.herokuapp.com/#'
end

Given("the user has been redirected to Google's authentication") do
    # visit 'https://acc-project-management.herokuapp.com/auth/google_oauth2'
    page.current_url != 'https://acc-project-management.herokuapp.com/#'
    page.current_url != 'https://acc-project-management.herokuapp.com'
end

When("the user is signed in") do
    page.should have_content("Signed in as")
    page.should have_content("Sign out")
end

When("the user is not signed in") do
    page.should have_no_content("Signed in as")
    page.should have_no_content("Sign out")
end

When("the user clicks the sign in button") do
    find('.btn').click
end

When("the user has successfully finished authenticating") do
    page.current_url == 'https://acc-project-management.herokuapp.com/#'
end

Then("the sign in button should be present") do
    expect(page).to have_selector('.btn', visible: true)
end

Then("the user is redirected to Google's authentication") do
    page.current_url != 'https://acc-project-management.herokuapp.com/#'
    page.current_url != 'https://acc-project-management.herokuapp.com'
end

Then("the user should return to the home page") do
    page.current_url == 'https://acc-project-management.herokuapp.com/#'
end