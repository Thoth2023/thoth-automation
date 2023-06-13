@UC2
Feature: Create a Project, Edit and Delete

@AUT02
  Scenario: Create Project
    Given the browser is open
    When the user clicks on "NavBar.navSingIn"
    And the user adds his credentials
    And the user clicks on "SignIn.btnSignIn"
    And the user clicks on "Project.btnNewProject"
    And the user types "<Title>" on "NewProject.inpTitle"
    And the user types "<Description>" on "NewProject.inpDescription"
    And the user types "<Objectives>" on "NewProject.inpObjectives"
    And the user clicks on "NewProject.btnCreate"
    And the value matches "<Title>" on "Project.txtTitle"
    Then the user closes the browser
    
    Examples: 
          | Title                     | Description               | Objectives                     |
          | Novo Projeto Automatizado | Automação de novo Projeto | Demonstrar automação de testes |
          
@AUT03
	Scenario: Edit Project
		Given the browser is open
		When the user clicks on "NavBar.navSingIn"
    And the user adds his credentials
    And the user clicks on "SignIn.btnSignIn"
		When the user clicks on "Project.btnEdit"
		And the user types "<Title>" on "EditProject.inpTitle"
    And the user types "<Description>" on "EditProject.inpDescription"
    And the user types "<Objectives>" on "EditProject.inpObjectives"
    And the user clicks on "EditProject.btnCreate"
    Then the user closes the browser
    
    Examples:
    			| Title                     			| Description               			| Objectives                     			 |
          | Novo Projeto Automatizado Teste | Automação de novo Projeto Teste | Demonstrar automação de testes Teste |
    
@AUT04
	Scenario: Delete Project
		Given the browser is open
		When the user clicks on "NavBar.navSingIn"
    And the user adds his credentials
    And the user clicks on "SignIn.btnSignIn"
		When the user clicks on "Project.btnDelete"
		Then the user closes the browser
		
		
		
		