package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewUserPage {

    private static SelenideElement userLoginField = $x("//input[@data-placeholder='Имя пользователя']");
    private static SelenideElement toggleButton = $x("//div[@class='mat-slide-toggle-bar']");
    private static SelenideElement userPasswordField = $x("//input[@data-placeholder='Пароль']");
    private static SelenideElement userLastNameField = $x("//input[@data-placeholder='Фамилия']");
    private static SelenideElement userNameField = $x("//input[@data-placeholder='Имя']");
    private static SelenideElement userFamilyNameField = $x("//input[@data-placeholder='Отчество']");
    private static SelenideElement userEmailField = $x("//input[@data-placeholder='Электронная почта']");
    private static SelenideElement userPhoneNumber = $x("//input[@data-placeholder='Телефон']");
    private static SelenideElement userCompanyField = $x("//input[@data-placeholder='Организация']");
    private static SelenideElement userDepartmentField = $x("//input[@data-placeholder='Отдел']");
    private static SelenideElement userPositionField = $x("//input[@data-placeholder='Должность']");
    private static SelenideElement userDescriptionField = $x("//textarea[@data-placeholder='Описание']");
    private static SelenideElement matCellUserPage = $x("//mat-row//mat-cell//div[contains(text(), 'Имя')]");
    private static SelenideElement blockButton = $x("//mat-row[2]//mat-cell[7]//button");
    private static SelenideElement checkSaveResultBlockPopup = $x("//span[contains (text(), 'Пользователь Тест1 Имя заблокирован')]");

    @Step("Ввод логина пользователя")
    public static void sendDataInputLoginUser (String userLogin) {
        $(userLoginField).sendKeys(userLogin);
    }

    @Step("Переключение тоггла для ввода пароля")
    public static void clickOnToggleButton () {
        $(toggleButton).click();
    }

    @Step("Ввод пароля пользователя")
    public static void sendDataInputPasswordUser (String password) {
        $(userPasswordField).sendKeys(password);
    }

    @Step("Ввод фамилии пользователя")
    public static void sendDataInputLastNameUser (String userLastName) {
        $(userLastNameField).sendKeys(userLastName);
    }

    @Step("Ввод имени пользователя")
    public static void sendDataInputNameUser (String userName) {
        $(userNameField).sendKeys(userName);
    }

    @Step("Ввод отчества пользователя")
    public static void sendDataInputFamilyNameUser (String userFamilyName) {
        $(userFamilyNameField).sendKeys(userFamilyName);
    }

    @Step("Ввод Email пользователя")
    public static void sendDataInputEmailUser (String userEmail) {
        $(userEmailField).sendKeys(userEmail);
    }

    @Step("Ввод телефона пользователя")
    public static void sendDataInputPhoneUser (String userPhone) {
        $(userPhoneNumber).sendKeys(userPhone);
    }

    @Step("Ввод организации пользователя")
    public static void sendDataInputCompanyUser (String userCompany) {
        $(userCompanyField).sendKeys(userCompany);
    }

    @Step("Ввод отдела пользователя")
    public static void sendDataInputDepartmentUser (String userDepartment) {
        $(userDepartmentField).sendKeys(userDepartment);
    }

    @Step("Ввод должности пользователя")
    public static void sendDataInputPositionUser (String userPosition) {
        $(userPositionField).sendKeys(userPosition);
    }

    @Step("Ввод описания пользователя")
    public static void sendDataInputDescriptionUser (String userDescription) {
        $(userDescriptionField).sendKeys(userDescription);
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickUserPage () {
        $(matCellUserPage).click();
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultUserPage(String value) {
        $(matCellUserPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на кнопку блокировки пользователя")
    public static void clickOnBlockUserButton () {
        $x("//mat-row[2]//mat-cell[7]").hover();
        $(blockButton).click();
        $x("//*[contains(text(), 'Заблокировать')]/..").click();
    }

    @Step("Проверка что пользователь заблокирован")
    public static void checkBlockUserPopup () {
        $(checkSaveResultBlockPopup).shouldBe(Condition.visible);
    }
}