@UC3
Feature: Project Creation
   @AUT06
	 Scenario Outline: Fill in Overall information
		Given the browser is open
    When the user clicks on "NavBar.navSingIn"
    And the user adds his credentials
    And the user clicks on "SignIn.btnSignIn"
    
    And the user clicks on "Project.btnView"
    And the user clicks on "Overview.btnPlanning"
    And the user types "<Domain>" on "Planning.inpDomain"
    And the user clicks on "Planning.btnAddDomain"
    And the user select "<Language>" on "Planning.selectLanguage"
    And the user clicks on "Planning.btnAddLanguage"
    And the user select "<StudyType>" on "Planning.selectStudyTypes"
    And the user clicks on "Planning.btnAddStudyType"
    And the user types "<Keyword>" on "Planning.inpKeywords"
    And the user clicks on "Planning.btnAddKeywords"
 		And the user types "<StartDate>" on "Planning.inpStartDate"
 		And the user types "<EndDate>" on "Planning.inpEndDate" 
 		And the user clicks on "Planning.btnConfirmDates"
 		And the user clicks on "Planning.btnSuccessOk"
 		And the value matches "<Domain>" on "Planning.fieldDomain1"
 		And the value matches "<Language>" on "Planning.fieldLanguage1"
 		And the value matches "<StudyType>" on "Planning.fieldStudyType1"
 		And the value matches "<Keyword>" on "Planning.fieldKeyword1"
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
    And the user clicks on "Project.btnView"
    And the user clicks on "Overview.btnPlanning"
    And the user clicks on "Planning.btnEditDomain1"
    And the user types "<Domain>" on "Planning.inpEditDomain"
    And the user clicks on "Planning.btnEditDomainUpdate"
    And the user clicks on "Planning.btnEditKewords1"
    And the user types "<Keyword>" on "Planning.inpEditKeyword"
    And the user clicks on "Planning.btnEditKeywordUpdate"
    And the user types "<StartDate>" on "Planning.inpStartDate"
 		And the user types "<EndDate>" on "Planning.inpEndDate" 
 		And the user clicks on "Planning.btnAddDate"
    And the value matches "<Domain>" on "Planning.fieldDomain1"
 		And the value matches "<Keyword>" on "Planning.fieldKeyword1"
 		And the value matches "<StartDateValue>" on "Planning.inpStartDate"
 		And the value matches "<EndDateValue>" on "Planning.inpEndDate"
 		Then the user closes the browser
 		
 		Examples:
 			| Domain		 	 		| Keyword 		| StartDate 	| EndDate 		| StartDateValue 	| EndDateValue 		|
 			| Dominio Editado |	Key Editada	| 08/05/2023	|	10/05/2023	| 2023-05-08			| 2023-05-10			|
 	