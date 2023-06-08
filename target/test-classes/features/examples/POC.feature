@UC1
Feature: Proof of Concept Thoth
  This scenario will be the first one to prove the basic concepts using BDD with cucumber

  @AUT00 @Poc1
  Scenario Outline: Account Creation
    Given the browser is open
    When the user clicks on "LoginPage.btnSignUp"
    And the user types "<Name>" on "SignUpPage.txtNome"
    And the user types "<Email>" on "SignUpPage.txtEmail"
    And the user types "<Password>" on "SignUpPage.txtPassword"
    Then the user clicks on "SignUpPage.btnCreateNewAccount"

    Examples: 
      | Name   | Email                  | Password   |
      | Grupo1 | gp1autothoth@gmail.com | Aguasemgas |

  @AUT01
  Scenario: Account Login
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    Then the user clicks on "LoginPage.btnLogin"
