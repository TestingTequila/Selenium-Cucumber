package TestRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/main/java/featureFile", glue = "StepDefinition", dryRun = false, plugin = {"pretty", "html:target/Selenium.html", "json:target/Selenium.json", "junit:target/Selenium.xml"}, monochrome = true, tags = "@smoke")
public class Runner
{

}
