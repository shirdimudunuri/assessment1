Feature: Login feature

  Scenario: As a valid user I can log into my app
    Given a screen with a view with some text
    When the user asks to enter "Username"
    And text "user1" is entered using the keyboard
    When the user asks to enter "Password"
    And text "password" is entered using the keyboard
    When I press "Login"
    Then I see "Welcome to coolest app ever"
