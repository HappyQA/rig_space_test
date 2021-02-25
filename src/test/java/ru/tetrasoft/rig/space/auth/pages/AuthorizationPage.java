package ru.tetrasoft.rig.space.auth.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class AuthorizationPage {

    private static SelenideElement fieldUsername = $x("//input[@name='username']");
    private static SelenideElement fieldPassword = $x("//input[@name='password']");
    private static SelenideElement buttonLogin = $x("//span[contains(text(), 'Войти')]");
    private static SelenideElement buttonResetPassword = $x("//a[@href='/auth/user/resetPassword']");
    private static SelenideElement fieldUsernameOrEmail = $x("//input[@name='loginOrEmail']");
    private static SelenideElement buttonSend = $x("//span[contains(text(), 'Отправить')]");
    private static SelenideElement popupWithWrongUsernameOrPassword = $x("//*");
    private static SelenideElement popupWithUnfinedUser = $x("//*");
    private static SelenideElement popupWithResetPassword = $x("//*");
    private static SelenideElement popupWithSuccessLogin = $x("//*");

    @Step("Ввод данных в поле Логин")
    public static void sendDataInputLogin (String login) {
        $(fieldUsername).sendKeys(login);
    }

    @Step("Ввод данных в поле Пароль")
    public static void sendDataInputPassword (String pass) {
        $(fieldPassword).sendKeys(pass);
    }

    @Step("Нажатие на кнопку Войти")
    public static void clickOnButtonSubmit () {
        $(buttonLogin).click();
    }

    @Step("Нажатие на кнопку Забыли пароль?")
    public static void clickOnButtonForgotPassword () {
        $(buttonResetPassword).click();
    }

    @Step("Ввод в инпут Имя пользователя или Email")
    public static void sendDataInputNameOrEmail (String email) {
        $(fieldUsernameOrEmail).sendKeys(email);
    }

    @Step("Нажатие на кнопку Отправить")
    public static void clickOnButtonSend () {
        $(buttonSend).click();
    }

    @Step("Отображение ошибки о том что логин или пароль не верные")
    public static void checkUserLoginError () {
        $(popupWithWrongUsernameOrPassword).shouldHave(Condition.text("Неверный логин или пароль"));
    }

    @Step("Отображение ошибки о том что пользователь не найден")
    public static void checkUserError () {
        $(popupWithUnfinedUser).shouldHave(Condition.text("Пользователь не найден."));
    }

    @Step("Отображение сообщения о том что инструкции по сбросу пароля отправлены")
    public static void checkUserResetEmail () {
        $(popupWithResetPassword).shouldHave(Condition.text("Мы отправили на адрес пользователя письмо с дальнейшими инструкциями."));
    }

    @Step("Отображение о том что вход выполнен успешно")
    public static void checkSuccessLogin () {
        $(popupWithSuccessLogin).shouldHave(Condition.text("Добро пожаловать"));
    }
}