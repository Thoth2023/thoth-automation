@UC
Feature: Create acount and login

  @AUT01
  Scenario: Account Login
    Given the browser is open
    When the user clicks on "NavBar.navSingIn"
    And the user adds his credentials
    And the user clicks on "SignIn.btnSignIn"
    Then the user closes the browser 
    