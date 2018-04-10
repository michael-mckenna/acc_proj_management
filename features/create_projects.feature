Feature: Make sure functionality for creating project works
    If name and description are filled out, then project should be created when button is clicked

Background: User is signed in

Scenario: Project should be created when all criteria are met
    Given the user is creating a project
    When the name field is filled out
    And the description field is filled out
    And the create project button has been clicked
    Then the project should be created