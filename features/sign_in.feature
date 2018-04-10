Feature: Make sure functionality for sign in page works
    If user is not signed in, sign in button should be present
    If user is signed in, sign in button should not be present
    User should be redirected when they click the sign in button
    User should be signed in when they return to home page from authentication

Scenario: Sign in button is present when user not signed in
    Given the user is on the sign in page
    When the user is not signed in
    Then the sign in button should be present

Scenario: User should be redirected when sign in button is clicked
    Given the user is on the sign in page
    When the user clicks the sign in button
    Then the user is redirected to Google's authentication

Scenario: User should go to user page after redirected back from Google's authentication
    Given the user has been redirected to Google's authentication
    When the user has successfully finished authenticating
    Then the user should return to user page