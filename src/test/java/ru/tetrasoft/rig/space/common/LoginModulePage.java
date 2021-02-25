package ru.tetrasoft.rig.space.common;

import io.qameta.allure.Step;

import static ru.tetrasoft.rig.space.auth.pages.AuthorizationPage.*;
import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Selenide.$;

/**
 *   autor a.stupin
 */

public class LoginModulePage {

    @Step("Выполнение входа в УЗ пользователя")
    public static void loginIntoModule (String login, String pass) {
        sendDataInputLogin(login);
        sendDataInputPassword(pass);
        clickOnButtonSubmit();
    }

    @Step("Проверка title при открытии моудля")
    public static void checkModuleTitle (String title) {
        $("title").shouldHave(attribute("text" , title));
    }
}