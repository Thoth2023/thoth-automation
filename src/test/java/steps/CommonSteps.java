package steps;

import environment.Browser;
import environment.Property;
import environment.Repository;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import static org.junit.Assert.assertEquals;

import java.time.Duration;


public class CommonSteps {
    private static WebDriver driver;
    private static long millis = 300;

    @Before
    public synchronized void setUp() {
        try {	
            driver = Browser.setDriver();
        } catch (NullPointerException e) {
            System.err.println(e.getMessage());
            System.exit(0);
        }
    }


    @AfterStep
    public synchronized void afterStep() throws InterruptedException {
        Thread.sleep(millis);
    }
    
    @Given("the browser is open")
    public synchronized void browserIsOpen() {
    	driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.navigate().to(Property.get("Url"));
    }
    
    @When("the user create his project")
    public synchronized static void userCreatesProject() {
    	clickOn("HomeScreen.btnCreateNewProject");
    	putIn("Novo Projeto Automatizado", "HomeScreen.txtTitle");
    	putIn("Automação de novo Projeto", "HomeScreen.txtDescription");
    	putIn("Automação de novo Projeto", "HomeScreen.txtObjectives");
    	clickOn("HomeScreen.btnCreateProject");
    }
    
    @When("the user adds his credentials")
    public synchronized static void userAuthenticates() {
    	typeCredentials(Property.get("User"), "LoginPage.txtEmail");
    	typeCredentials(Property.get("Password"), "LoginPage.txtPassword");
    }
    
    @And("^the user puts \"(.*)?\" on \"(.*)?\"$")
    public synchronized static void typeCredentials(String text, String element) {
        driver.findElement(By.xpath(Repository.getXPath(element))).clear();
        driver.findElement(By.xpath(Repository.getXPath(element))).sendKeys(text);
    }
    
    
    @And("the user clicks on {string}")
    public synchronized static void clickOn(String element) {
        try {
            driver.findElement(By.xpath(Repository.getXPath(element))).click();
        } catch (Exception e) {
            System.err.println("Impossible to find the element. Please, check it out. Error: " + e.getMessage());
            System.exit(0);
        }
    }
    
    @And("the user select \"(.*)?\" on \"(.*)?\"$")
    public synchronized static void select(String text, String element) {
    	(new Select(driver.findElement(By.xpath(Repository.getXPath(element))))).selectByVisibleText(text);
    }
    
    
    /* Getter of the 'millis' */
    public static long getMillis() {
        return CommonSteps.millis;
    }
    
    public synchronized static void setMillis(long millis) {
        if (millis >= 0 && millis < Long.MAX_VALUE) {
            CommonSteps.millis = millis;
        }
    }
    
    /*
     * Closes the instance of browser.
     */
    @And("the user closes the browser")
    public synchronized static void closes() {
        driver.quit();
    }
    
    @And("^the user types \"(.*)?\" on \"(.*)?\"$")
    public synchronized static void putIn(String text, String element) {
        driver.findElement(By.xpath(Repository.getXPath(element))).clear();
        try {
        	Thread.sleep(100);
        }catch (Exception e) {
			
		}
        driver.findElement(By.xpath(Repository.getXPath(element))).sendKeys(text);
    }
    
    @And("the value matches {string} on {string}")
    public synchronized void projectMatches(String expected, String element) {
        String actual = getText(element);
        assertEquals(expected, actual);
    }
    
    @And("the value is {string} on {string}")
    public synchronized void projectIs(String expected, String element) {
        String actual = getValue(element);
        assertEquals(expected, actual);
    }
    
    /**
     * Method responsible to get the text of an element
     * already registered on repository file.
     *
     * @param element the element already registered in your
     *                repository.
     */
    public static String getText(String element) {
        return CommonSteps.getDriver().findElement(By.xpath(Repository.getXPath(element))).getText();
    }
    
    /**
     * Method responsible to get the value of an element
     * already registered on repository file.
     *
     * @param element the element already registered in your
     *                repository.
     */
    public static String getValue(String element) {
        return CommonSteps.getDriver().findElement(By.xpath(Repository.getXPath(element))).getAttribute("value");
    }
    
    /* Getter of the 'driver' */
    public static WebDriver getDriver() {
        return driver;
    }
}
