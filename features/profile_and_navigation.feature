Feature: Make sure user can see their profile and navigate throughout the app
    Be able to view user details and click on links in the navigation bar

Background: A project has many users

Scenario: User clicks home tab from profile screen
    Given The user is on the profile page
    When A user clicks the Home tab
    Then The user should still be on the same page

Scenario: User clicks projects tab from profile screen
    Given The user is on the profile page
    When A user clicks the Projects tab
    Then A list of available projects should be shown

Scenario: User clicks Admin tab from profile screen
    Given The user is on the profile page
    When An admin user clicks the Admin tab
    Then a user in list becomes a non-adminStatistics page should show

Scenario: User clicks Sign Out from profile screen
    Given The user is on the profile page
    When A user clicks sign out
    Then The user should be returned to the sign in page