package environment;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Browser {
    private static final String CHROME_PATH = "src/test/resources/drivers/chromedriver.exe";
    private static final String FIREFOX_PATH = "src/test/resources/drivers/geckodriver.exe";
    private static final String BROWSER = Property.get("BrowserType");

    private static String TASKKILL;

    /**
     * Return the exact instance of driver requested
     * if it exists on <b>project.properties</b> file.
     * <p>
     * The list is: {@code chrome} and {@code firefox}
     *
     * @return the instance of browser required if exists or
     * an instance of {@code chrome} if it doesn't
     */
    public static WebDriver setDriver() {
        if (BROWSER.equalsIgnoreCase("chrome")) {
        	ChromeOptions options = new ChromeOptions();
        	options.addArguments("--remote-allow-origins=*");
            System.setProperty("webdriver.chrome.driver", CHROME_PATH);
            TASKKILL = "taskkill /im chromedriver.exe /f";
            return new ChromeDriver(options);
        } else if (BROWSER.equalsIgnoreCase("firefox")) {
            System.setProperty("webdriver.gecko.driver", FIREFOX_PATH);
            TASKKILL = "taskkill /im geckodriver.exe /f";
            return new FirefoxDriver();
        }
        throw new NullPointerException("\nCould not initialize a valid browser. " +
                "Please, check it out the list of browsers.");
    }

    /**
     * @return the string of taskkill command to execute
     */
    public static String getTaskKill() {
        return Browser.TASKKILL;
    }

    public static String getTaskKillChrome() {
        return "taskkill /im chrome.exe /f";
    }
}
