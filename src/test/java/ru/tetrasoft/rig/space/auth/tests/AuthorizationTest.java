package ru.tetrasoft.rig.space.auth.tests;

import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import ru.tetrasoft.rig.space.utilities.BaseTest;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.auth.pages.AuthorizationPage.*;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.clickOnButtonExit;
import static ru.tetrasoft.rig.space.common.LoginModulePage.checkModuleTitle;
import static ru.tetrasoft.rig.space.common.UrlPage.*;

/**
 *   autor a.stupin
 */

@Epic("Модуль Authentication")
public class AuthorizationTest extends BaseTest {

    @Feature("Вход пользователя")
    @Tag("other")
    @Test
    @Description("Успешный вход пользователя")
    public void successLogin () {
        openAuthModule();
        sendDataInputLogin("admin");
        sendDataInputPassword("1");
        clickOnButtonSubmit();
        checkSuccessLogin();
    }

    @Feature("Обработка если пользователь не смог зайти")
    @Tag("other")
    @Test
    @Description("НЕ успешный вход пользователя")
    public void unSuccessLogin () {
        openAuthModule();
        sendDataInputLogin("bruh");
        sendDataInputPassword("bruh");
        clickOnButtonSubmit();
        checkUserLoginError();
    }

    @Feature("Сброс пароля пользователем")
    @Tag("other")
    @Test
    @Description("Нажатие на кнопку Забыли пароль с успешным его сбросом")
    public void successResettingPassword () {
        openAuthModule();
        clickOnButtonForgotPassword();
        sendDataInputNameOrEmail("a.stupin@tetra-soft.ru");
        clickOnButtonSend();
        checkUserResetEmail();
    }

    @Feature("Пользователь забыл пароль")
    @Tag("other")
    @Test
    @Description("Нажатие на кнопку Забыли пароль и ввели имя пользователя или пароль которого нет в БД")
    public void unSuccessfulResettingPassword () {
        openAuthModule();
        clickOnButtonForgotPassword();
        sendDataInputNameOrEmail("example@test.ru");
        clickOnButtonSend();
        checkUserError();
    }

    @Feature("Выполнение входа с выходом")
    @Tag("other")
    @Test
    @Description("Выполнение входа в учетную запись пользователя с последующим выходом")
    public void loginWithNextExitUser () {
        openAuthModule();
        sendDataInputLogin("admin");
        sendDataInputPassword("1");
        clickOnButtonSubmit();
        checkSuccessLogin();
        clickOnButtonExit();
        checkModuleTitle("Rigspace Login");
    }
}