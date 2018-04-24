Feature: Make sure functionality for member listing works
    Be able to view a list of members for a project

Background: A project has many users

Scenario: On the member listing page, make a member an admin
    Given the user is on the member listing page
    When a user in the list is not an admin, click button to make them an admin
    Then a user in list becomes admin

Scenario: On the member listing page, make an admin a non-admin
    Given the user is on the member listing page
    When a user in the list is an admin, click button to make them a non-admin
    Then a user in list becomes a non-admin