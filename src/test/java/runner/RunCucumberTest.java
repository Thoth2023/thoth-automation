package runner;

import environment.Browser;
import environment.Property;
import environment.Repository;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty"},
        features = "src/test/resources/features/",
        glue = "steps",
        tags = "@UC2"
)
public class RunCucumberTest {
    @BeforeClass
    public static void beforeClass() {
        Property.loadProperties();
        Repository.loadRepository();
    }

    @AfterClass
    public static void tearDown() {
        try {
            Runtime.getRuntime().exec(Browser.getTaskKill());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

