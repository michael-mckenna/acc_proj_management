Feature: Make sure functionality for listing project works
    If project is added, then project should show in listed projects
    Make sure project shows description when clicked on

Background: User is signed in

Scenario: Project should show in listed projects
    Given the user is on project list page
    When a project is created
    Then project should show in listed projects
