@UC2
Feature: Create acount and login

  @AUT00
  Scenario Outline: Account Creation
    Given the browser is open
    When the user clicks on "Home.navSignUp"
    And the user types "<Name>" on "SignUp.txtNome"
    And the user types "<Email>" on "SignUp.txtEmail"
    And the user types "<Password>" on "SignUp.txtPassword"
    And the user select true on "SignUp.btnAccept"
    Then the user clicks on "SignUp.btnCreateNewAccount"

    Examples: 
      | Name   | Email                  | Password   |
      | Grupo1 | gp1autothoth@gmail.com | Aguasemgas |