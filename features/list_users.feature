Feature: Make sure functionality for listing project works
    If a user is added to a project, the member listing should show the new member
    Make sure only admins can add or remove users from a project

Background: A project has many members (users)

Scenario: Project should show in listed projects
    Given the user is on the member listing page
    When a new member has been added
    Then the new member shows in the listing
