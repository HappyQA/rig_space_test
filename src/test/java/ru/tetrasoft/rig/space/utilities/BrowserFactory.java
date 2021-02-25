package ru.tetrasoft.rig.space.utilities;

import com.codeborne.selenide.logevents.SelenideLogger;
import io.qameta.allure.selenide.AllureSelenide;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;

import static com.codeborne.selenide.Configuration.*;
import static com.codeborne.selenide.Configuration.browserCapabilities;

public class BrowserFactory {

    public static WebDriver getDriver (String browserName) {
        browserName = browserName.toUpperCase();
        switch (BrowserName.valueOf(browserName)) {
            case CHROME:
                return setUpRemoteTestsChrome();
            case FIREFOX:
                return setUpRemoteTestsFirefox();
        }
        return null;
    }

    public static WebDriver setUpRemoteTestsChrome() {
        remote = "http://192.168.0.13:4444/wd/hub";
        browser = "chrome";
        browserSize = "1920x1080";
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setVersion("87.0");
        capabilities.setCapability("enableVNC",  true);
        capabilities.setCapability( "enableVideo", false);
        browserCapabilities = capabilities;
        SelenideLogger.addListener("AllureSelenide",
                new AllureSelenide().screenshots(true).savePageSource(false));
        return null;
    }

    public static WebDriver setUpRemoteTestsFirefox() {
        remote = "http://192.168.0.13:4444/wd/hub";
        browser = "firefox";
        browserSize = "1920x1080";
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setVersion("83.0");
        capabilities.setCapability("enableVNC",  true);
        capabilities.setCapability( "enableVideo", false);
        browserCapabilities = capabilities;
        SelenideLogger.addListener("AllureSelenide",
                new AllureSelenide().screenshots(true).savePageSource(false));
        return null;
    }
}
