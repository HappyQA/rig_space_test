package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewRigCrewPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/crews/new']");
    private static SelenideElement fieldName = $x("//input[@data-placeholder='Название']");
    private static SelenideElement fieldMaster = $x("//input[@data-placeholder='Мастер']");
    private static SelenideElement fieldStatus = $x("//span[contains(text(), 'Статус')]");
    private static SelenideElement fieldCompany = $x("//span[contains(text(), 'Компания')]");
    private static SelenideElement fieldDescription = $x("//textarea[contains(@data-placeholder, 'Описание')]");
    private static SelenideElement matCellRigCrewPage = $x("//mat-cell//div[contains(text(), 'Тестовая')]");

    @Step("Нажатие на кнопку создания")
    public static void clickCreateButton () {
        $(createButton).click();
    }

    @Step("Ввод данных Названия")
    public static void sendDataInputName (String value) {
        $(fieldName).sendKeys(value);
    }

    @Step("Ввод данных Мастера")
    public static void sendDataInputMasterName (String value) {
        $(fieldMaster).sendKeys(value);
    }

    @Step("Выбор Статуса")
    public static void selectStatus (String value) {
        $(fieldStatus).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Выбор Компании")
    public static void selectCompany (String value) {
        $(fieldCompany).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод Описания")
    public static void sendDataInputDescription (String name) {
        $(fieldDescription).sendKeys(name);
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultRigCrewPage (String value) {
        $(matCellRigCrewPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickRigCrewPage () {
        $(matCellRigCrewPage).click();
    }
}