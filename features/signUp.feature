Feature: Sign up
    User should not be signed up until button has been pressed
    User should not be signed up until name, password, password confirmation, and email are filled in

Background: User is on signup page

Scenario Outline: Sign up user
    And I have entered valid <component> for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then I should be signed up

    Examples:
    | component |
    | first name |
    | last name |
    | email |
    | password |

Scenario Outline: Show error for blank email
    And I have entered valid <component> for sign up
    And I have not entered email for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the email should pop up for sign up

    Examples:
        | component  | 
        | first name |
        | last name  |
        | password   |

Scenario Outline: Show error for blank first name
    And I have entered valid <component> for sign up
    And I have not entered first name for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the first name should pop up for sign up

    Examples:
    | component |
    | last name |
    | email |
    | password |

Scenario Outline: Show error for blank last name
    And I have entered valid <component> for sign up
    And I have not entered last name for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the first name should pop up for sign up

    Examples:
        | component |
        | first name |
        | email     |
        | password  |

Scenario Outline: Show error for blank password
    And I have entered valid <component> for sign up
    And I have not entered password for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the first name should pop up for sign up

    Examples:
        | component |
        | first name |
        | last name |
        | email     |

Scenario Outline: Show error for blank password confirmation
    And I have entered valid <component> for sign up
    And I have not entered password confirmation for sign up
    When I press the sign up button
    Then an error about the password confirmation should pop up for sign up

    Examples:
        | component |
        | first name |
        | last name |
        | email     |
        | password |

# Do we need these since we're using the TAMU login?
Scenario Outline: Show error for invalid email
    And I have entered valid <component> for sign up
    And I have entered invalid email for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the invalid email should pop up for sign up

    Examples:
        | component  | 
        | first name |
        | last name  |
        | password   |

Scenario Outline: Show error for invalid password
    And I have entered valid <component> for sign up
    And I have entered invalid password for sign up
    And I have confirmed valid password for sign up
    When I press the sign up button
    Then an error about the invalid password should pop up for sign up

    Examples:
        | component  | 
        | first name |
        | last name  |