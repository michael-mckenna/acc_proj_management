Feature: Sign in
    User should not be signed in until button has been pressed
    User should not be logged in until username or email and password are filled in

Background: User is on login page

Scenario Outline: Sign in user
    And I have entered valid <component> for sign in
    When I press the sign in button
    Then I should be logged in

    Examples:
    | component |
    | username |
    | password |

Scenario: Show error for blank username
    And I have entered valid password for sign in
    And I have not entered username for sign in
    When I press the sign in button
    Then an error about the username should pop up for sign in

Scenario: Show error for blank email
    And I have entered valid password for sign in
    And I have not entered email for sign in
    When I press the sign in button
    Then an error about the email should pop up for sign in

Scenario: Show error for blank password
    And I have entered valid username for sign in
    And I have not entered password for sign in
    When I press the sign in button
    Then an error about the password should pop up for sign in

Scenario: Show error for invalid username
    And I have entered valid password for sign in
    And I have not entered valid username for sign in
    When I press the sign in button
    Then an error about the valid username should pop up for sign in

Scenario: Show error for invalid email
    And I have entered valid password for sign in
    And I have not entered valid email for sign in
    When I press the sign in button
    Then an error about the valid email should pop up for sign in

Scenario: Show error for invalid password
    And I have entered valid username for sign in
    And I have not entered valid password for sign in
    When I press the sign in button
    Then an error about the valid password should pop up for sign in