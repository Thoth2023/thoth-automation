@UC1
Feature: Proof of Concept Thoth
  This scenario will be the first one to prove the basic concepts using BDD with cucumber

  @AUT00 @Poc1
  Scenario Outline: Account Creation
    Given the browser is open
    When the user clicks on "NavBar.navSignUp"
    And the user types "<Name>" on "SignUp.inpName"
    And the user types "<Email>" on "SignUp.inpEmail"
    And the user types "<Password>" on "SignUp.inpPassword"
    And the user clicks on "SignUp.btnCheckAgreeTerms"
    Then the user clicks on "SignUp.btnCreateNewAccount"

    Examples: 
      | Name   | Email                  | Password   |
      | Grupo1 | gp1autothoth@gmail.com | Aguasemgas |

  @AUT01
  Scenario: Account Login
    Given the browser is open
    When the user clicks on "NavBar.navSingIn"
    And the user types "<Email>" on "SignIn.inpEmail"
    And the user types "<Password>" on "SignIn.inpPassword"
    Then the user clicks on "SignIn.btnSignIn"
    
   Examples: 
      | Email                  | Password   |
      | gp1autothoth@gmail.com | Aguasemgas |
      