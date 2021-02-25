package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewRigPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rigs/new']");
    private static SelenideElement fieldSerianNumber = $x("//input[@data-placeholder='Серийный №']");
    private static SelenideElement fieldName = $x("//input[@data-placeholder='Название']");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement fieldStatus = $x("//span[contains(text(), 'Статус')]");
    private static SelenideElement buttonCheckBox = $x("//mat-checkbox");
    private static SelenideElement fieldWeightEmptyHook = $x("//app-input-unit[.//span[contains(text(), 'Вес пустого крюка')]]//input");
    private static SelenideElement fieldCandleLength = $x("//app-input-unit[.//span[contains(text(), 'Длина свечи')]]//input");
    private static SelenideElement fieldCompanyOwner = $x("//span[contains(text(), 'Компания-владелец')]");
    private static SelenideElement fieldDescription = $x("//textarea[contains(@data-placeholder, 'Описание')]");
    private static SelenideElement matCellRigPage = $x("//mat-cell//div[contains(text(), '«Тестовая»')]");

    @Step("Нажатие на кнопку создания")
    public static void clickCreateButton () {
        $(createButton).click();
    }

    @Step("Ввод серийного номера")
    public static void sendInputSerialNumber (String value) {
        $(fieldSerianNumber).sendKeys(value);
    }

    @Step("Ввод Названия")
    public static void sendInputName (String value) {
        $(fieldName).sendKeys(value);
    }

    @Step("Выбор Типа")
    public static void selectType (String value) {
        $(fieldType).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Выбор Статуса")
    public static void selectStatus (String value) {
        $(fieldStatus).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Нажатие чекбокса - Верхний привод")
    public static void clickOnCheckbox () {
        $(buttonCheckBox).click();
    }

    @Step("Ввод веса пустого крюка")
    public static void sendInputWeightEmptyHook (String value) {
        $(fieldWeightEmptyHook).sendKeys(value);
    }

    @Step("Ввод длинны свечи")
    public static void sendInputCandleLength (String value) {
        $(fieldCandleLength).sendKeys(value);
    }

    @Step("Выбор компани владельца")
    public static void selectCompanyOwner (String value) {
        $(fieldCompanyOwner).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод Описания")
    public static void sendDataInputDescription (String name) {
        $(fieldDescription).sendKeys(name);
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultRigPage(String value) {
        $(matCellRigPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickRigPage() {
        $(matCellRigPage).click();
    }
}