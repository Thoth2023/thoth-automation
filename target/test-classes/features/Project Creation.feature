@UC2
Feature: Project Creation

  @AUT02
  Scenario Outline: Project Creation
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnCreateNewProject"
    And the user types "<Title>" on "HomeScreen.txtTitle"
    And the user types "<Description>" on "HomeScreen.txtDescription"
    And the user types "<Objectives>" on "HomeScreen.txtObjectives"
    And the user clicks on "HomeScreen.btnCreateProject"
    And the user clicks on "HomeScreen.btnHome"
    And the value matches "<Title>" on "HomeScreen.fieldTile"
    Then the user closes the browser
    

    Examples: 
      | Title                     | Description               | Objectives                     |
      |Novo Projeto Automatizado | Automação de novo Projeto | Demonstrar automação de testes |
      
  @AUT04
  Scenario Outline: Project Edit
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnEdit"
    And the user types "<Title>" on "ProjectEditPage.txtTitle"
    And the user types "<Description>" on "ProjectEditPage.txtDescription"
    And the user types "<Objectives>" on "ProjectEditPage.txtObjectives"
    And the user clicks on "ProjectEditPage.btnEdited"
    And the user clicks on "ProjectEditPage.btnOk"
    And the user clicks on "HomeScreen.btnHome"
    And the value matches "<Title>" on "HomeScreen.fieldTile"
    Then the user closes the browser
    
    Examples: 
      | Title                       | Description                | Objectives                      |
      | Novo Projeto Automatizado E | Automação de novo Projeto E| Demonstrar automação de testes E|
      
  @AUT03
  Scenario Outline: Project Delete
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnDelete"
    And the user clicks on "HomeScreen.btnConfirm"
    And the user clicks on "HomeScreen.btnOk"
    Then the user closes the browser
    
    
   @AUT06
	 Scenario Outline: Fill in Overall information
		Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user create his project
    And the user clicks on "HomeScreen.btnPlanning"
    And the user types "<Domain>" on "ProjectPlanningOverall.txtDomains"
    And the user clicks on "ProjectPlanningOverall.btnAddDomains"
    And the user select "<Language>" on "ProjectPlanningOverall.selectLanguage"
    And the user clicks on "ProjectPlanningOverall.btnAddLanguage"
    And the user select "<StudyType>" on "ProjectPlanningOverall.selectStudy"
    And the user clicks on "ProjectPlanningOverall.btnAddStudy"
    And the user types "<Keyword>" on "ProjectPlanningOverall.txtKeyword"
    And the user clicks on "ProjectPlanningOverall.btnAddKeyword"
 		And the user types "<StartDate>" on "ProjectPlanningOverall.txtStartDate"
 		And the user types "<EndDate>" on "ProjectPlanningOverall.txtEndDate" 
 		And the user clicks on "ProjectPlanningOverall.btnConfirmDates"
 		And the user clicks on "ProjectPlanningOverall.btnSuccessOk"
 		And the value matches "<Domain>" on "ProjectPlanningOverall.fieldDomain1"
 		And the value matches "<Language>" on "ProjectPlanningOverall.fieldLanguage1"
 		And the value matches "<StudyType>" on "ProjectPlanningOverall.fieldStudyType1"
 		And the value matches "<Keyword>" on "ProjectPlanningOverall.fieldKeyword1"
 		Then the user closes the browser
 		
 		Examples:
 			| Domain		 	 | Language 	| StudyType | Keyword 	| StartDate 	| EndDate 		| StartDateValue 	| EndDateValue 		|
 			| Novo Dominio | English		|	All types	|	Nova Key	| 05/05/2023	|	06/05/2023	| 2023-05-05			| 2023-05-06			|
    
   @AUT07
	 Scenario Outline: Edit in Overall Information
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnOpenProject1"
    And the user clicks on "HomeScreen.btnPlanning"
    And the user clicks on "ProjectPlanningOverall.btnDomainEdit1"
    And the user types "<Domain>" on "ProjectPlanningOverall.txtDomainEdit"
    And the user clicks on "ProjectPlanningOverall.btnDomainEditSave"
    And the user clicks on "ProjectPlanningOverall.btnDomainEditOk"
    And the user clicks on "ProjectPlanningOverall.btnKeywordEdit1"
    And the user types "<Keyword>" on "ProjectPlanningOverall.txtKeywordEdit"
    And the user clicks on "ProjectPlanningOverall.btnKeywordEditSave"
    And the user clicks on "ProjectPlanningOverall.btnKeywordEditOk"
    And the user types "<StartDate>" on "ProjectPlanningOverall.txtStartDate"
 		And the user types "<EndDate>" on "ProjectPlanningOverall.txtEndDate" 
 		And the user clicks on "ProjectPlanningOverall.btnConfirmDates"
 		And the user clicks on "ProjectPlanningOverall.btnSuccessOk"
    And the value matches "<Domain>" on "ProjectPlanningOverall.fieldDomain1"
 		And the value matches "<Keyword>" on "ProjectPlanningOverall.fieldKeyword1"
 		Then the user closes the browser
 		
 		Examples:
 			| Domain		 	 		| Keyword 		| StartDate 	| EndDate 		| StartDateValue 	| EndDateValue 		|
 			| Dominio Editado |	Key Editada	| 08/05/2023	|	10/05/2023	| 2023-05-08			| 2023-05-10			|
 	
 	 @AUT09
	 Scenario Outline: Fill in Research Questions 
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnOpenProject1"
    And the user clicks on "HomeScreen.btnPlanning"
    And the user clicks on "ProjectPlanningResearchQuestions.btnResearchQuestions"
 		And the user types "<Id>" on "ProjectPlanningResearchQuestions.txtId"
 		And the user types "<Description>" on "ProjectPlanningResearchQuestions.txtDescription"
 		And the user clicks on "ProjectPlanningResearchQuestions.btnAdd"
 	  And the value matches "<Id>" on "ProjectPlanningResearchQuestions.fieldID1"
 		And the value matches "<Description>" on "ProjectPlanningResearchQuestions.fieldDescription1"
 		Then the user closes the browser
 		
 		Examples:
	|	Id		| Description					|
	|	ID1	| Projeto de automação	|
	
	 @AUT10 
	 Scenario Outline: Edit in Research Questions 
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnOpenProject1"
    And the user clicks on "HomeScreen.btnPlanning"
    And the user clicks on "ProjectPlanningResearchQuestions.btnResearchQuestions"
		And the user clicks on "ProjectPlanningResearchQuestions.btnEdit1"
		And the user types "<Id>" on "ProjectPlanningResearchQuestions.txtEditId"
 		And the user types "<Description>" on "ProjectPlanningResearchQuestions.txtEditDescription"
 	  And the user clicks on "ProjectPlanningResearchQuestions.btnEditSave"
 	  And the user clicks on "ProjectPlanningResearchQuestions.btnEditOk"
 	  And the value matches "<Id>" on "ProjectPlanningResearchQuestions.fieldID1"
 		And the value matches "<Description>" on "ProjectPlanningResearchQuestions.fieldDescription1"
 		Then the user closes the browser
 		
 		Examples:
	|	Id				| Description										|
	|	IDEditado	| Projeto de automação Editado	|
	
	@AUT12
	 Scenario Outline: select Database 
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnOpenProject1"
    And the user clicks on "HomeScreen.btnPlanning"
    And the user clicks on "ProjectPlanningDataBase.btnDataBase"
		And the user select "<Database>" on "ProjectPlanningDataBase.selectDataBase"
		And the user clicks on "ProjectPlanningDataBase.btnAdd"
		And the value matches "<Database>" on "ProjectPlanningDataBase.fieldDatabase1"
 		Then the user closes the browser
 		
 		Examples:
	|	Database			|
	|	IEEE Base			|
	
	
 	@AUT02
  Scenario Outline: Project Delete
    Given the browser is open
    When the user clicks on "LoginPage.btnSignIn"
    And the user adds his credentials
    And the user clicks on "LoginPage.btnLogin"
    And the user clicks on "HomeScreen.btnDelete"
    And the user clicks on "HomeScreen.btnConfirm"
    And the user clicks on "HomeScreen.btnOk"
    Then the user closes the browser