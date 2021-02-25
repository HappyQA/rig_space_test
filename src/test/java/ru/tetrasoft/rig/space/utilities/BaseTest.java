package ru.tetrasoft.rig.space.utilities;

import com.codeborne.selenide.WebDriverRunner;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;

import static com.codeborne.selenide.Configuration.*;
import static com.codeborne.selenide.Selenide.clearBrowserCookies;

import java.util.Objects;

/**
 *   autor a.stupin
 */

public class BaseTest {

    private final boolean LOCALE = false;

    @BeforeEach
    public void setUp () {
        if (LOCALE) {
            setUpLocaleTests();
        } else {
            setUpRemoteTests();
        }
    }

    @AfterEach
    public void shutDown () {
        clearBrowserCookies();
        if (Objects.nonNull(WebDriverRunner.getWebDriver())) {
            WebDriverRunner.getWebDriver().quit();
        }
    }
    /**
     Запускаем тесты через Selenoid
     */
    public void setUpRemoteTests () {
        String browserType = System.getProperty("browser");
        BrowserFactory.getDriver(browserType);
    }
    /**
     Запускаем тесты локально
     */
    public void setUpLocaleTests () {
        browser = "chrome";
        startMaximized = false;
        timeout = 15000;
        holdBrowserOpen = true;
    }
}